let numbers = [1, 2, 3, 4, 5, 6]

let times3 = numbers.map({
  (number: Int) -> Int in
  let result = 3 * number
  return result
})

let times3onlyEven = numbers.map({
  (number: Int) -> Int in
  if number % 2 == 0 {
    return 3 * number
  } else {
    return 0;
  }
})

print(times3)
print(times3onlyEven)

let mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)

let sortedNumbers = numbers.sort({ $0 > $1 })
print(sortedNumbers)
