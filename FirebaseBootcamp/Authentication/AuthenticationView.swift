//
//  AuthenticationView.swift
//  FirebaseBootcamp
//
//  Created by Роман Пшеничников on 04.05.2025.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack {

            NavigationLink {
                SignInEmailView()
            } label: {
                Text("Sign Up With Email")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Sign In")
    }
}

#Preview {
    NavigationStack {
        AuthenticationView()
            .navigationTitle("Authentication")
    }
}
