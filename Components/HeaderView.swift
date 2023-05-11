//
//  HeaderView.swift
//  Flora Guide
//
//  Created by Nithin Khan on 10/05/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Exclusive Plants")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("for your hobby")
                    .font(.title)
            }
            .foregroundColor(Color("Primary"))
            Spacer()
            Image("Profile")
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(50)
        }
    }
}

