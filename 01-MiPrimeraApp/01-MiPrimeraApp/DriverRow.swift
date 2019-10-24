//
//  DriverRow.swift
//  01-MiPrimeraApp
//
//  Created by Juan Gabriel Gomila Salas on 10/06/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import SwiftUI

struct DriverRow : View {
    
    var driver: Driver
    
    var body: some View {
        HStack{
            Image(driver.imageName)
                .resizable().scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle()).background(Circle().foregroundColor(driver.team.color))
                .padding(.leading, 10)
            
            Text(driver.name).font(.largeTitle)
            .minimumScaleFactor(0.5)
            
            Spacer()
        }
    }
}

#if DEBUG
struct DriverRow_Previews : PreviewProvider {
    static var previews: some View {
        DriverRow(driver: drivers[7])
            .previewLayout(.fixed(width: 450, height: 100))
        
    }
}
#endif
