//
//  HelpListView.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2022/01/04.
//

import SwiftUI

struct Name: Identifiable {
    var id = UUID()
    let name: String
}

struct HelpView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.viewBackground.ignoresSafeArea()
                VStack {
                    Spacer()
                        .frame(height: 10)
                    List {
                        Section {
                            NavigationLink(destination: Text("Point")) {
                                Text("ポイントの交換方法が分かりません")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                            NavigationLink(destination: Text("Kaiyaku")) {
                                Text("解約したいです")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                            NavigationLink(destination: Text("Mail")) {
                                Text("新着メール通知を解約したいです")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                        } header: {
                            Text("よくある質問")
                                .font(.system(size: 17))
                                .foregroundColor(.black)
                                .bold()
                        }
                    }
                    .listStyle(PlainListStyle())
                    .frame(height: 300)
                    
                    Spacer()
                    
                    List {
                        Section {
                            NavigationLink(destination: Text("Login")) {
                                Text("会員･ログイン")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                            NavigationLink(destination: Text("Setting")) {
                                Text("操作方法")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                            NavigationLink(destination: Text("Point")) {
                                Text("ポイント")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                            NavigationLink(destination: Text("Other")) {
                                Text("その他")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                        } header: {
                            Text("ご利用方法について")
                                .font(.system(size: 17))
                                .foregroundColor(.black)
                                .bold()
                            
                        }
                    }
                    .listStyle(PlainListStyle())
                    .frame(height: 260)
                    
                    List {
                        Section {
                            NavigationLink(destination: StretchView()) {
                                Text("ストレッチ")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                            NavigationLink(destination: Text("脳トレ")) {
                                Text("脳トレ")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                            NavigationLink(destination: Text("コラム")) {
                                Text("コラム")
                                    .font(.system(size: 17, design: .default))
                            }
                            .frame(height: 40)
                            
                            NavigationLink(destination: Text("日常タスク")) {
                                Text("日常タスク")
                                    .font(.system(size: 17, design: .default))
                            }
                            
                            
                        } header: {
                            Text("サービスについて")
                                .font(.system(size: 17))
                                .foregroundColor(.black)
                                .bold()
                        }
                    }
                    .listStyle(PlainListStyle())
                    .frame(height: 400)
                    
                }
                .navigationBarTitle("ヘルプ", displayMode: .inline)
                
            }
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
