//
//  whatWeDo.swift
//  login_page
//
//  Created by Harsh Mishra on 10/03/23.
//

import SwiftUI

struct whatWeDo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15){
          Spacer()
            Image("excercise").resizable().aspectRatio( contentMode: .fit).frame(width: 200,height: 200).offset(x:60)
            Text("Excercise").font(.title).bold().padding(.top)
            
            HStack(spacing:15){
                
                HStack{
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    VStack{
                        Text("60 kg").font(.title2)
                        Text("Weight").font(.title3)
                    }.bold()
                }.padding()
                    HStack{
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                        VStack{
                            Text("10").font(.title2)
                            Text("Reps").font(.title3)
                        }.bold()
                    }.padding()
                
                HStack{
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    VStack{
                        Text("4").font(.title2)
                        Text("Sets").font(.title3)
                    }.bold()
                }.padding(.top).padding(.bottom).padding(.trailing)
            }.background(Color.gray.opacity(0.2)).cornerRadius(15)
            
            Text("Muscle Group").font(.title).bold().padding(.top)
            HStack{
                
                Button(action:{}) {
                    Text("Quadriceps").foregroundColor(.indigo).font(.title3).padding()
                }.background(Color.gray.opacity(0.2)).cornerRadius(15)
                
                Button(action:{}) {
                    Text("Biceps triceps").foregroundColor(.indigo).font(.title3).padding()
                }.background(Color.gray.opacity(0.2)).cornerRadius(15)
                
            }
            
            Text("History").font(.title).bold().padding(.top)
            
            HStack(spacing: 15){
                HStack{
                    Button(action:{})
                    {
                        Text("54").font(.title3).foregroundColor(.indigo).bold().padding()
                    }.background(Color.gray.opacity(0.2)).cornerRadius(15)
                    VStack{
                        Text("Completed Sets")
                        Text("2 per weeks")
                        
                    }.font(.system(size: 12,weight: .bold))
                }
                HStack{
                    Button(action:{})
                    {
                        Text("55").foregroundColor(.indigo).font(.title3).bold().padding()
                    }.background(Color.gray.opacity(0.2)).cornerRadius(15)
                    VStack{
                        Text("Average Weights")
                        Text("+10%")
                        
                    }.font(.system(size: 12,weight: .bold))
                }
            }


            Spacer()
        }.padding()
    }
}

struct whatWeDo_Previews: PreviewProvider {
    static var previews: some View {
        whatWeDo()
    }
}
