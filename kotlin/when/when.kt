fun main() {
	val input = readln()
	val value = input.toIntOrNull()

	val output = when(value) {
		null -> "not a number"
		in 1..9 -> "dec"
		in 10..99 -> "dez"
		else -> "big"
	}
	println(output)
}


// kotlinc when.kt -include-runtime -d when.jar
