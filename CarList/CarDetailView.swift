//
//  CarDetailView.swift
//  CarList
//
//  Created by JIHYE SEOK on 4/17/24.
//

import SwiftUI

struct CarDetailView: View {
    let car: Car
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20) {
            Text(car.modelName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(car.getDetails())
                .font(.body)
        }
        .padding()
    }
}
