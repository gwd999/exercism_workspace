// Take a look at the tests, you might have to change the function arguments

pub fn binarySearch(comptime T: type, target: T, items: []const T) ?usize {
    // Handle empty array case
    if (items.len == 0) {
        return null;
    }

    var low: usize = 0; // left or low(er) bound
    var high: usize = items.len; // right or high(er) bound

    while (low < high) {
        const mid = low + (high - low) / 2;

        if (items[mid] == target) {
            return mid; // Found the target
        } else if (items[mid] < target) {
            low = mid + 1; // target is in the low(er) half
        } else {
            high = mid; // else target is in the high(er) half
        }
    }

    return null; // Target not found
}
