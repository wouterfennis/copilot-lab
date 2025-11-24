def add(a, b):
    return a+b

# TODO: Add docstring, type hints, and proper formatting

def calc(x,y,op):
    if op=='add':
        return x+y
    elif op=='sub':
        return x-y
    elif op=='mul':
        return x*y
    elif op=='div':
        return x/y
    else:
        return None

# TODO: Add docstring, type hints, and proper formatting

class DataProcessor:
    def __init__(self,data):
        self.data=data
    
    def process(self):
        result=[]
        for item in self.data:
            if item>0:
                result.append(item*2)
        return result

# TODO: Add docstring, type hints, and proper formatting

def validate_email(email):
    if '@' in email and '.' in email:
        return True
    return False

# TODO: Add docstring, type hints, and proper formatting
