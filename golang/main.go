package main

type Person struct{}

func greetWithPhrase(x Speaker, phrase string) {
	x.speak("Hello there!")
	x.speak(phrase)
}

func main() {
	john := Person{}
	john.speak("Testing whether I can speak")

	greetWithPhrase(john, "I am John")
}
