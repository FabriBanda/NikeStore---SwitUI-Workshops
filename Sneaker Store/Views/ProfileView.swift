//
//  FavoritesView.swift
//  Sneaker Store
//
//  Created by Fabricio Banda on 16/09/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Image("Me")
                    .resizable()
                    .scaledToFill( )
                    .frame(width: 250,height: 250)
                    .clipShape(Circle())
                
                Text("Fabricio Banda")
                    .font(.title2)
                    .bold()
                    .padding()
                
                    
                Component(title: "Email", text: "fabribanda@gmail.com", image: "envelope.fill", color: Color.indigo)
                        
                Component(title: "Phone", text: "8342516909", image: "phone.fill", color: Color.green)
                
                Component(title: "Size", text: "29.5", image: "shoeprints.fill", color: Color.blue)
                
                Spacer()
                
            }.navigationTitle("Profile")
        }
    }
}


struct Component:View {
    let title: String
    let text:String
    let image:String
    let color:Color
    var body: some View {
        
        HStack{
            Image(systemName: image)
                .foregroundStyle(color)
                .font(.title3)
                .padding()
            
            VStack(alignment: .leading){
                Text(title)
                    .font(.headline)
                Text(text)
                    .font(.body)
                
            }
            
            Spacer()
            
        }.padding(5)
    }
}



#Preview {
    ProfileView()
}
