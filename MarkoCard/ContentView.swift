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
            Color(.systemYellow)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("img1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.black, lineWidth: 1))
                    .shadow(radius: 7)
                Text("Marko Jovanov")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.title3)
                Divider()
                InfoView(text: "078 447 396", imageName: "phone.fill")
                Divider()
                InfoView(text: "marko.jovanov15@hotmail.com", imageName: "envelope.fill")
                Divider()
                InfoView(text: "www.linkedin.com/in/marko-jovanov", imageName: "link.circle.fill")
                Divider()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

