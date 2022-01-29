//
//  CombineSample2.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2022/01/29.
//import SwiftUI

import SwiftUI

struct CombineSample2: View {
    
    @ObservedObject var viewModel: CombineViewModel = .init()
    
    var body: some View {
        VStack {
            Group {
                TextField.init("mail address", text: self.$viewModel.mail)                    .textContentType(.emailAddress)
                    .autocapitalization(.none)
                if !self.viewModel.invalidMail.isEmpty {
                    Text(self.viewModel.invalidMail)
                        .foregroundColor(.red)
                        .font(.footnote)
                }
            }
            
            Group {
                SecureField.init("password", text: self.$viewModel.pass)
                    .textContentType(.newPassword)
                
                SecureField.init("retype password", text: self.$viewModel.retype)
                    .textContentType(.newPassword)
                
                if !self.viewModel.invalidPass.isEmpty {
                    Text(self.viewModel.invalidPass)
                        .foregroundColor(.red)
                        .font(.footnote)
                }
            }
            
            Button("Register") {
                debugPrint("register")
            }.disabled(!self.viewModel.canSend)
                .foregroundColor(.blue)
            
            Spacer()
            
        }.padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct CombineSample2_Previews: PreviewProvider {
    static var previews: some View {
        CombineSample2(viewModel: .init())
    }
}

