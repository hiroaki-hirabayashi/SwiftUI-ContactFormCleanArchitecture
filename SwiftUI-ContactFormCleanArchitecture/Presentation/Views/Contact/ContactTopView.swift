//
//  ContactTopView.swift
//  SwiftUI_ContactForm_CleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2021/12/18.
//

import Foundation
import SwiftUI

struct ContactTopView: View {
    @ObservedObject private var viewModel = ContactTopViewModel()
    @State private var isShowModal = false
    @State private var isShowAlert = false
    @State private var needShowAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    isShowModal.toggle()
                }) {
                    Text("ContactTopView_UseContactForm".localizedString)
                }
                .accessibilityIdentifier("ContactTopView_UseContactForm")
                .sheet(isPresented: $isShowModal) {
                    ContactFormView(needShowAlert: $needShowAlert)
                        .onDisappear {
                            if needShowAlert {
                                isShowAlert.toggle()
                            }
                        }
                }
                .alert(isPresented: $isShowAlert) {
                    showAlert()
                }
                Text(viewModel.foundMessage)
            }
            .navigationBarTitle("ContactTopView_BarTitle".localizedString, displayMode: .inline)
            .onAppear {
                viewModel.getFoundAnsweredInquiry()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    func showAlert() -> Alert {
        Alert(
            title: Text("ContactSendAlert_Title".localizedString),
            message: Text("ContactSendAlert_Message".localizedString),
            dismissButton: .default(Text("AlertButton_OK".localizedString))
        )
    }
}

struct ContactTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContactTopView()
    }
}
