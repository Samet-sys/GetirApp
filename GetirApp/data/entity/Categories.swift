//
//  Categories.swift
//  GetirApp
//
//  Created by Samet Alkan on 14.02.2024.
//

import Foundation

class Categories{
    var id:Int?
    var resim:String?
    var name:String?
    
    init(id: Int, image: String, name:String) {
        self.id = id
        self.resim = image
        self.name = name
    }
}
