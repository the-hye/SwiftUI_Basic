//
//  ListRow.swift
//  LazyStack
//
//  Created by JIHYE SEOK on 4/24/24.
//

import SwiftUI

struct ListRow: View {
    let id: Int
    let type: String
    
    init(id: Int, type: String) {
        self.id = id
        self.type = type
    }
    
    var body: some View {
        Text("\(type) \(id)").padding()
    }
}

#Preview {
    ListRow(id: 1, type: "Horizontal")
}
