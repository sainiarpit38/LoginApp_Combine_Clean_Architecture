import Combine

class LoginUseCase {
    private let repository: AuthRepository

    init(repository: AuthRepository) {
        self.repository = repository
    }

    func execute(email: String, password: String) -> AnyPublisher<User, Error> {
        repository.login(username: email, password: password)
    }
}
