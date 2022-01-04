//
//  ReservationGuide.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2022/01/04.
//

import SwiftUI

struct ReservationGuide: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            
            VStack {
                Spacer()
                    .frame(height: 50)
                HStack {
                    Spacer()
                        .frame(width: 19)
                    Text("予約方法が分かりません")
                        .font(.system(size: 17))
                        .bold()
                    Spacer()
                }
                
                Spacer()
                    .frame(height: 19)
                
                HStack {
                    Spacer()
                        .frame(width: 19)
                    Text("ストレッチのライブコンテンツに参加いただくには、事前の予約が必要です。 気になるストレッチのライブコンテンツを見つけたら、開催日時を確認して予約ボタンを押してください。")
                        .frame(height: 150)
                    Spacer()
                }
//                Spacer()
//                    .frame(height: 63)
                HStack {
                    Spacer()
                        .frame(width: 19)
                    Text("問題は解決しましたか？ 「ヘルプ」をご覧になっても、問題が解決しない場合はサポートセンターまでお問い合わせください")
                        .frame(height: 150)
                        .foregroundColor(.secondary)
                    
                }
//                Spacer()
//                    .frame(height: 500)
                
                NavigationLink(destination: ContactTopView()) {
                    
                    HStack {
                        Image("call")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Text("お問い合わせはこちら")
                            .fontWeight(.semibold)
                        
                        
                    }
                    .frame(width: 222, height: 38)
                    .foregroundColor(Color.viewButtton)
                    .background(Color.viewBackground)
                    .cornerRadius(24)
                    Spacer()
                        .frame(width: 130)
                }
                Spacer()
                    .frame(height: 427)
            }
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(
                    action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("＜ もどる")
                            .foregroundColor(.green)
                    })
            }
            
        }
        
    }
}




struct ReservationGuide_Previews: PreviewProvider {
    static var previews: some View {
        ReservationGuide()
    }
}
