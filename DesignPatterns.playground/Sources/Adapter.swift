import Foundation

//The adapter pattern is a software design pattern (also known as a
//wrapper, an alternative naming shared with the decorator pattern)
//that allows the interface of an existing class to be used as a different
//interface. It is often used to make existing classes work with each other,
//without modifying their source code.

struct APITask: Decodable {
    let id: String
    let createdAt: TimeInterval
    let createdBy: String
    let developedBy: String
    let finishedAt: TimeInterval?
}

protocol Task {
    var id: String { get }
    var createdAtDate: Date { get }
    var author: String { get }
    var finishedAtDate: Date? { get }
}

extension APITask: Task {
    var author: String { return createdBy }
    var createdAtDate: Date { return Date(timeIntervalSince1970: createdAt) }
    var finishedAtDate: Date? { return finishedAt.map { Date(timeIntervalSince1970: $0) } }
}
