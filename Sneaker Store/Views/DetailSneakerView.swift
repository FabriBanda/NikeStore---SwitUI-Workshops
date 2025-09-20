//
//  DetailSneakerView.swift
//  Sneaker Store
//
//  Created by Fabricio Banda on 16/09/25.
//

import SwiftUI

struct DetailSneakerView: View {
    
    @State private var addCart:Bool = false
    var sneaker:Sneaker
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading){
                
                Text("Nike")
                    .foregroundStyle(.secondary)
                
                Text(sneaker.model)
                    .font(.largeTitle)
                    .bold()
                
                VStack(alignment: .center){
                    Image(sneaker.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350,height: 350)
                        
                }
               
                
                Text("$\(sneaker.price)")
                    .font(.title)
                    .bold()
                
                Button{
                    withAnimation(.smooth(duration: 1)){
                        self.addCart.toggle()
                    }
                }label:{
                    HStack{
                        Spacer()
                        Text(self.addCart ? "Added to Cart":"Add to Cart")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .bold()
                            
                        Spacer()
                    }
                }
                .buttonStyle(.plain)
                    .padding()
                    .background(addCart ? Color.green:Color.red,
                                in:RoundedRectangle(cornerRadius: 40))
                    .padding()
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("Description")
                        .font(.title)
                        .bold()
                    
                    Text(sneaker.description)
                        .font(.system(size: 15))
                }
                
                Spacer()
                
            }.padding()
        }
    }
}

#Preview {
    DetailSneakerView(sneaker: sneakers[0])
}
