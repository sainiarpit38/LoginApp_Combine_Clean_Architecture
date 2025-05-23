import Combine

class LoginViewModel: ObservableObject {
    @Published var email = "emilys"
    @Published var password = "emilyspass"
    @Published var user: User?
    @Published var errorMessage: String?

    private let loginUseCase: LoginUseCase
    private var cancellables = Set<AnyCancellable>()

    init(loginUseCase: LoginUseCase) {
        self.loginUseCase = loginUseCase
    }

    func login() {
        loginUseCase.execute(email: email, password: password)
            .sink(receiveCompletion: { completion in
                if case .failure(let error) = completion {
                    
                    print("error=====",error.localizedDescription)
                    self.errorMessage = error.localizedDescription
                }
            }, receiveValue: { user in
                self.user = user
                self.errorMessage = nil
            })
            .store(in: &cancellables)
    }
}
