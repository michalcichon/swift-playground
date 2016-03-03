func greet(name: String, day: String) -> String {
  return "Hello \(name), today is \(day)."
}

let g = greet("Bob", day: "Tuesday")
print(g)

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[1]
  var sum = 0

  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }

  return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
print("Sum:", statistics.sum)
print("Min: \(statistics.0)")

// variable number of arguments
func sumOf(numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}

let sumA = sumOf()
let sumB = sumOf(42, 597, 12)

print("sumA=\(sumA)")
print("sumB=\(sumB)")

// nested function
func returnFifteen() -> Int {
  var y = 10
  func add() {
    y += 5
  }
  add()
  return y
}

let fifteen = returnFifteen()
print("fifteen=\(fifteen)")

// returning function
func makeIncrementer() -> ((Int) -> Int) {
  func addOne(number: Int) -> Int {
    return 1 + number
  }
  return addOne
}

var increment = makeIncrementer()
let incrementResult = increment(7)
print("incrementResult=\(incrementResult)")
