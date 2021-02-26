import Foundation

//Factory method is a creational design pattern which solves the problem of
//creating product objects without specifying their concrete classes.

public protocol RentalCar {
  var name: String { get }
  var passenger: Int { get }
  var pricePerDay: Float { get }
}

public class Compact: RentalCar {
  public var name: String = "Swift"
  public var passenger: Int = 4
  public var pricePerDay: Float = 600
  
  public init() {}
}

public class Sports: RentalCar {
  public var name: String = "Porche"
  public var passenger: Int = 2
  public var pricePerDay: Float = 10000
  
  public init() {}
}

public class SUV: RentalCar {
  public var name: String = "Innova"
  public var passenger: Int = 7
  public var pricePerDay: Float = 1200
  
  public init() {}
}

public class Minivan: RentalCar {
  public var name: String = "Tata Minivan"
  public var passenger: Int = 10
  public var pricePerDay: Float = 2000
  
  public init() {}
}

//class Bus: RentalCar {
//  var name: String = ""
//  var passenger: Int
//  var pricePerDay: Float
//}

