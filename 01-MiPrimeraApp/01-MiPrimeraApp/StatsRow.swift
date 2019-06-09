//
//  StatsRow.swift
//  01-MiPrimeraApp
//
//  Created by Juan Gabriel Gomila Salas on 09/06/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import SwiftUI

struct StatsRow : View {
    
    var statKey: String
    var statValue: String
    
    var body: some View {
       
        HStack(alignment: .center) {

            Text(statKey + ":")
                .font(.system(size: 35))
                .fontWeight(.bold)
                .padding(.leading, 40)
            
            Text(statValue)
                .font(.system(size: 30))
                .fontWeight(.ultraLight)
                .padding(.trailing, 40)
            
            Spacer()

        }
        
    }
}

#if DEBUG
struct StatsRow_Previews : PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "Sueldo", statValue: "20.000$")
    }
}
#endif
