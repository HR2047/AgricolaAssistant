//
//  ContentView.swift
//  agricola_assistant_mock
//
//  Created by fukuda keishi on 2024/04/11.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    @State var fence_mode = true
    @State var tileColors: [[Color]] = [
            [.brown, .brown, .green],
            [.green, .green, .green],
            [.green, .green, .green],
            [.green, .green, .green],
            [.green, .green, .green]
        ]
    
    @State var vertical_fence: [[Bool]] = [
        [false, false, false, false],
        [false, false, false, false],
        [false, false, false, false],
        [false, false, false, false],
        [false, false, false, false]
    ]
    
    @State var horizontal_fence: [[Bool]] = [
        [false, false, false],
        [false, false, false],
        [false, false, false],
        [false, false, false],
        [false, false, false],
        [false, false, false]
    ]
    
    let tile_space: CGFloat = 10 // CGFloat型の定数として宣言
    let fence_space: CGFloat = 15
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
                    Button { fence_mode.toggle() } label: { Text("柵") }
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
            
            VStack(spacing: 0){
                
                HStack(spacing: fence_space){
                    CustomFence(showFence: $horizontal_fence[0][0], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[0][1], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[0][2], horizontal: true, fmode: fence_mode)
                }

                
                HStack(spacing: tile_space){
                    CustomFence(showFence: $vertical_fence[0][0], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[0][0], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[0][1], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[0][1], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[0][2], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[0][2], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[0][3], horizontal: false, fmode: fence_mode)
                }
                
                HStack(spacing: fence_space){
                    CustomFence(showFence: $horizontal_fence[1][0], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[1][1], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[1][2], horizontal: true, fmode: fence_mode)
                }
                
                HStack(spacing: tile_space) {
                    CustomFence(showFence: $vertical_fence[1][0], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[1][0], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[1][1], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[1][1], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[1][2], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[1][2], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[1][3], horizontal: false, fmode: fence_mode)
                }
                
                HStack(spacing: fence_space){
                    CustomFence(showFence: $horizontal_fence[2][0], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[2][1], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[2][2], horizontal: true, fmode: fence_mode)
                }
                
                HStack(spacing: tile_space) {
                    CustomFence(showFence: $vertical_fence[2][0], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[2][0], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[2][1], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[2][1], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[2][2], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[2][2], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[2][3], horizontal: false, fmode: fence_mode)
                }
                
                HStack(spacing: fence_space){
                    CustomFence(showFence: $horizontal_fence[3][0], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[3][1], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[3][2], horizontal: true, fmode: fence_mode)
                }
                
                HStack(spacing: tile_space) {
                    CustomFence(showFence: $vertical_fence[3][0], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[3][0], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[3][1], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[3][1], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[3][2], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[3][2], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[3][3], horizontal: false, fmode: fence_mode)
                }
                
                HStack(spacing: fence_space){
                    CustomFence(showFence: $horizontal_fence[4][0], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[4][1], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[4][2], horizontal: true, fmode: fence_mode)
                }
                
                HStack(spacing: tile_space) {
                    CustomFence(showFence: $vertical_fence[4][0], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[4][0], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[4][1], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[4][1], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[4][2], horizontal: false, fmode: fence_mode)
                    CustomRectangle(rectangle_color: $tileColors[4][2], fmode: fence_mode)
                    CustomFence(showFence: $vertical_fence[4][3], horizontal: false, fmode: fence_mode)
                }
                
                HStack(spacing: fence_space){
                    CustomFence(showFence: $horizontal_fence[5][0], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[5][1], horizontal: true, fmode: fence_mode)
                    CustomFence(showFence: $horizontal_fence[5][2], horizontal: true, fmode: fence_mode)
                }
            }
            
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
