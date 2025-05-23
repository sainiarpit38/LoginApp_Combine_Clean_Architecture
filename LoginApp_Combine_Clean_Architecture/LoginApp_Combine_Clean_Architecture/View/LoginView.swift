import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel(
        loginUseCase: LoginUseCase(repository: AuthRepositoryImpl())
    )

    var body: some View {
        VStack(spacing: 20) {
            TextField("Email", text: $viewModel.email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none)

            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button("Login") {
                viewModel.login()
            }
            .padding()

            if let user = viewModel.user {
                Text("Welcome, \(user.firstName) \(user.lastName)")
                    .foregroundColor(.green)
                Text("Email, \(user.email)")
                    .foregroundColor(.green)
                Text("Gender, \(user.gender)")
                    .foregroundColor(.green)
            }

            if let error = viewModel.errorMessage {
                Text("Error: \(error)")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}
