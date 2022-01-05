//
//  CombineSample.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2022/01/05.
//

import SwiftUI
import Combine

struct CombineSample: View {
    
    @State var messageText = ""
    
    @State var largeText = false
    @State var smallText = false
    @State var number = false
    @State var symbol = false
    @State var lengthExceeds16 = false
    
    var body: some View {
        
        Form {
            TextField("メッセージ", text: $messageText)
                .onReceive(Just(messageText)) { _ in
                    self.lengthExceeds16 = (messageText.count > 16)
                    // 大文字
                    let capitalLetterExpression = ".*[A-Z]+.*"
                    let capitalLetterCondition = NSPredicate(format:"SELF MATCHES %@", capitalLetterExpression)
                    self.largeText = capitalLetterCondition.evaluate(with: messageText)
                    // 小文字
                    let capitalLetterExpression1 = ".*[a-z]+.*"
                    let capitalLetterCondition1 = NSPredicate(format:"SELF MATCHES %@", capitalLetterExpression1)
                    self.smallText = capitalLetterCondition1.evaluate(with: messageText)
                    // 数字
                    let numberExpression = ".*[0-9]+.*"
                    let numberCondition = NSPredicate(format:"SELF MATCHES %@", numberExpression)
                    self.number = numberCondition.evaluate(with: messageText)
                    // 符号
                    let symbolExpression = ".*[!&^%$#@()/]+.*"
                    let symbolCondition = NSPredicate(format:"SELF MATCHES %@", symbolExpression)
                    self.symbol = symbolCondition.evaluate(with: messageText)
                }
                .padding()
            // ユーザーによるパスワード入力をご希望の場合は、`SecureField` をご利用下さい。
            Text(String(messageText.count))
                .keyboardType(.asciiCapable)
                .autocapitalization(.none)
                .disableAutocorrection(true)
            // パスワード 条件
            PasswordConditionDisplay(isConditionMet: $largeText, conditionName: "大文字")
            PasswordConditionDisplay(isConditionMet: $smallText, conditionName: "小文字")
            PasswordConditionDisplay(isConditionMet: $number, conditionName: "数字")
            PasswordConditionDisplay(isConditionMet: $symbol, conditionName: "符号")
            PasswordConditionDisplay(isConditionMet: $lengthExceeds16, conditionName: "パスワードは16文字を越える必要があります")
        }
        
//        Form {
//            TextField("メッセージ", text: $messageText)
//                .onReceive(Just(messageText)) { _ in
//                    if messageText.count > 30 {
//                        messageText = String(messageText.prefix(30))
//                    }
//                }
//                .padding()
//            Text(String(messageText.count))
//        }
        
    }
    
}

struct PasswordConditionDisplay: View {
    @Binding var isConditionMet: Bool
    var conditionName: String
    var body: some View {
        HStack {
            Image(systemName: isConditionMet ? "circle.fill" : "xmark")
                .padding(.horizontal, 5)
            Text(conditionName)
        }
    }
}

struct CombineSamole_Previews: PreviewProvider {
    static var previews: some View {
        CombineSample()
    }
}
