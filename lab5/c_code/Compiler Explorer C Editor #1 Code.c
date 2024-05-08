// Type your code here, or load an example.
#define EXP_BITS 32

typedef unsigned int UI;

UI sum_array(UI arr[], UI size) {
    UI sum = 0;
    for (UI i = 0; i < size; i++) {
        sum += arr[i];
    }
    return sum;
}