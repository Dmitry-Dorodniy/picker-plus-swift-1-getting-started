//
//  DefaultPickerExamples.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 10/2/23.
//

import SwiftUI

struct DefaultPickerExamples: View {
    @State private var ownedVehicles = [
        OwnedVehicles(color: .blue, vehicle: Vehicles.car),
        OwnedVehicles(color: .orange, vehicle: Vehicles.rocket)
    ]
    @State private var selectedItem = Vehicles.bike
    
    var body: some View {
        VStack {
            // TODO: Add simple Picker example
            
            // TODO: Add complex Picker example
            
            // TODO: Add segmented Picker example
            Text("SwiftUI Picker: Segmented")
            Picker("Types of Vehicles - Segmented", selection: $selectedItem) {
            ForEach(Vehicles.allCases) { vehicle in
            Text(vehicle.rawValue.capitalized)
               }
            }
            .pickerStyle(.segmented)
            .padding()
        }
    }
}

struct DefaultPickerExamples_Previews: PreviewProvider {
    static var previews: some View {
        DefaultPickerExamples()
    }
}
