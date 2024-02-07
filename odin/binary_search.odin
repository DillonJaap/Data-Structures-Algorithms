package main

// binary search, O(log n) time
// only works if it ordered
binary_search_recursive :: proc(arr: []int, target: int) -> int {
	search :: proc(arr: []int, target: int, low: int, high: int) -> int {
		midpoint := low + (high - low) / 2

		if arr[midpoint] == target {
			return midpoint
		} else if low >= high {
			return -1
		} else if arr[midpoint] > target {
			return search(arr, target, low, midpoint)
		}
		return search(arr, target, midpoint, high)
	}
	return search(arr, target, 0, len(arr) - 1)
}

binary_search_proceedural :: proc(arr: []int, target: int) -> int {
	low := 0
	high := len(arr) - 1

	for {
		midpoint := low + (high - low) / 2
		value := arr[midpoint]

		if value == target {
			return midpoint
		} else if value > target {
			high = midpoint
		} else {
			low = midpoint
		} 

		if low >= high {
			break
		}
	}
	return -1
}
