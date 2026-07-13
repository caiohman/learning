fun main() {
	val input = readln()
	val n = input.toInt()

	println(n + n.reversed(input = n))
}

fun String.reversed(str: String) : String {
	val finalString = buildString{
		for(i in this@reversed.lastIndex downTo 0) {
			append(this@reversed[i])
		}
	}
	return finalString
}

fun Int.reversed(input: Int) : Int {
	return this.toString().reversed().toInt()
}


//kotlinc overload.kt -include-runtime -d overload.jar
