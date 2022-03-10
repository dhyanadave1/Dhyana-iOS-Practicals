//Create a structure example which demonstrates use of initializer in structures.
struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var tempInFerenhit = Fahrenheit()
print("The default temperature is \(tempInFerenhit.temperature)° Fahrenheit")


//Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters
struct myStruct {
    let myString : String?
    let myDouble : Double?
    let myInt : Int?
}

var structureWithParameters = myStruct(myString: "Dhyana", myDouble: 10.5, myInt: 10)
print(structureWithParameters)


struct mineStruct {
    let mineStr : String?
    let mineDouble : Double?
    
    init(mineStr : String? = "Dhyana" ,
         mineDouble : Double? = 10.5)
    {
        self.mineStr = mineStr
        self.mineDouble = mineDouble
    }
    
}
var structureWithoutParameters = mineStruct()
print(structureWithoutParameters)


class SomeClass {
    var name: String
    init(name: String) {
        self.name = name
    }
}

