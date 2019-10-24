//
//  DetailView.swift
//  02-Ratings
//
//  Created by Juan Gabriel Gomila Salas on 04/07/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import SwiftUI

struct DetailView : View {

    @ObjectBinding var vgStore : VideogameStore


    @State var videogame : Videogame
    @Environment(\.isPresented) var isPresented
    
    var body: some View {
        List(){
            Section{
                VStack(alignment: .leading) {
                    DetailTitle(title: "Título")
                    TextField($videogame.title)
                }
            }
            
            Section{
                VStack(alignment: .leading){
                    DetailTitle(title: "Valoración")
                        HStack {
                            Spacer()
                            Text(String(repeating:"✭", count:Int(videogame.rating))).font(.title).foregroundColor(.yellow)
                            Spacer()
                        }
                    Slider(value: $videogame.rating, from: 1.0, through: 5.0, by: 1.0)
                }
            }
            
            Section{
                Toggle(isOn: $videogame.played){
                    if videogame.title == "" {
                        DetailTitle(title: "Has jugado")
                    } else {
                        DetailTitle(title: "Has jugado a \(videogame.title)")
                    }
                    
                }
            }
            
            Section{
                Button(action: {
                    //TODO: guardar información de vuelta
                    self.vgStore.AddVideogame(videogame: self.videogame)
                    
                    self.isPresented?.value = false
                }){
                    HStack {
                        Spacer()
                        DetailTitle(title: "Guardar")
                        Spacer()
                    }
                }
            }
        }.listStyle(.grouped)
    }
    
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        DetailView(vgStore: VideogameStore(), videogame: Videogame())
    }
}
#endif

struct DetailTitle : View {
    var title: String
    
    var body: some View {
        return Text(title).font(.subheadline)
            .foregroundColor(.gray)
    }
}
