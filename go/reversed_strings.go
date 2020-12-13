// Reversed Strings (8kyu)
// https://www.codewars.com/kata/5168bb5dfe9a00b126000018/go
//
// Complete the solution so that it reverses the string passed into it.
// 'world'  =>  'dlrow'

package kata

func Solution(word string) string {
	chars := []rune(word)

	for left_index, right_index := 0, len(chars)-1; left_index < right_index; left_index, right_index = left_index+1, right_index-1 {
		chars[left_index], chars[right_index] = chars[right_index], chars[left_index]
	}

	return string(chars)
}
