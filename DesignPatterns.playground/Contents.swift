import UIKit

var str = "Hello, playground"

let builder = ArticleViewBuilder()
    .withTitle(article.title)
    .withSubtitle(article.subtitle)
    .withImage(article.image)
    .build()

builder.debugDescription

// Factory Method
func selectCar(passengers: Int) -> String? {
  var car: RentalCar?
  switch passengers {
  case 0...2:
    car = Sports()
  case 3...4:
    car = Compact()
  case 4...7:
    car = SUV()
  case 8...10:
    car = Minivan()
  default:
    car = nil
  }
  
  return car?.name

}

selectCar(passengers: 8)
