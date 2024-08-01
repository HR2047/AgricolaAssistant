//
//  AgricolaAssistantApp.swift
//  AgricolaAssistant
//
//  Created by 廣澤凜太郎 on 2024/04/17.
//

import SwiftUI

//絶対ここじゃない方がいいグローバル変数&マクロ定義

// 木・レンガ・葦・石・小麦・野菜・食料
let NOTHING = 0
let WOOD = 1
let CLAY = 2
let STONE = 3
let REED = 4
let GRAIN = 5
let VEGETABLE = 6
let FOOD = 7
// 羊・猪・牛
let SHEEP = 8
let BOAR = 9
let CATTLE = 10

let CHILD = 11

// 未使用の農場・家・畑・牧場
// let NOTHING = 0
let HOUSE = 1
let FARM = 2
let PASTURE = 3

// リソースを表す構造体
struct Resource: Identifiable {
    var id = UUID()          // 一意のID
    var name: String         // リソースの名前
    var num: Int             // リソースの数
}

struct ResourceData{
    var id: Int
    var name: String
    var imgname: String
    var color: Color
}

var resourcedataList = [
    ResourceData(id: NOTHING, name: "", imgname: "", color: .brown),
    ResourceData(id: WOOD, name: "wood", imgname: "tree.fill", color: .brown),
    ResourceData(id: CLAY, name: "clay", imgname: "placeholdertext.fill", color: .brown),
    ResourceData(id: STONE, name: "stone", imgname: "pentagon.fill", color: .gray),
    ResourceData(id: REED, name: "reed", imgname: "", color: .brown),
    ResourceData(id: GRAIN, name: "grain", imgname: "", color: .brown),
    ResourceData(id: VEGETABLE, name: "vegetable", imgname: "carrot.fill", color: .orange),
    ResourceData(id: FOOD, name: "food", imgname: "fork.knife.circle.fill", color: .yellow),
        
    ResourceData(id: SHEEP, name: "sheep", imgname: "tree.fill", color: .white),
    ResourceData(id: BOAR, name: "boar", imgname: "tree.fill", color: .black),
    ResourceData(id: CATTLE, name: "cattle", imgname: "tree.fill", color: .brown),
        
    ResourceData(id: CHILD, name: "child", imgname: "tree.fill", color: .white)
    ]

// リソースのリストを管理するクラス
class ResourceViewModel: ObservableObject {
    @Published var resources: [Resource] = [
        Resource(name: "", num: 0),
        Resource(name: "wood", num: 4),
        Resource(name: "clay", num: 2),
        Resource(name: "reed", num: 0),
        Resource(name: "stone", num: 0),
        Resource(name: "grain", num: 0),
        Resource(name: "vegetable", num: 0),
        Resource(name: "food", num: 0)
    ]
    
    func index(for resourceName: String) -> Int? {
        return resources.firstIndex { $0.name == resourceName }
    }
    
    func increaseResourceNum(for name: String, by amount: Int) {
        if let index = resources.firstIndex(where: { $0.name == name }) {
            resources[index].num += amount
        }
    }
}

//var resourceList =  [(name: "", num: 0),
//                     (name: "wood", num: 0),
//                     (name: "clay", num: 0),
//                     (name: "reed", num: 0),
//                     (name: "stone", num: 0),
//                     (name: "grain", num: 0),
//                     (name: "vegetable", num: 0),
//                     (name: "food", num: 0)]

@main
struct AgricolaAssistantApp: App {
    @StateObject private var resourceViewModel = ResourceViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(resourceViewModel)
        }
    }
}
