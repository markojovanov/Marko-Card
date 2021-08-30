//
//  ContentView.swift
//  MarkoCard
//
//  Created by Marko Jovanov on 27.8.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .background(Color.white)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.black, lineWidth: 1))
                    .shadow(radius: 3)
                Text("Marko Jovanov")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.headline)
                Divider()
                InfoView(text: "078 447 396", imageName: "phone.fill")
                InfoView(text: "marko.jovanov15@hotmail.com", imageName: "envelope.fill")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

