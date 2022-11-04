//
//  Product.swift
//  SwiftUIJediArticle
//
//  Created by Mina Abdelfady on 04/11/2022.
//

import Foundation

struct Product : Identifiable {
    var id : Int
    var name : String
    var description : String
    var orignalPrice : Float
    var salePrice : Float
    var imageUrl : String
}
