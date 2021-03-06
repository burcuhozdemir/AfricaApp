//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Computer on 28.10.2021.
//

import SwiftUI

struct AnimalDetailView: View {
    //MARK: - PROPERTIES
    let animal: Animal
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 20){
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //GALLERY
                Group(){
                    HeadingView(headerImage: "photo.on.rectangle.angled", headerText: "Wilderness in Pictures")
                    InsertGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                //FACTS
                Group(){
                    HeadingView(headerImage: "questionmark.circle", headerText: "Did you know?")
                    InsertFactView(animal: animal)
                }
                .padding(.horizontal)
                
                //DESCRIPTION
                Group{
                    HeadingView(headerImage: "info.circle", headerText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                //MAP
                Group{
                    HeadingView(headerImage: "map", headerText: "National Parks")
                    InsertMapView()
                }
                .padding(.horizontal)
                
                //LINK
                Group{
                    HeadingView(headerImage: "books.vertical", headerText: "Learn More")
                    ExternalWeblinkView(animal: animal)
                }
                
            }//: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//: SCROLL
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }
    }
}
