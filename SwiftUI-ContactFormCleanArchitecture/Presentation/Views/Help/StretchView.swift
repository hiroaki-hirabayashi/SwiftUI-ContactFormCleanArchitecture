//
//  StretchView.swift
//  SwiftUI-ContactFormCleanArchitecture
//
//  Created by Hiroaki-Hirabayashi on 2022/01/04.
//

import SwiftUI

struct StretchView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.viewBackground.ignoresSafeArea()
            
            VStack {
                Spacer()
                    .frame(height: 10)
                List {
                    Section {
                        NavigationLink(destination: ReservationGuide()) {
                            Text("予約の方法が分かりません")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                        NavigationLink(destination: Text("カメラ")) {
                            Text("カメラをオフにしたいです")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                        NavigationLink(destination: Text("おすすめ")) {
                            Text("おすすめのレッスンを見たいです")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                    } header: {
                        Text("よくある質問")
                    }
                }
                .listStyle(PlainListStyle())
                
                Spacer()
                
                List {
                    Section {
                        NavigationLink(destination: Text("予約")) {
                            Text("予約方法が分かりません")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                        NavigationLink(destination: Text("カメラ")) {
                            Text("カメラをオフにしたいです")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                        NavigationLink(destination: Text("おすすめ")) {
                            Text("おすすめのレッスンを見たいです")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                        
                        
                        
                    } header: {
                        Text("予約について")
                    }
                }
                .listStyle(PlainListStyle())
                
                
                
                List {
                    Section {
                        NavigationLink(destination: Text("予約")) {
                            Text("予約方法が分かりません")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                        NavigationLink(destination: Text("カメラ")) {
                            Text("カメラをオフにしたいです")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                        NavigationLink(destination: Text("おすすめ")) {
                            Text("おすすめのレッスンを見たいです")
                                .font(.system(size: 17, design: .default))
                        }
                        .frame(height: 44)
                        
                    } header: {
                        Text("レッスン中の操作について")
                    }
                }
                .listStyle(PlainListStyle())
                
                
            }
            .navigationBarTitle("ストレッチ", displayMode: .inline)
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
}
struct StretchView_Previews: PreviewProvider {
    static var previews: some View {
        StretchView()
    }
}

