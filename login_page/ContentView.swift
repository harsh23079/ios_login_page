//
//  ContentView.swift
//  login_page
//
//  Created by Harsh Mishra on 28/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isTapped = false
    @State private var email:String = ""
    @State private var password:String = ""
    @Environment(\.openURL) var openURL
    var body: some View {
        NavigationView{
            
            VStack{
            
            VStack(alignment: .leading, spacing:15){
                Spacer()
                Image("girl").resizable().aspectRatio(contentMode: .fit).offset(x:80)
//                Spacer()
                Text("Login").font(.largeTitle).foregroundColor(.indigo).fontWeight(.bold).padding()
                
                //            Text Field 1
                
                VStack(alignment:.leading,content:{
                    HStack(spacing:15){
                        
                        // leading Icon
                        Image(systemName: "envelope")
                            .foregroundColor(Color.gray)
                        
                        
                        TextField("Email", text: $email)
                        
                    }
                    // if tapped
                    .padding(.top,isTapped ? 1:0)
                    
                    
                })
                .padding(.vertical,12)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(20)
                
                //            Text Field 2
                VStack(alignment:.leading, content:{
                    HStack(){
                        Image(systemName: "lock").foregroundColor(.gray)
                        TextField("Password",text: $password)
                        Button("Forgot?"){
                            
                        }.foregroundColor(.indigo).fontWeight(.bold)
                    }
                    
                }).padding(.vertical,12).padding(.horizontal).background(Color.gray.opacity(0.1)).cornerRadius(20)
                
                //            Button
                
                Button("Login"){
                    
                }.foregroundColor(.black).padding(.vertical,15).frame(width: 360).background(.indigo).cornerRadius(15)
                
                //            Login with Text
                HStack(alignment:.center){
                    Spacer()
                    Text("Or,login with...").foregroundColor(.gray).bold()
                    Spacer()
                }
                
                //            Other Login Options
                
                HStack(alignment: .center, content:{
                    Spacer()
                    
                    //                for google button
                    
                    Button(action:{}){
                        Image("igoogle").resizable().frame(width: 30,height: 30).padding(.vertical,10).padding(.horizontal,30).background(RoundedRectangle(cornerRadius: 8.0).stroke(Color.gray.opacity(0.2)))
                        
                    }
                    Spacer()
                    
                    //                for facebook button
                    
                    Button(action:{}){
                        Image("facebook").resizable().frame(width: 30,height: 30).padding(.vertical,10).padding(.horizontal,30).background(RoundedRectangle(cornerRadius: 8.0).stroke(Color.gray.opacity(0.2)))}
                    Spacer()
                    
                    //                For apple button
                    Button(action:{}){
                        Image("apple").resizable().frame(width: 30,height: 30).padding(.vertical,10).padding(.horizontal,30).background(RoundedRectangle(cornerRadius: 8.0).stroke(Color.gray.opacity(0.2)))}
                    
                    Spacer()
                    
                })
                
                HStack{
                    Spacer()
                    Text("New to iThickLogistcs?").fontWeight(.bold).font(.custom("hey", size: 15))
//                    Button("Register"){
//                        print("Hey")
                    NavigationLink("SignUp", destination: signUp()).foregroundColor(.indigo).bold()
                        
//                    }.fontWeight(.bold).foregroundColor(.indigo)
                    Spacer()
                }
                
                
            }.navigationTitle("Hey..!!").padding()
//            NavigationLink("SignUp", destination: signUp())
            }
        }.accentColor(Color.indigo)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
