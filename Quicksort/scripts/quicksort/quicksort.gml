// Takes a list or array and sorts it.
// The compare function should take two arguments (elements in the list or array)
// and return 1 if the first element is lesser, -1 if the first element is greater,
// and 0 if the two elements are equal. A simple comparison function to sort a
// list of values in order would be:
// function cmp(a, b) {
//      return a < b;
// }
function quicksort(list_or_array, cmp) {
    static qs_internal_list = function(list, low, high, cmp, qs_self) {
        static qs_partition = function(list, low, high, cmp) {
            var pivot = list[| high];
            var i = low;
            for (var j = low; j < high; j++) {
                if (cmp(list[| j], pivot)) {
                    var t = list[| i];
                    list[| i++] = list[| j];
                    list[| j] = t;
                }
            }
            var t = list[| i];
            list[| i] = list[| high];
            list[| high] = t;
            return i;
        }
    
        if (low < high) {
            var p = qs_partition(list, low, high, cmp);
            qs_self(list, low, p - 1, cmp, qs_self);
            qs_self(list, p + 1, high, cmp, qs_self);
        }
    };
    static qs_internal_array = function(arr, low, high, cmp, qs_self) {
        static qs_partition = function(arr, low, high, cmp) {
            var pivot = arr[high];
            var i = low;
            for (var j = low; j < high; j++) {
                if (cmp(arr[j], pivot)) {
                    var t = arr[i];
                    arr[i++] = arr[j];
                    arr[j] = t;
                }
            }
            var t = arr[i];
            arr[i] = arr[high];
            arr[high] = t;
            return i;
        }
    
        if (low < high) {
            var p = qs_partition(arr, low, high, cmp);
            qs_self(arr, low, p - 1, cmp, qs_self);
            qs_self(arr, p + 1, high, cmp, qs_self);
        }
    };
    
    if (is_array(list_or_array)) {
        qs_internal_array(list_or_array, 0, array_length(list_or_array) - 1, cmp, qs_internal_array);
    } else {
        qs_internal_list(list_or_array, 0, ds_list_size(list_or_array) - 1, cmp, qs_internal_list);
    }
}