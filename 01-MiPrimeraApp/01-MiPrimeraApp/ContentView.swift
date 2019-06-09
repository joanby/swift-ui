//
//  ContentView.swift
//  01-MiPrimeraApp
//
//  Created by Juan Gabriel Gomila Salas on 03/06/2019.
//  Copyright © 2019 Frogames. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            Image("car_mercedes")
                .resizable()
                .frame(height: 230)
            
            Image("hamilton")
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
                .padding(.bottom, -55)
            
            Text("Lewis Hamilton")
                .font(.system(size: 45))
                .fontWeight(.bold)
            
            StatsRow(statKey: "Edad", statValue: "34")

            StatsRow(statKey: "Número", statValue: "44")

            StatsRow(statKey: "Origen", statValue: "Reino Unido")
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
