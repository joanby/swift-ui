//
//  VideogamesList.swift
//  02-Ratings
//
//  Created by Juan Gabriel Gomila Salas on 18/07/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import SwiftUI

struct VideogamesList : View {
    
    @ObjectBinding var vgStore = VideogameStore()
    
    
    var body: some View {
        NavigationView{
            List{
                
                PresentationLink(destination: DetailView(vgStore: self.vgStore, videogame: Videogame())) {
                    Text("Añadir videojuego").foregroundColor(.blue)
                }
                
                ForEach(vgStore.videogames){ vg in
                    NavigationLink(destination:DetailView(vgStore: self.vgStore, videogame: vg)){
                        Text(vg.title)

                    }
                
                }
            }
        }
    }
}

#if DEBUG
struct VideogamesList_Previews : PreviewProvider {
    static var previews: some View {
        VideogamesList()
    }
}
#endif
