//! Attention, just demo code
int main(){
    int arr[] = {1,2,3,4,5,6,7,8,9,10};
    int n = 10, key_to_insert;
    int i, j, tmp;
    for (i = 1; i < n; i++) {
        tmp = arr[i];
        for (j = i - 1; j >= 0 && arr[j] > key_to_insert; j--) {
            arr[j + 1] = arr[j];
        }
        arr[j + 1] = key_to_insert;
    }
}