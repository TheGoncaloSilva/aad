int arr[] = {1,2,3,4,5,6,7,8,9,10};
int n = 10;
int i, j, tmp;
for (i = 1; i < n; i++) {
    tmp = arr[i];
    for (j = i - 1; j >= 0 && arr[j] > key; j--) {
        arr[j + 1] = arr[j];
    }
    arr[j + 1] = key;
}
