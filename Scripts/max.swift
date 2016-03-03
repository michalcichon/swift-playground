let interestingNumbers = [
  "Prime": [2, 3, 5, 7, 11, 13],
  "Fibonacci": [1, 1, 2, 3, 5, 8],
  "Square": [1, 4, 9, 16, 25]
]

var max = 0;

for (kind, numbers) in interestingNumbers {
  for number in numbers {
    if number > max {
      max = number
    }
  }
}

print(max)
