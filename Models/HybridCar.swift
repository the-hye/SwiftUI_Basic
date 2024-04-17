//
//  HybridCar.swift
//  CarList
//
//  Created by JIHYE SEOK on 4/17/24.
//

import Foundation

class HybridCar: Car {
    var fuelEfficiency: Double
    var isGasoline: Bool
    var autoLevel: Int
    
    init(brand: String, modelName: String, year: Int, doorCount: Int, weight: Double, height: Double, fuelEfficiency: Double, isGasoline: Bool, autoLevel: Int) {
        self.fuelEfficiency = fuelEfficiency
        self.isGasoline = isGasoline
        self.autoLevel = autoLevel
        super.init(brand: brand, modelName: modelName, year: year, doorCount: doorCount, weight: weight, height: height)
    }
}
