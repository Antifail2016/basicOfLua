x = int(input("Row : "))
for i in range(x):
    i += 1
    print(" " * (x - i)+ "*" * (i))

for z in range(x):
    print(" " * (z)+"*" * (x - z))

