//
//  SneakerView.swift
//  Sneaker Store
//
//  Created by Fabricio Banda on 16/09/25.
//

import SwiftUI

struct SneakerView: View {
    
    let sneaker : Sneaker
    
    var body: some View {
        
            HStack{
                
                VStack{
                    Image(sneaker.image)
                        .resizable()
                        .frame(width: 200,height: 200)
                        .rotation3DEffect(Angle(degrees: 180), axis: (x:0,y:180,z:0))

                }
                
                Spacer()
                
                VStack(alignment: .leading){
                    
                    Text(sneaker.model)
                        .font(.headline)
                        .bold()
                    
                    HStack{
                        Text("$\(sneaker.price)")
                            .font(.headline)
                     
                        ForEach(1...sneaker.rating,id:\.self){ _ in
                            Image(systemName: "star.fill")
                                .foregroundStyle(.yellow)
                                .font(.caption)
                        }
                        
                    }
                    
                    
    
                }
                
                Spacer()
                
            }
            .background(Color.gray.opacity(0.05),in:RoundedRectangle(cornerRadius: 15))
            .frame(width: UIScreen.main.bounds.width, height: 170)
            .overlay {
                VStack{
                    HStack{
                        Spacer()
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.red)
                            .font(.title2)
                            .opacity(sneaker.isFavorite ? 1:0)
                    }.padding()
                   
                    Spacer()
                }
            }
            
            
    }
}


#Preview {
    SneakerView(sneaker: sneakers[0])
}
