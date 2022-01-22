class Memory:

    def __init__(self):
        self.memory = [0] * 32768
        self.free_list = 0
        self.memory[self.free_list + 0] = 32767
        self.memory[self.free_list + 1] = -1

    def peek(self, address):
        return self.memory[address];

    def poke(self, address, value):
        self.memory[address] = value

    def alloc(self, size):

        curr_block = self.free_list
        prev_block = -1

        while True:

            if self.memory[curr_block + 0] > size:

                ret = curr_block + 1
                self.memory[curr_block + size + 1] = self.memory[curr_block + 0] - size - 1
                self.memory[curr_block + size + 2] = self.memory[curr_block + 1]
                if prev_block != -1:
                    self.memory[prev_block + 1] = curr_block + size + 1
                else:
                    self.free_list = curr_block + size + 1

                self.memory[ret - 1] = size + 1
                return ret

            if curr_block[1] == -1:
                raise Exception()

            prev_block = curr_block
            curr_block = self.memory[curr_block + 1]

    # /** De-allocates the given object (cast as an array) by making
    #  *  it available for future allocations. */
    # function void deAlloc(Array o) {
    #     let o[0] = free_list;
    #     let free_list = o - 1;
    #     return;
    # }


mem = Memory()
mem.alloc(10)
mem.alloc(5)
