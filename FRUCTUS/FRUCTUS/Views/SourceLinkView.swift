//
//  SourceLinkView.swift
//  FRUCTUS
//
//  Created by Admin on 21/12/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipadia", destination: URL(string: "https://wikipadia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
