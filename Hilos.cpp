#include <iostream>
#include <thread>
#include <mutex>

using namespace std;

const int NUM_FILOSOFOS = 5;

mutex tenedores[NUM_FILOSOFOS];

void filosofo(int id) {
    int izquierdo = id;
    int derecho = (id + 1) % NUM_FILOSOFOS;

    while (true) {
        // El fil�sofo piensa
        cout << "Fil�sofo " << id << " est� pensando" << endl;

        // El fil�sofo intenta tomar los tenedores
        tenedores[izquierdo].lock();
        tenedores[derecho].lock();

        // El fil�sofo come
        cout << "Fil�sofo " << id << " est� comiendo" << endl;

        // El fil�sofo suelta los tenedores
        tenedores[derecho].unlock();
        tenedores[izquierdo].unlock();
    }
}

int main() {
    thread filosofos[NUM_FILOSOFOS];

    // Inicializar los tenedores
    for (int i = 0; i < NUM_FILOSOFOS; i++) {
        tenedores[i].lock();
    }

    // Crear los hilos de los fil�sofos
    for (int i = 0; i < NUM_FILOSOFOS; i++) {
        filosofos[i] = thread(filosofo, i);
    }

    // Esperar a que los hilos terminen
    for (int i = 0; i < NUM_FILOSOFOS; i++) {
        filosofos[i].join();
    }

    return 0;
}

