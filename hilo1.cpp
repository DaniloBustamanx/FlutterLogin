#include <iostream>
#include <thread>

void PrintHOLA() {
   std::cout<<"Hola mundo"<< std::endl;
   
}
void PrintADIOS() {
   std::cout<<"Adios mundo"<< std::endl;
   
}
int main () {
    std::thread H1 (PrintHOLA);
    std::thread H2 (PrintHOLA);
    std::thread H3 (PrintHOLA);
    std::thread H4 (PrintHOLA);
    std::thread H5 (PrintHOLA);
    std::thread H6 (PrintADIOS);
    std::thread H7 (PrintADIOS);
    std::thread H8 (PrintADIOS);
    std::thread H9 (PrintADIOS);
    std::thread H10 (PrintADIOS);
    H1.join(); 
    H2.join(); 
    H3.join(); 
    H4.join(); 
    H5.join(); 
    H6.join();
	H7.join();
	H8.join();
	H9.join(); 
	H10.join();    
    return 0;
}


