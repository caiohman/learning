fun exception(input: String) {
	val number = try {
		input.toInt()	
	} catch(e: Exception) {
		throw e
	}	
}


fun main() {
	val input = readln()
	val number = try {
		exception(input)
	} catch(e : Exception) {
		println(e)
	}
}



// kotlinc exception.kt -include-runtime -d exception.jar
