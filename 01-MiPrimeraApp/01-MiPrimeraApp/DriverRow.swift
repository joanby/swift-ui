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
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .padding(.leading, 10)
            
            Text(driver.name).font(.largeTitle)
            
            Spacer()
        }
    }
}

#if DEBUG
struct DriverRow_Previews : PreviewProvider {
    static var previews: some View {
        VStack {
            
            DriverRow(driver: drivers[0]).previewLayout(.fixed(width: 450, height: 100))
            DriverRow(driver: drivers[1]).previewLayout(.fixed(width: 450, height: 100))
            DriverRow(driver: drivers[2]).previewLayout(.fixed(width: 450, height: 100))
            DriverRow(driver: drivers[3]).previewLayout(.fixed(width: 450, height: 100))
        }
        
    }
}
#endif
