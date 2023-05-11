//
//  CatogoryView.swift
//  Flora Guide
//
//  Created by Nithin Khan on 10/05/23.
//

import SwiftUI
var tabs = ["All", "Indoor", "Outdoor","Garden"]

struct CatogoryView: View {
    @State var selectedTab = tabs[0]
    @Namespace var animation
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    CatogoryButton(text: tab,selected: $selectedTab, animation: animation)
                }
            }
            .padding(.vertical, 24)
        }
    }
}


struct CatogoryButton: View {
    var  text: String
    @Binding var selected: String
    var animation: Namespace.ID
    var body: some View {
        
        Button(action: {
            withAnimation(.spring(),{
                selected = text
            })
        })
            {
            Text(text)
                .fontWeight(.medium)
                .foregroundColor(selected == text ? .white : .black)
                .padding()
                .padding(.horizontal)
                .background(ZStack {
                    if (selected == text)  {Color("Primary")
                            .cornerRadius(12)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                        
                    }
                })
                .shadow(color: Color.black.opacity(0.16), radius: 16, x: 4,y: 4)

        }
        
    }
}



struct CatogoryView_Previews: PreviewProvider {
    static var previews: some View {
        CatogoryView()
    }
}
