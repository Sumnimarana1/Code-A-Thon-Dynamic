//
//  Todo.swift
//  UserSignin
//
//  Created by Rana,Sumnima on 10/21/18.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation
struct Todo{
    var name:String
    var tododetail:[tododetailItem]
    
    init(name:String, detail:[tododetailItem]){
        self.name = name;
        self.tododetail = detail;
    }
}

struct TodoDetail{
    static var tododetail:TodoDetail = TodoDetail()
    private init(){}
    private var settings:[Settings] = [Settings(name: "Bank Accounts", detail:[detailItem(name:"Visa"),detailItem(name:"Visa"),detailItem(name:"MasterCard"),detailItem(name:"Credit Card"),detailItem(name:"Debits")]),Settings(name: "Friends", detail:[detailItem(name:"John smith"),detailItem(name:"Nick Mansion"),detailItem(name:"Nelsy Ken"),detailItem(name:"Janny Smith"),detailItem(name:"Danielle Koonce")]),Settings(name: "Wallet", detail:[detailItem(name:"Visa"),detailItem(name:"My Money"),detailItem(name:"Manage Money"),detailItem(name:"Send to bank")])]
    var selectedSettingIndex:Int = -1
    mutating func add(setting:Settings){
        settings.append(setting)
    }
    func numOfsettings()->Int {
        return settings.count
    }
    subscript(index:Int) -> Settings{
        return settings[index]
    }
    mutating func setSelectedSettingIndex(_ index: Int) ->
        Void {
            selectedSettingIndex = index
            
    }
    mutating func selectedSetting() -> Settings{
        return settings[selectedSettingIndex]
    }
    mutating func addMenuItemToSelectedRestaurant(_ detailItem: detailItem){
        settings[selectedSettingIndex].detail.append(detailItem)
    }
    
}
