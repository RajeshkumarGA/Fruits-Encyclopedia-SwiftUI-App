//
//  FruitNutrientsView.swift
//  FRUCTUS
//
//  Created by Admin on 21/12/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    
//    MARK: Prropertys
    var fruit : Fruit
//    var nutritions : [String]
    var nutrientsTitle : [String] = ["Energy","Suger","Fat","Protein","Vitamins","Minirals"]
    
//    MARK: Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional values per 100g"){
               
                ForEach(0..<nutrientsTitle.count , id: \.self){ item in
                    Divider().padding(.vertical, 2)
                    HStack(){
                        Group(){
                            Image(systemName: "info.circle")
                            Text(nutrientsTitle[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }.padding(.vertical, 5)
                }
            }
        }
        
    }
}

//    MARK: Prreviews
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
    }
}
