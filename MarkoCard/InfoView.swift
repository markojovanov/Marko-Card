//
//  InfoView.swift
//  MarkoCard
//
//  Created by Marko Jovanov on 27.8.21.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.white)
            .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .shadow(radius: 7)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(.green)
                    Text(text)
                })
            .padding()
    }
    
    struct InfoView_Previews: PreviewProvider {
        static var previews: some View {
            InfoView(text: "Hello", imageName: "phone.fill")
                .previewLayout(.sizeThatFits)
        }
    }
}
