//
//  DriversList.swift
//  01-MiPrimeraApp
//
//  Created by Juan Gabriel Gomila Salas on 10/06/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import SwiftUI

struct DriversList : View {
    var body: some View {
        NavigationView{
            List(drivers) {
                driver in
                NavigationButton(destination: DriverDetail(driver: driver)) {
                    DriverRow(driver: driver)
                }
                }.navigationBarTitle(Text("Formula 1 - 2019"),
                                     displayMode: .large)
        }
    }
}

#if DEBUG
struct DriversList_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            DriversList()
                .previewDevice("iPhone XS Max")
                .environment(\.sizeCategory, .extraLarge)
                .previewDisplayName("XS Max - XXL")
            
            DriversList()
                .previewDevice("iPhone SE")
                .environment(\.sizeCategory, .extraLarge)
                .previewDisplayName("SE - XXL")
        }
    }
}
#endif
