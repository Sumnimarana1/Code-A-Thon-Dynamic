//
//  FoodCourt.swift
//  UserSignin
//
//  Created by Rana,Sumnima on 10/21/18.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation

struct Restaurant{
    var name:String
    var openingTime:Int
    var closingTime:Int
    //var menuItems:[MenuItem]
    //var menuItems = [MenuItem]()
    var menuItems:[MenuItem] = [MenuItem(name: "Chicken salad", cost:10,calories:700)]
    
    init(name:String, openingTime:Int, closingTime:Int){
        self.name = name;
        self.openingTime = openingTime
        self.closingTime = closingTime
    }
    
}

struct Settings{
    var name:String
    var detail:[detailItem]
    
    init(name:String, detail:[detailItem]){
        self.name = name;
        self.detail = detail;
    }
}

struct SettingDetail{
    static var settingdetail:SettingDetail = SettingDetail()
     private init(){}
    private var settings:[Settings] = [Settings(name: "Bank Accounts", detail:[detailItem(name:"Visa"),detailItem(name:"MasterCard"),detailItem(name:"American Express"),detailItem(name:"Discover"),detailItem(name:"Other")]),Settings(name: "Friends", detail:[detailItem(name:"John smith"),detailItem(name:"Sister"),detailItem(name:"Nelsy Ken"),detailItem(name:"Janny Smith"),detailItem(name:"Danielle Koonce")]),Settings(name: "Wallet", detail:[detailItem(name:"My Money"),detailItem(name:"Manage Money"),detailItem(name:"Send to bank")])]
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
struct FoodCourt{
    static var foodCourt:FoodCourt = FoodCourt()
    private init(){}
    private var restaurants:[Restaurant] = [Restaurant(name: "Applebees", openingTime:10,closingTime:12),Restaurant(name: "Carson", openingTime:10,closingTime:11)]
    
    var selectedRestaurantIndex:Int = -1
    mutating func add(restaurant:Restaurant){
        restaurants.append(restaurant)
    }
    // returns # of airlines
    func numOfRestaurants()->Int {
        return restaurants.count
    }
    subscript(index:Int) -> Restaurant{
        return restaurants[index]
    }
    mutating func setSelectedRestaurantIndex(_ index: Int) ->
        Void {
            selectedRestaurantIndex = index    }
    mutating func selectedRestaurant() -> Restaurant{
        return restaurants[selectedRestaurantIndex]
    }
    mutating func addMenuItemToSelectedRestaurant(_ menuItem: MenuItem){
        restaurants[selectedRestaurantIndex].menuItems.append(menuItem)
    }
    
    
}
