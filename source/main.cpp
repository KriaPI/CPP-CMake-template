#include <iostream>

#include "placeHolder.hpp"

namespace badPractices {
    auto leaky() {
        auto useless {new int{4}};
    }

    auto useAfterFree() {
        auto freeMemory {new int{4}};
        delete freeMemory;

        if (*freeMemory == 4) {
            std::cout << "Infinite memory???" << '\n';
        }
    }
}

int main() {
    //std::cout << "Hi! It seems to work. BTW, 2 + 2 = " << uselessFunction(2, 2)
     //         << '\n';
    std::cout << "Hell" << '\n';

    badPractices::leaky();
    badPractices::useAfterFree();
    std::exit(EXIT_SUCCESS);
}