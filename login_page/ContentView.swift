//
//  ContentView.swift
//  login_page
//
//  Created by Harsh Mishra on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
       @State private var password: String = ""
    @Environment(\.openURL) var openURL
    var body: some View {
       

        ZStack{
            VStack {
                
               
                Image("girl").resizable().aspectRatio(contentMode:.fit).padding(.bottom).cornerRadius(15).foregroundColor(.black)
                    
                
                Text("Login").font(.title).fontWeight(.bold).foregroundColor(.indigo).padding(.trailing,280)
                
//                Spacer(minLength: 20)
                   
                    
            
                VStack{
                    // 3. Email field
//                    TextField("Email", text: $username).border(.linearGradient(<#T##gradient: Gradient##Gradient#>, startPoint: <#T##UnitPoint#>, endPoint: <#T##UnitPoint#>), width: <#T##CGFloat#>)

                                // 4. Password field
//                                SecureField("Password", text: $password)
                    Form {
                        Text("@").font(.title2)+Text(" Email ID")
                    }.fontWeight(.light)
                     Spacer(minLength: -1)
                    Form {
                        HStack{Text(Image(systemName: "lock")).fontWeight(.light)+Text(" Password").fontWeight(.light)
                            Spacer()
                            Text("[Forget?](https://example.com)").fontWeight(.bold)
                        }
                    }
                }
                
                Button(action: {
                        print("log in bin tapped")
                }) {
                    Text("Login")
                      .frame(minWidth: 0, maxWidth: .infinity)
                      .font(.system(size: 18))
                      .padding()
                      .foregroundColor(.white)
                 }.background(Color.indigo)
                  .cornerRadius(15)
//                Button("Login") {
//                    openURL(URL(string: "https://www.youtube.com")!)
//
//                }.background(Color.indigo).border(Color.purple, width: 0)
                Text("Ok, login with...")
                HStack{

                    Button {
                        print("Google button was tapped")
                    } label: {
                        Image("igoogle").resizable().aspectRatio(contentMode: .fill).frame(width: 50, height: 50)
                    }
                    Spacer()
                    Button {
                        print("Facebook button was tapped")
                    } label: {
                        Image("facebook").resizable().aspectRatio(contentMode: .fill).frame(width: 50, height: 50)
                        
                    }
                    Spacer()
                    Button {
                        print("apple button was tapped")
                    } label: {
                        Image( "apple").resizable().aspectRatio(contentMode: .fill).frame(width: 50, height: 50)
                    }
                }.padding()
                Text("New to iThickLogistics?")+Text("Register").foregroundColor(.blue)
                    
            }.padding()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
