//
//  FruitCardView.swift
//  FRUCTUS
//
//  Created by Admin on 21/12/22.
//

import SwiftUI

struct FruitCardView: View {
    
//    MARK: Propertys
    @State private var isAnimating : Bool = false
    var fruit : Fruit
    
    
//    MARK: Body
    var body: some View {
        
        ZStack {
            VStack {
                // Card Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0 , opacity: 0.2), radius: 8 , x: 6 , y: 12)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Card Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 2, x: 2, y: 2)
                
                // Card Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .font(.title3)
                    .fontWeight(.light)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.top, 8)
                    .frame(maxWidth: 480)
                
                // Start Button
                StartButtonView()
                    .padding(.top, 8)
            }// VStack
        } // ZStack
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal , 20)
        .onAppear{
            DispatchQueue.main.async {
                withAnimation(.easeOut(duration: 1)){
                    isAnimating = true
                }
            }
            
        }.onDisappear{
            isAnimating = false
        }
        
    }
}

//    MARK: Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
    }
}
