def greet(name):
    if not name:
        raise ValueError("Name cannot be empty")
    return f"Hello, {name}!"

def add(a,b):
    return a+b

if __name__ == "__main__":
    print(greet("DevOps"))