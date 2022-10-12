 // code-- instances
 struct car{
    var make: String
    var model: String
    var year: Int
    var topspeed : Int
    
    func startengine(){
        print("the \(year) \(make) \(model)'s engine has started.")
    }
    func drive(){
            print("the \(year) \(make) \(model) is moving")
        
    }
    
 }
 let firstCar =  car(make: "honda", model:"civic",year:2010,topspeed: 120)
 let secondCar = car(make: "ford", model: "fusion",year:2013,topspeed:125)
 firstCar.startengine()
 firstCar.drive()
  
 
    // code--instance method
 
 
 struct size{
    var width : Double
    var height : Double
    
    func area()-> Double{
        width * height
        
    }
 }
 let somesize =  size(width:10.0, height: 5.5)
 let area = somesize.area()
 print("area is = \(area)")
 
 
 //code--function in the structures
 
 struct Person {
    var name: String
    func sayHello(){
        print("hello, there! My name is \(name)! ")
    }
 }
 let person=Person(name: "Jasmine")
 person.sayHello()
 
 // code-default values
 struct Odometer{
    var count : Int = 0
 }
 let odometer = Odometer()
 print(odometer.count)
 
       // -- member initialiser
 
 let odometer2 = Odometer(count:2700)
 print(odometer2.count)
 
        //code--Customize Initializer
 
 struct Temperature{
    var celcius: Double
    init(celcius: Double){
        self.celcius = celcius
    }
    init(fahrenheit: Double){
        celcius = (fahrenheit - 32)/1.8
    }
 }
 let currentTemperature = Temperature(celcius: 18.5)
 let boiling = Temperature(fahrenheit: 212.0)
 print(currentTemperature.celcius)
 print(boiling.celcius)
 
        //th code --compound properties
 
 struct temperature{
 var _celsius: Double
 
 var _fahrenheit: Double{
    _celsius * 1.8 + 32
 }
 var kelvin: Double{
    _celsius + 273.15
 }
    
 }
 let currentTemp = temperature(_celsius:0.0)
 print(currentTemp._fahrenheit)
 print(currentTemp.kelvin)

 
