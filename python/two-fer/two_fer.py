def two_fer(name=None):
    # catch if name is not a string
    if not(isinstance(name, str)) and name != None:
        print(name)
        raise Exception("You did not provide a string as 'name' ERROR!")
    name = "you" if (name == "" or name == None) else name
    tf = 'One for ' + name + ', one for me.'
    try:
         # catch a number in string clothes eg "123"
        if isinstance(int(name), int):
            tf = Exception("Number provided in string as 'name' ERROR!")
    finally:
        return tf
