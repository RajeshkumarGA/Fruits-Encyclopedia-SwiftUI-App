//
//  SettingsLabelView.swift
//  FRUCTUS
//
//  Created by Admin on 22/12/22.
//

import SwiftUI

struct SettingsLabelView: View {
//    MARK: Propertyes
    var labelText : String
    var labelImage : String
    
//    MARK: Body
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

//    MARK: Preview
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
