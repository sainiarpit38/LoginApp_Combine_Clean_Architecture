import Foundation
import Combine

class AuthRepositoryImpl: AuthRepository {
    
    
    func login(username: String, password: String) -> AnyPublisher<User, Error> {
        
        
        var request = URLRequest(url: URL(string: "https://dummyjson.com/auth/login")!,timeoutInterval: Double.infinity)
        request.httpMethod = "POST"
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        let parameters = "username=\(username)&password=\(password)"
        let postData =  parameters.data(using: .utf8)
        request.httpBody = postData
        
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .tryMap { result -> Data in
                guard let response = result.response as? HTTPURLResponse else {
                    throw URLError(.badServerResponse)
                }
                
                if response.statusCode != 200 {
                    let errorMessage = String(data: result.data, encoding: .utf8) ?? "Unknown error"
                    print("Server error (status \(response.statusCode)): \(errorMessage)")
                    throw URLError(.badServerResponse)
                }
                return result.data
            }
            .decode(type: User.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
