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
