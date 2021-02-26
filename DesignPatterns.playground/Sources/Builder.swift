import Foundation
import UIKit

// When piecewise object construction is complicated,
// provide an API for doing it succinctly

// Builder is a creational design pattern, which allows constructing complex objects step by step

//The core idea behind the builder pattern is that the process of setting up
//an object is performed by a dedicated Builder type, rather than by the
//object itself. As an example, let's say we wanted to setup an ArticleView
//with a title, a subtitle and an image. A common way to do that would be to
//expose the subviews that will render the content and set properties on them, like this:

public class ArticleView {
  public var titleLabel = UILabel()
  public var subtitleLabel = UILabel()
  public var imageView = UIImageView()
  
  public init() {}
}

extension ArticleView: CustomDebugStringConvertible {
  public var debugDescription: String {
    return "ArticleView: \(String(describing: titleLabel.text)) \(String(describing: subtitleLabel.text)) \(imageView.image.debugDescription)"
  }
}

public struct Article {
  public let title: String
  public let subtitle: String
  public let image: UIImage
  

}

public var view = ArticleView()
public let article = Article(title: "title", subtitle: "Sub Title", image: UIImage())

public func updateUI() {
  view.titleLabel.text = article.title
  view.subtitleLabel.text = article.subtitle
  view.imageView.image = article.image
}

//Let's now try to use the builder pattern instead. Instead of
//accessing the subviews of ArticleView, we'll use an ArticleViewBuilder to
//set all the properties we need through a series of chained method calls, and
//then we'll finish by calling build() to create an instance - like this:

public struct ArticleViewBuilder {
  
  private var articleView: ArticleView
  
  public init() {
    self.articleView = ArticleView()
  }
  
  public func withTitle(_ title: String) -> ArticleViewBuilder  {
    self.articleView.titleLabel.text = title
    return self
  }
  
  public func withSubtitle(_ subTitle: String) -> ArticleViewBuilder  {
    self.articleView.subtitleLabel.text = subTitle
    return self
  }
  
  public func withImage(_ image: UIImage) -> ArticleViewBuilder {
    self.articleView.imageView.image = image
    return self
  }
  
  public func build() -> ArticleView {
    return self.articleView
  }
}

//let builder = ArticleViewBuilder()
//    .withTitle(article.title)
//    .withSubtitle(article.subtitle)
//    .withImage(article.image)
//    .build()
//
//builder.debugDescription

//As you can see above, a common practice is to have the builder
//return itself from each method call, making it easy to chain setup
//commands without having to introduce additional local variables.
