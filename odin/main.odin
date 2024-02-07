package main

import "core:fmt"


// Big O complexity list
// O(1) - Constant time e.g. accessing an element in an array by index
// O(log n) - Logarithmic time e.g. binary search
// O(n) - Linear time e.g. traversing/iterating through an array or string
// O(nlogn) - Linearithmic time e.g. sorting an array using merge sort or quicksort
// O(n^2) - Quadratic time e.g. nested loops or algorithms like bubble sort
// O(2^n) - Exponential time e.g. recursive algorithms like calculating Fibonacci numbers
// O(n!) - Factorial time e.g. traversing a graph by depth-first search

main :: proc() {
	fmt.println(sum_char_codes("test"))

	// Array Data Structure
	a: [4]int = {1, 2, 3, 4}

	// get, insert / overwrite, and "delete" is O(1)
	// a + width of element * offset
	a[1] = 1


	s: []int = {1, 2, 3, 4, 5, 6, 7, 8, 9}
	fmt.println(binary_search_recursive(s, 7))
	fmt.println(binary_search_proceedural(s, 7))
}

// this is big O of O(n) where n is length of string
sum_char_codes :: proc(str: string) -> int {
	sum := 0
	for char in str {
		sum += 1
	}
	return sum
}

// ****************************************************************************
// Search algos
// ****************************************************************************

// linear search, O(n) time
linear_search :: proc(arr: []int, target: int) -> int {
	for i, v in arr {
		if v == target {
			return i
		}
	}
	return -1
}

