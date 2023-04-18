package main

import "fmt"

type Person struct {
	name string
}

type Speaker interface {
	speak(string)
	getName() string
}

func (p Person) speak(x string) {
	fmt.Println(x)
}

func (p Person) getName() string {
	return p.name
}

func greetWithPhrase(s Speaker, phrase string) {
	s.speak("Hello there!")
	s.speak(phrase)
}

func sayName(s Speaker) {
	s.speak(s.getName())
}

func main() {
	john := Person{name: "John"}
	john.speak("Testing whether I can speak")

	greetWithPhrase(john, "I am John")
	sayName(john)

}
