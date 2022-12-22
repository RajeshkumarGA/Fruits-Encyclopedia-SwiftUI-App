//
//  SettingsApplicatioRow.swift
//  FRUCTUS
//
//  Created by Admin on 22/12/22.
//

import SwiftUI

struct SettingsApplicatioRow: View {
    var name : String
    var content : String? = nil
    var linkLabel : String?
    var linkDestination : String?
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    
                }else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsApplicatioRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingsApplicatioRow(name: "Developer", content: "Rajesh Kumar / Raj")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
