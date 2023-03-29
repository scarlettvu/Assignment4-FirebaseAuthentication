//
//  SignIn.swift
//  FirebaseAuthentication-SignInApp
//
//  Created by Scarlett  on 3/29/23.
//

import SwiftUI
import AuthenticationServices

struct SignIn: View {
    @StateObject var signInViewModel: SignInViewModel = .init()
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 15) {
                Spacer()
                (Text("Hello there! :)")
                    .foregroundColor(.black) +
                Text("\nWelcome to Eco.")
                    .foregroundColor(.green)
                )
                .font(.title)
                .lineSpacing(8)
                .padding(.top, 20)
                .padding(.trailing, 30)
                
                UserInputTextField(text: $signInViewModel.cellPhoneNumber, num: "Number: 16692927545")
                    .disabled(signInViewModel.displayConfirmation)
                    .padding(.top, 50)
                UserInputTextField(text: $signInViewModel.confirmationCode, num: "Code: 123456")
                    .disabled(!signInViewModel.displayConfirmation)
                    .padding(.top, 15)
                
                Button(action: signInViewModel.displayConfirmation ? signInViewModel.verifyConfirmationCode : signInViewModel.sendConfirmationCode){
                    HStack(spacing: 15) {
                        Text(signInViewModel.displayConfirmation ? "Verify Code" : "Send Code")
                            .contentTransition(.identity)
                    }
                    .foregroundColor(.blue)
                    .padding(.vertical)
                }
                .padding(.top, 5)
            }
            .padding(.leading, 70)
            .padding(.vertical, 15)
        }
        .alert(signInViewModel.errorMsg, isPresented: $signInViewModel.displayError) {
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
