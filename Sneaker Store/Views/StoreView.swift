//
//  StoreView.swift
//  Sneaker Store
//
//  Created by Fabricio Banda on 16/09/25.
//

import SwiftUI

struct StoreView: View {
    
    @State private var sneakersStore:[Sneaker] = sneakers
    @State private var searchText:String = ""

    
    var body: some View {
        NavigationStack{
            VStack{
                
                List {
                    ForEach(sneakersStore.filter{searchText.isEmpty ? true : $0.model.contains(searchText)}) { sneaker in 
                        
                        ZStack{
                            
                            NavigationLink {
                                DetailSneakerView(sneaker: sneaker)
                            } label: {
                                EmptyView()
                            }.opacity(0)
                            
                            SneakerView(sneaker:sneaker)
                                .padding(.bottom)
                                .contextMenu {
                                    Button{
                                        addFavorite(sneaker: sneaker)
                                    }label:{
                                        Label("Add Favorites", systemImage: "heart")
                                    }
                                }
                            
                        }  .listRowSeparator(.hidden)
                       
                        
                    }.onDelete { indexSet in
                        self.sneakersStore.remove(atOffsets: indexSet)
                    }
                }
                .listStyle(.plain)
                .searchable(text: $searchText, placement: .navigationBarDrawer, prompt: "Search Sneaker")
            }
            .navigationTitle("Nike Store")
        }
    }
    
    
    private func addFavorite(sneaker:Sneaker){
        
        guard let index = sneakersStore.firstIndex(where: {$0.id == sneaker.id}) else {return}
        
        sneakersStore[index].isFavorite.toggle()
        
    }
    

}

#Preview {
    StoreView()
}
