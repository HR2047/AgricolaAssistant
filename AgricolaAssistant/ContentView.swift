//
//  ContentView.swift
//  agricola_assistant_mock
//
//  Created by fukuda keishi on 2024/04/11.
//

import SwiftUI



struct Tile{
    var type: Int
    var resource_type: Int
    var num_of_contents: Int
}

struct ContentView: View {
    @State var count = 0
    @State var fence_mode = false
    @EnvironmentObject var resourceViewModel: ResourceViewModel
    
    //@State var tileColors: [[Color]]
    //@State var tileInfos: [[Tile]]
    
    @State var tileColors:[[Color]] = [
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

    
//    init() {
//            // tileColorsを新しい値で初期化する
//        _tileColors = State(initialValue: [
//                    [.brown, .brown, .green],
//                    [.green, .green, .green],
//                    [.green, .green, .green],
//                    [.green, .green, .green],
//                    [.green, .green, .green]
//        ])
//                    
//        tileColors[0][0] = .black
//        
//        _tileInfos = State(initialValue: [
//                    [.brown, .brown, .green],
//                    [.green, .green, .green],
//                    [.green, .green, .green],
//                    [.green, .green, .green],
//                    [.green, .green, .green]
//        ])
//                    
//        tileColors[0][0] = .black
//    }
    

    var body: some View {
        VStack {
            
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
                    CustomResourcePanel(resource_type: WOOD)
                        .environmentObject(self.resourceViewModel)
                    CustomResourcePanel(resource_type: CLAY)
                        .environmentObject(self.resourceViewModel)
                    CustomResourcePanel(resource_type: STONE)
                        .environmentObject(self.resourceViewModel)
                    CustomResourcePanel(resource_type: REED)
                        .environmentObject(self.resourceViewModel)
                }
                
                HStack{
                    CustomResourcePanel(resource_type: GRAIN)
                        .environmentObject(self.resourceViewModel)
                    CustomResourcePanel(resource_type: VEGETABLE)
                        .environmentObject(self.resourceViewModel)
                    CustomResourcePanel(resource_type: FOOD)
                        .environmentObject(self.resourceViewModel)
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
        .environmentObject(ResourceViewModel())
}
