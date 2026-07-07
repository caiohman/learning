fun inp() {
	val input = readln()
	val n : Int? = input.toIntOrNull()
	val number : Int = input.toIntOrNull() ?: 0
	val equal = input.toIntOrNull()?.equals(1)

	println("n = $n")
	println("number = $number")
	println("equal = $equal")
}


fun main() {
	inp()

	val x: Int = 5
	var mut: Int = 10
	mut = mut - x

	println("x = $x")
	println("mut = $mut")
	println("Are equals = ${mut == x}")
}

// kotlinc var.kt -include-runtime -d var.jar
