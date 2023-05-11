//
//  HomeScreenView.swift
//  Flora Guide
//
//  Created by Nithin Khan on 10/05/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack{
            Color("Bg_color")
                .ignoresSafeArea()
            VStack {
                HeaderView()
                CatogoryView()
                
                SectionTitleView(title: "Recommended")
            }
            .padding()
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


