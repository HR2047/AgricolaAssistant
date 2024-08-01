//
//  ChangeResourceNum.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/23.
//

import SwiftUI

struct ChangeResourceNum: View{
//    @Binding var count_2: Int
    @EnvironmentObject var resourceViewModel: ResourceViewModel
    var resource_type: Int
    var body: some View {
        let resource_imgname = resourcedataList[resource_type].imgname
        let resource_color = resourcedataList[resource_type].color
        let resource_name = resourcedataList[resource_type].name
        
        HStack{
            Spacer()
            
            VStack{
                
                Button("-1"){
                    resourceViewModel.increaseResourceNum(for: resource_name, by: -1)
                }
                Button("-5"){
                    resourceViewModel.increaseResourceNum(for: resource_name, by: -5)
                }
                Button("-10"){
                    resourceViewModel.increaseResourceNum(for: resource_name, by: -10)
                }
            }
            
            Spacer()
            ZStack {
                Image(systemName: resource_imgname)
                    .foregroundColor(resource_color)
                    .scaleEffect(2)
                
                if let index = resourceViewModel.index(for: resource_name) {
                    Text("\(resourceViewModel.resources[index].num)")
                } else {
                    Text("Resource not found")
                }
                
                
            }
            
            Spacer()
            
            VStack{
                Button("+1"){
                    resourceViewModel.increaseResourceNum(for: resource_name, by: 1)
                }
                Button("+5"){
                    resourceViewModel.increaseResourceNum(for: resource_name, by: 5)
                }
                Button("+10"){
                    resourceViewModel.increaseResourceNum(for: resource_name, by: 10)
                }
            }
            
            Spacer()
        }
        .font(.title)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ResourceViewModel())
    }
}
