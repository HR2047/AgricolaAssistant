//
//  ChangeResourceNum.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/23.
//

import SwiftUI

struct ChangeResourceNum: View{
//    @Binding var count_2: Int
    var resourse_name: String
    var resourse_color: Color
    var body: some View {
        HStack{
            Spacer()
            
            VStack{
                
                Button("-1"){
    //                count_2 -= 10
                }
                Button("-5"){
    //                count_2 -= 10
                }
                Button("-10"){
    //                count_2 -= 10
                }
            }
            
            Spacer()
            ZStack {
                Image(systemName: resourse_name)
                    .foregroundColor(resourse_color)
                    .scaleEffect(2)
                
                Text("0")
                
                
            }
            
            Spacer()
            
            VStack{
                Spacer()
                Button("+1"){
    //                count_2 -= 10
                }
                Spacer()
                Button("+5"){
    //                count_2 -= 10
                }
                Spacer()
                Button("+10"){
    //                count_2 -= 10
                }
                Spacer()
            }
            
            Spacer()
        }
        .font(.title)
        .padding()
    }
}

#Preview {
    ContentView()
}
