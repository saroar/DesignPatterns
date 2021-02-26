import Foundation

//‘Facade’ pattern is a structural design pattern which improves the structure of a large system¹. Structural pattern is useful for making independent developed systems work together.
//
//The ‘Facade’ pattern defines an object representing a subsystem. This object is an interface that will take the responsibility to interact with the subsystem.

class Facade {
  private let obj1: SystemObject1
  private let obj2: SystemObject2
  
  public init(obj1: SystemObject1, obj2: SystemObject2) {
    self.obj1 = obj1
    self.obj2 = obj2
  }
}

public class SystemObject1 {
  public init() {}
  public func operation1() {}
}

public class SystemObject2 {
  public init() {}
  public func operation2() {}
}
