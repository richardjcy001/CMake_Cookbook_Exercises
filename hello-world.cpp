#include "Message.hpp"
#include <iostream>
#include <cstdlib>

int main()
{
    Message say_hello("Hello CMake world");
    std::cout << say_hello << std::endl;

    Message say_goodbye("Goodbye CMake world");
    std::cout << say_goodbye << std::endl;
    return EXIT_SUCCESS;
}