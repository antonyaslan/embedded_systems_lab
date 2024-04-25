#include <stdio.h>
#include <pthread.h>
#include <unistd.h>

int x = 0;
pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;


void* increment_thread(void* arg) {
    while (1) {
        usleep(20000);  // Sleep for 20ms
        pthread_mutex_lock(&mutex);
        x++;
        pthread_mutex_unlock(&mutex);
    }
    return NULL;
}

void* decrement_thread(void* arg) {
    while (1) {
        usleep(200000);  // Sleep for 200ms
        pthread_mutex_lock(&mutex);
        x -= 10;
        pthread_mutex_unlock(&mutex);
    }
    return NULL;
}

void* print_thread(void* arg) {
    while (1) {
        usleep(400000);  // Sleep for 400ms
        pthread_mutex_lock(&mutex);
        printf("x = %d\n", x);
        pthread_mutex_unlock(&mutex);
    }
    return NULL;
}

int main() {
    pthread_t increment_tid, decrement_tid, print_tid;
    
    pthread_create(&increment_tid, NULL, increment_thread, NULL);
    pthread_create(&decrement_tid, NULL, decrement_thread, NULL);
    pthread_create(&print_tid, NULL, print_thread, NULL);
    
    pthread_join(increment_tid, NULL);
    pthread_join(decrement_tid, NULL);
    pthread_join(print_tid, NULL);
    
    return 0;
}