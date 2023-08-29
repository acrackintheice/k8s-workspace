import sys
import time
import random

list = []

index = 0
while True:
    list.append([f"{index}"] * random.randint(1250,125000) )
    mem_size = index * sys.getsizeof(list[index])
    print(f"Running {index} - current list size: {mem_size}")
    print(list[index][0])
    time.sleep(1)
    index = index + 1