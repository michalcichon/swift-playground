if Process.arguments.count != 2 {
  print("Usage: Hello <name>")
} else {
  let name = Process.arguments[1]
  sayHello(name)
}
