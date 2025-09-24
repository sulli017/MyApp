import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = UserViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.users) { user in
                VStack(alignment: .leading) {
                    Text(user.name).font(.headline)
                    Text(user.email).font(.subheadline)
                }
            }
            .navigationTitle("Users")
            .onAppear {
                viewModel.loadUsers()
            }
        }
    }
}
