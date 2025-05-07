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
    
    @discardableResult
    func createUser(email: String, password: String) async throws -> AutoDataResultModel {
        let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
        let user = authResult.user
        return AutoDataResultModel(user: user)
    }
    
    @discardableResult
    func signInUser(email: String, password: String) async throws -> AutoDataResultModel {
        let authDataResult = try await Auth.auth().signIn(withEmail: email, password: password)
        let user = authDataResult.user
        return AutoDataResultModel(user: user)
    }
    
    func resetPassword(email: String) async throws {
        try await Auth.auth().sendPasswordReset(withEmail: email)
    }
    
    func updatePassword(newPassword: String) async throws {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        try await user.updatePassword(to: newPassword)
    }
    
    func updateEmail(newEmail: String) async throws {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        try await user.updateEmail(to: newEmail)
    }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
}

