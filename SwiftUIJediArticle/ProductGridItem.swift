//
//  ProductGridItem.swift
//  SwiftUIJediArticle
//
//  Created by Mina Abdelfady on 03/11/2022.
//

import SwiftUI

struct ProductGridItem: View {
    var product: Product
    var body: some View {
        VStack{
            image
            productInfo
            priceAndAddToCart
        }.onTapGesture {
            triggerEvent(.openProduct(product))
        }
    }
    
    var image : some View {
        EmptyView()
    }
    
    var productInfo : some View {
        VStack(alignment: .leading){
            name
            description
        }
    }
    
    var name : some View {
        EmptyView()
    }
    
    var description : some View {
        EmptyView()
    }
    
    var priceAndAddToCart : some View {
        HStack(alignment: .top){
            price
            Spacer()
            addToCart
        }
    }
    
    var price : some View {
        EmptyView()
    }
    
    var addToCart : some View {
        Button {
            triggerEvent(.addToCart(product))
        } label: {
            EmptyView()
        }
    }
}

extension ProductGridItem {
    enum Event {
        case openProduct(Product)
        case addToCart(Product)
    }
    
    func triggerEvent(_ event: Event){
        //Pass Your Event to the Business layer
    }
}
