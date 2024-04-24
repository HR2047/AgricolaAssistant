//
//  ContentView.swift
//  agricola_assistant_mock
//
//  Created by fukuda keishi on 2024/04/11.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var tileColors: [[Color]] = [
            [.brown, .brown, .green],
            [.green, .green, .green],
            [.green, .green, .green],
            [.green, .green, .green],
            [.green, .green, .green]
        ]
    let tile_space: CGFloat = 10 // CGFloat型の定数として宣言
    var body: some View {
        VStack {
            //            Image(systemName: "globe")
            //                .imageScale(.large)
            //                .foregroundStyle(.tint)
            //            Text("Hello, world!")
            //            Rectangle()
            //                .foregroundColor(.green)
            //                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            //
            
            HStack{
                Button("history") {
                    //                    count += 1
                }
                
                Spacer()
                
                Menu("menu") {
                    Button { } label: { Text("convert resources") }
                    Button { } label: { Text("newgame") }
                    Button { } label: { Text("種まき") }
                    Button { } label: { Text("収穫") }
                    Button { } label: { Text("食事") }
                    Button { } label: { Text("繁殖") }
                    Button { } label: { Text("柵") }
                    Button { } label: { Text("うまや") }
                    
                }
            }
            .padding()
            
            Spacer()
            
            VStack{
                HStack{
                    CustomResourcePanel(resourse_name: "tree.fill", resourse_color: .brown, resourse_type: WOOD)
                    CustomResourcePanel(resourse_name: "placeholdertext.fill", resourse_color: .brown, resourse_type: CLAY)
                    CustomResourcePanel(resourse_name: "pentagon.fill", resourse_color: .gray, resourse_type: STONE)
                    CustomResourcePanel(resourse_name: "", resourse_color: .brown, resourse_type: REED)
                }
                
                HStack{
                    CustomResourcePanel(resourse_name: "", resourse_color: .brown, resourse_type: GRAIN)
                    CustomResourcePanel(resourse_name: "carrot.fill", resourse_color: .orange, resourse_type: VEGETABLE)
                    CustomResourcePanel(resourse_name: "fork.knife.circle.fill", resourse_color: .yellow, resourse_type: FOOD)
                }
            }
            
            Spacer()
            
            HStack(spacing: tile_space){
                CustomRectangle(rectangle_color: $tileColors[0][0])
                CustomRectangle(rectangle_color: $tileColors[0][1])
                CustomRectangle(rectangle_color: $tileColors[0][2])
            }
            
            HStack(spacing: tile_space) {
                CustomRectangle(rectangle_color: $tileColors[1][0])
                CustomRectangle(rectangle_color: $tileColors[1][1])
                CustomRectangle(rectangle_color: $tileColors[1][2])
            }
            
            HStack(spacing: tile_space) {
                CustomRectangle(rectangle_color: $tileColors[2][0])
                CustomRectangle(rectangle_color: $tileColors[2][1])
                CustomRectangle(rectangle_color: $tileColors[2][2])
            }
            
            HStack(spacing: tile_space) {
                CustomRectangle(rectangle_color: $tileColors[3][0])
                CustomRectangle(rectangle_color: $tileColors[3][1])
                CustomRectangle(rectangle_color: $tileColors[3][2])
            }
            
            HStack(spacing: tile_space) {
                CustomRectangle(rectangle_color: $tileColors[4][0])
                CustomRectangle(rectangle_color: $tileColors[4][1])
                CustomRectangle(rectangle_color: $tileColors[4][2])
            }
            
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
