// Two Sum solution in Dart using a hash map approach. 
// This method achieves O(n) time complexity with a single pass through the array. 
// It's memory-efficient and faster than the brute force method, 
// making it ideal for large datasets.
// Import the input/output library (though not used in this example, it's good practice)
import 'dart:io';

// The main function - the starting point of our Dart program
void main() {
  // Define our list of numbers
  List<int> nums = [2, 7, 11, 15];
  // Define our target sum
  int target = 9;

  // Call the twoSum function and store the result
  List<int> result = twoSum(nums, target);
  
  // Print the input and output for clarity
  print("Input: nums = $nums, target = $target");
  print("Output: $result");
}

// Our twoSum function that finds two numbers that add up to the target
List<int> twoSum(List<int> nums, int target) {
  // Create an empty map to store numbers we've seen and their indices
  Map<int, int> data = {};

  // Loop through each number in the list
  for (int i = 0; i < nums.length; i++) {
    // Calculate the number we need to find (complement)
    int x = target - nums[i];
    
    // If we've seen this complement before, we found our pair!
    if (data.containsKey(x)) {
      // Return the indices of the two numbers
      return [data[x]!, i];
    }
    
    // If not found, add the current number and its index to our map
    data[nums[i]] = i;
  }
  
  // If we've gone through all numbers and haven't found a pair, return an empty list
  return []; // Return empty list if no solution found
}