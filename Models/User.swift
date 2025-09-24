import Foundation

struct User: Identifiable, Codable {
    let id: UUID
    var name: String
    var email: String
}
