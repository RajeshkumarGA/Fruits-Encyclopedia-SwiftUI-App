//
//  SettingsView.swift
//  FRUCTUS
//
//  Created by Admin on 21/12/22.
//

import SwiftUI

struct SettingsView: View {
//    MARK: Propertys
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    
//    MARK: Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack {
                    
//                    SECTION 1
                    GroupBox(label: SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(8)
                            Spacer()
                            Text("Most Fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are source of many esantial nutrients including potassium , dietary fiber, Vitamins and much more")
                                .font(.footnote)
                        }
                    }
                    
                    // SECTION 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush"), content: {
                        Divider().padding(.vertical,4)
                        Text("if you wish you can restart your application by toggle the swith in this box, That way it starts the on boarding process and you will see the welcome screen again")
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding){
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8 , style: .continuous)))
                    })
                    
                    // SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"), content: {
                        SettingsApplicatioRow(name: "Developer", content: "Rajesh / Raj")
                        SettingsApplicatioRow(name: "Designer", content: "Shilpa")
                        SettingsApplicatioRow(name: "Compatibility", content: "iOS 16")
                        SettingsApplicatioRow(name: "Website" , linkLabel: "Portfolio", linkDestination: "rajeshkumarga.github.io/")
                        SettingsApplicatioRow(name: "GitHub" , linkLabel: "Rajesh ", linkDestination: "github.com/RajeshkumarGA")
                        SettingsApplicatioRow(name: "SwiftUI", content: "4.0")
                        SettingsApplicatioRow(name: "Version", content: "1.1.0")
                        
                    })
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark.circle")
                        .fontWeight(.bold)
                })
                )
                .padding()
            }// Scrool
        }// Navigation
        
    }
}
//    MARK: Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
