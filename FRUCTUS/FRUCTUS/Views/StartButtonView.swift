//
//  StartButtonView.swift
//  FRUCTUS
//
//  Created by Admin on 21/12/22.
//

import SwiftUI



struct StartButtonView: View {
    // MARK: Propertys
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    //MARK: Body
    var body: some View {
       Button(action: {
           isOnboarding = false
           print("Exit the oboarding")
       }, label: {
           Text("Start")
           Image(systemName: "arrow.right.circle")
               .imageScale(.large)
               
       }) // Button
       .accentColor(Color.white)
       .padding(.horizontal, 16)
       .padding(.vertical, 10)
       .background(
        Capsule().strokeBorder(Color.white , lineWidth: 1.25)
       )
    }
}

//MARK: Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
