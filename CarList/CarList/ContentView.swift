//
//  ContentView.swift
//  CarList
//
//  Created by JIHYE SEOK on 4/17/24.
//

import SwiftUI

protocol CarDescriptionProtocol {
    var brand: String { get }
    var modelName: String { get }
    var year: Int { get }
    
    func getDetails() -> String
}

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List {
                Section(header: Text("Electronic Car")) {
                    ForEach(cars.filter { $0 is ElectricCar}) { car in
                        NavigationLink(destination: CarDetailView(car: car)) {
                            Text(car.modelName)
                        }
                    }
                }
                Section(header: Text("Oil Car")) {
                    ForEach(cars.filter { $0 is OilCar}) { car in
                        NavigationLink(destination: CarDetailView(car: car)) {
                            Text(car.modelName)
                        }
                    }
                }
                Section(header: Text("Hybrid Car")) {
                    ForEach(cars.filter { $0 is HybridCar}) { car in
                        NavigationLink(destination: CarDetailView(car: car)) {
                            Text(car.modelName)
                        }
                    }
                }
            }
            .navigationTitle("Car List")
        }
        
    }
}

#Preview {
    ContentView()
}
