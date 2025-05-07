//
//  RootView.swift
//  FirebaseBootcamp
//
//  Created by Роман Пшеничников on 04.05.2025.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView: Bool = false
    var body: some View {
        ZStack {
            NavigationStack {
                SettingsView(showSignInView: $showSignInView)
            }
        }
        .onAppear{
            do {
                let _ = try AuthenticationManager.shared.getAuthenticatedUser()
                self.showSignInView = false
            } catch {
                self.showSignInView = true
            }
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack {
                AuthenticationView(showSignInView: $showSignInView)
                    .navigationTitle("Authentication")
            }
        }
    }
}

#Preview {
    RootView()
}
