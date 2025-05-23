import Combine

protocol AuthRepository {
    func login(username: String, password: String) -> AnyPublisher<User, Error>
}
