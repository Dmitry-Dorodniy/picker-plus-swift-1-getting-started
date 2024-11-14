//
//  PickerLimitations.swift
//  PickerPlus
//
//  Created by Alejandro Ulate on 10/2/23.
//

import SwiftUI

struct PickerLimitations: View {
    @State private var selectedItem = Vehicles.bike
    
    var body: some View {
        VStack {
            // TODO: Add visual example of vertical item limitation
            Text("SwiftUI Picker: Vertical Items")
            Picker("Types of Vehicles", selection: $selectedItem) {
            ForEach(Vehicles.allCases) { vehicle in
                   VStack {
            Text(vehicle.rawValue.capitalized)
                       vehicle.indicatorImage
                           .resizable()
                           .frame(width: 24, height: 24)
                           .scaledToFit()
                   }
               }
            }
            .pickerStyle(.segmented)
            .padding()
        }
    }
}

struct PickerLimitations_Previews: PreviewProvider {
    static var previews: some View {
        PickerLimitations()
    }
}
