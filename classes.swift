                              // clases
class Person
{
    let name: String
    init(name: String){
        self.name = name
    }
    func sayHello(){
        print("hello,there!")
    }
}
let person = Person(name: "Jasmine")
print(person.name)
person.sayHello()
                                //Base class
class Vehicle {
    var currentSpeed = 0.0
    var description : String {
        "travelling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}
let someVehicle = Vehicle()
print("Vehicle:\(someVehicle.description)")
                                // SUBCLASS
class Bicycle: Vehicle {
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.currentSpeed = 15.0
print("bicycle: \(bicycle.description)")
                                 //subclass(2)
class Tandem: Bicycle{
    var currentNumberOfPassengers = 0
}
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")
                             // override(function
class Train: Vehicle {
    override func makeNoise() {
        print("choo choo!")
    }
}
let train = Train()
train.makeNoise()
                            //override(propertis)
class Car: Vehicle {
    var gear = 1
    override var description: String {
        super.description + "in gear \(gear)"
    }
}
let car =  Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

                           // References
class _Person {
    let name: String
    var age: Int
    init(name: String, age:Int){
        self.name = name
        self.age = age
    }
}
var jack = _Person(name:"Jack", age: 24)
var myFriend = jack
jack.age += 1
print(jack.age)
print(myFriend.age)
