//
//  FruitRowView.swift
//  FRUCTUS
//
//  Created by Admin on 21/12/22.
//

import SwiftUI

struct FruitRowView: View {
//    MARK: Propeertis
    var fruit : Fruit
//    MARK: Body
    var body: some View {
        HStack{
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100 , alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.25 ), radius: 4 , x: 4, y: 4)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 5){
                    Text(fruit.title)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(fruit.headline)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            
        }
        .padding(10)
    }
}

//    MARK: Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
