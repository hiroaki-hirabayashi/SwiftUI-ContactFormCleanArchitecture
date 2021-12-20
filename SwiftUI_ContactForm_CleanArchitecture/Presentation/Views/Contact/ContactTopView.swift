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
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    isShowModal.toggle()
                } label: {
                    Text("ContactTopView_UseContactForm".localizedString)
                }
                .accessibilityIdentifier("ContactTopView_UseContactForm")
                .sheet(isPresented: $isShowModal) {
                    
                }
            }
        }
    }
}

struct ContactTopView_Previews: PreviewProvider {
    static var previews: some View {
        ContactTopView()
    }
}
