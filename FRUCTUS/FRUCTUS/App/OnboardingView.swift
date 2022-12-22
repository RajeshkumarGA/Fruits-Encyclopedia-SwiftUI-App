//
//  OnboardingView.swift
//  FRUCTUS
//
//  Created by Admin on 21/12/22.
//

import SwiftUI

struct OnboardingView: View {
//    MARK: Propertys
    var fruits : [Fruit] = fruitsData
    //    MARK: Body
    var body: some View {
        TabView{
            ForEach (0 ..< fruits.count) { item in
                FruitCardView(fruit: fruitsData[item])
            }
           
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//    MARK: Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
