//Create a structure example which demonstrates use of initializer in structures.
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var tempInFerenhit = Fahrenheit()
print("The default temperature is \(tempInFerenhit.temperature)° Fahrenheit")
