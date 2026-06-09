def list_square(sequence):
    print( [ x**2 for x in range(sequence) ] )

def list_string():
    status_list = ["ready", "working", "paused", "done"]
    print( [ status for status in status_list if status != "ready"] )


if __name__ == '__main__':
    list_string()
    list_square(5)
