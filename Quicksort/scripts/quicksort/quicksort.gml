// Takes a list and sorts it.
function quicksort(list) {
    static qs_internal = function(list, low, high, qs_self) {
        static qs_partition = function(list, low, high) {
            var pivot = list[| high];
            var i = low;
            for (var j = low; j < high; j++) {
                if (list[| j] < pivot) {
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
            var p = qs_partition(list, low, high);
            qs_self(list, low, p - 1, qs_self);
            qs_self(list, p + 1, high, qs_self);
        }
    };
    
    qs_internal(list, 0, ds_list_size(list) - 1, qs_internal);
}