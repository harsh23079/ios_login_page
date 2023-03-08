//
//  signUp.swift
//  login_page
//
//  Created by Harsh Mishra on 07/03/23.
//

import SwiftUI

struct signUp: View {
    @State var email:String = ""
    @State var password:String = ""
    @State var name:String = ""
    @State var companyName:String = ""
    @State var isTapped:Bool = false
    var body: some View {
        VStack(alignment: .leading){
            Spacer()
            HStack{
                Spacer()
                Image("signup").resizable().aspectRatio(contentMode: .fit).frame(width: 200,height: 250)
                Spacer()
            }
           
            
            Text("Sign up").font(.largeTitle).foregroundColor(.indigo).fontWeight(.bold).padding()
            
            Spacer()
            
            //            For all image buttons
            
            HStack{
                Spacer()
                Button(action:{}){
                    Image("igoogle").resizable().frame(width: 30,height: 30).padding(.horizontal,30).padding(.vertical,10).background(RoundedRectangle(cornerRadius: 8.0).stroke(Color.indigo.opacity(0.2)))
                }
                Spacer()
                Button(action:{}){
                    Image("facebook").resizable().frame(width: 30,height: 30).padding(.vertical,10).padding(.horizontal,30).background(RoundedRectangle(cornerRadius: 8.0).stroke(Color.indigo.opacity(0.2)))
                }
                Spacer()
                Button(action:{}){
                    Image("apple").resizable().frame(width: 30,height: 30).padding(.vertical,10).padding(.horizontal,30).background(RoundedRectangle(cornerRadius: 8.0).stroke(Color.indigo.opacity(0.2)))
                    
                }
                
                Spacer()
            }
            
            //            For text bottom of button image
            
            Spacer()
            
            HStack(alignment: .center){
                Spacer()
                Text("Or, register with email...").foregroundColor(.gray).fontWeight(.bold)
                Spacer()
            }
            
            Spacer()
            
            //            For registeration
            VStack{
            //            form email id
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
            
            //            for password
            
            VStack(alignment: .leading, content: {
                HStack(spacing: 15){
                    Image(systemName: "lock").foregroundColor(.gray)
                    TextField("Password",text:$password)
                }.padding(.top,isTapped ? 1:0)
            }).padding(.vertical).padding(.horizontal,12).background(Color.gray.opacity(0.1)).cornerRadius(20)
            
            //            for name
            
            VStack(alignment: .leading) {
                HStack(spacing: 15) {
                    Image(systemName: "person").foregroundColor(.gray)
                    TextField("Name",text: $name)
                }.padding(.top,isTapped ? 1 : 0)
            }.padding(.vertical).padding(.horizontal,12).background(Color.gray.opacity(0.1)).cornerRadius(20)
            
            VStack(alignment: .leading, content: {
                HStack(spacing: 15) {
                    Image(systemName: "building.columns.circle") .foregroundColor(.gray)
                    TextField("Company Name",text: $companyName)
                }.padding(.top,isTapped ? 1 : 0)
            }).padding(.vertical).padding(.horizontal,12).background(Color.gray.opacity(0.1)).cornerRadius(20)
        }
            Spacer()
            
        }.padding()
    }
}

struct signUp_Previews: PreviewProvider {
    static var previews: some View {
        signUp()
    }
}
