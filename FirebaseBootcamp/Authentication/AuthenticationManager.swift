//
//  AuthenticationManager.swift
//  FirebaseBootcamp
//
//  Created by Роман Пшеничников on 04.05.2025.
//

import Foundation
import FirebaseAuth

struct AutoDataResultModel {
    let uid: String
    let email: String?
    let photoUrl: String?
    
    init(user: User) {
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}

final class AuthenticationManager {
    
    static let shared = AuthenticationManager()
    private init() {}
    
    func getAuthenticatedUser() throws -> AutoDataResultModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        return AutoDataResultModel(user: user)
    }
    
    func createUser(email: String, password: String) async throws -> AutoDataResultModel {
        let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
        let user = authResult.user
        return AutoDataResultModel(user: user)
    }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
}

