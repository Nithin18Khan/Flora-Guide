//
//  WelcomeScreenView.swift
//  Flora Guide
//
//  Created by Nithin Khan on 10/05/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        ZStack {
            Image("img_main")
                .resizable()
                .overlay(LinearGradient(colors: [Color.black.opacity(0.45), Color.black.opacity(0.9)], startPoint: .topLeading, endPoint: .bottomLeading))
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Image("logo")
                Spacer()
                Spacer()
                Spacer()
                
                Text("Make Your")
                    .font(.title)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                //                    .opacity(0.50)
                Text("Grenner House")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                Text("Decorate your house to make \n it look greener")
                    .foregroundColor(Color.white.opacity(0.7))
                    .padding(.vertical, 8)
                Spacer()
                
                HStack {
                    Spacer()
                    NextButton()
                    
                }
            }
            .padding()
        }
    }
}


struct NextButton: View {
    var body: some View {
        HStack{
            Text("Next")
                .font(.system(size: 20))
                .fontWeight(.semibold)
            Image(systemName: "chevron.forward")
        }
        .foregroundColor(Color("Primary"))
        .padding()
        .background(Color.white)
        .cornerRadius(50)
    }
}


struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
