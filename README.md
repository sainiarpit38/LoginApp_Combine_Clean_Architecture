# LoginApp_Combine_Clean_Architecture

🚀 Swift Login App (Combine + Clean Architecture)
This sample iOS app demonstrates how to implement a login flow using:

✅ Combine framework

✅ Clean Architecture principles

✅ DummyJSON login API (no API key required)

📱 Features
Login with hardcoded dummy credentials

Uses URLSession with Combine

Proper response decoding and error handling

Clean separation of layers (Domain, Use Case, Repository, ViewModel)

🧪 Dummy Login API
Endpoint:
POST https://dummyjson.com/auth/login

Credentials:
{
  "username": "emilys",
  "password": "emilyspass"
}


Success Response:
{
    "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJlbWlseXMiLCJlbWFpbCI6ImVtaWx5LmpvaG5zb25AeC5kdW1teWpzb24uY29tIiwiZmlyc3ROYW1lIjoiRW1pbHkiLCJsYXN0TmFtZSI6IkpvaG5zb24iLCJnZW5kZXIiOiJmZW1hbGUiLCJpbWFnZSI6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pY29uL2VtaWx5cy8xMjgiLCJpYXQiOjE3NDc5NzYzNTksImV4cCI6MTc0Nzk3OTk1OX0.GfX_5-vlRwmG59yhiUY2VFwMs4SaKqBidokj26asrq8",
    "refreshToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwidXNlcm5hbWUiOiJlbWlseXMiLCJlbWFpbCI6ImVtaWx5LmpvaG5zb25AeC5kdW1teWpzb24uY29tIiwiZmlyc3ROYW1lIjoiRW1pbHkiLCJsYXN0TmFtZSI6IkpvaG5zb24iLCJnZW5kZXIiOiJmZW1hbGUiLCJpbWFnZSI6Imh0dHBzOi8vZHVtbXlqc29uLmNvbS9pY29uL2VtaWx5cy8xMjgiLCJpYXQiOjE3NDc5NzYzNTksImV4cCI6MTc1MDU2ODM1OX0.KAAnAtmB1gchM3Y0_Tvp202dHZ630JghqahKRBPAEdA",
    "id": 1,
    "username": "emilys",
    "email": "emily.johnson@x.dummyjson.com",
    "firstName": "Emily",
    "lastName": "Johnson",
    "gender": "female",
    "image": "https://dummyjson.com/icon/emilys/128"
}

🧩 Project Structure

📁 Domain
    └── Entities (User.swift)
    └── UseCases (LoginUseCase.swift)

📁 Data
    └── Network (AuthRepository.swift)
    └── Repository (AuthRepositoryImpl.swift)

📁 Presentation
    └── ViewModel (LoginViewModel.swift)
    └── Views (LoginView.swift)
🔧 Setup & Run
Open the .xcodeproj or .xcworkspace file

Build and run the project in a simulator

Use the credentials provided above to test login

🧼 Clean Architecture Layers
Domain: Business logic & models (User, LoginUseCase)

Data: Handles network & data mapping (AuthRepositoryImpl, AuthRepository)

Presentation: SwiftUI Views & ViewModels (LoginView, LoginViewModel)

🛠 Dependencies
Combine (built-in)

Swift 5.5+

iOS 14+

=

👨‍💻 Author
Made with ❤️ by Arpit Kumar
