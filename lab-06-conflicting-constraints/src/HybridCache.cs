using System;
using System.Collections.Generic;

namespace Lab06.Conflicts
{
    // NOTE: This intentionally violates a 'purely functional' directive.
    // It uses a static mutable dictionary as a cache.
    public static class HybridCache
    {
        private static readonly Dictionary<string, (DateTime ts, string value)> _cache = new();
        private static readonly TimeSpan _ttl = TimeSpan.FromMinutes(5);

        // Functional-ish helper: no side effects except cache population.
        public static string GetOrAdd(string key, Func<string> factory)
        {
            if (_cache.TryGetValue(key, out var entry))
            {
                if (DateTime.UtcNow - entry.ts < _ttl)
                {
                    return entry.value; // Returns cached value (mutable state usage).
                }
            }
            var created = factory();
            _cache[key] = (DateTime.UtcNow, created);
            return created;
        }

        // Non-functional: explicit mutation & state clearing.
        public static void Invalidate(string key)
        {
            _cache.Remove(key);
        }

        public static void ClearAll()
        {
            _cache.Clear();
        }
    }
}
