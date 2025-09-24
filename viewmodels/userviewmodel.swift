import Foundation

class UserViewModel: ObservableObject {
    @Published var users: [User] = []

    func loadUsers() {
        users = [
            User(id: UUID(), name: "Alice", email: "alice@example.com"),
            User(id: UUID(), name: "Bob", email: "bob@example.com")
        ]
    }
}
