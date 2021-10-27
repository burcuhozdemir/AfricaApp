//
//  HeadingView.swift
//  Africa
//
//  Created by Computer on 28.10.2021.
//

import SwiftUI

struct HeadingView: View {
    //MARK: - PROPERTIES
    let headerImage: String
    let headerText: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headerImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headerText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headerImage: "photo.on.rectangle.angled", headerText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
