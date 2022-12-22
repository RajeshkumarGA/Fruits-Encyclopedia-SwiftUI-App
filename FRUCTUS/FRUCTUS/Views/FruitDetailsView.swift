//
//  FruitDetailsView.swift
//  FRUCTUS
//
//  Created by Admin on 21/12/22.
//

import SwiftUI

struct FruitDetailsView: View {
//    MARK: Propertys
    var fruit : Fruit
    @State var isAnimating : Bool = false
    
//    MARK: Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
                    Image(fruit.image)
                        .resizable()
                        .scaledToFit()
                        .scaleEffect(isAnimating ? 1.0 : 0.5)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 10, x: 10,y: 10)
                    .padding(.vertical, 20)
                }
                .frame(height: 440)
                .onAppear(){
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimating = true
                    }
                }
                
                VStack(alignment: .center, spacing: 20){
                    
                    // Header
                   
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrition
                        FruitNutrientsView(fruit: fruit)
                        
                        //SubHeadline
                        Text("LEARN MORE ABOUT \(fruit.title)")
                            .textCase(.uppercase)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //Discription
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//VStack
                }//VStack
                .padding()
            }
            .edgesIgnoringSafeArea(.top)
            
        }// Navigationbar
        .navigationBarTitle("", displayMode: .inline)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//    MARK: Previiew
struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
           
    }
}
