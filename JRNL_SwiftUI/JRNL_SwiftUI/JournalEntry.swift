//
//  JournalEntry.swift
//  JRNL_SwiftUI
//
//  Created by JIHYE SEOK on 5/28/24.
//

import Foundation
import SwiftUI
import UIKit

class JournalEntry: Identifiable {
    let id = UUID()
    let date: Date
    let rating: Int
    let entryTitle: String
    let entryBody: String
    let photoData: Data?
    let latitude: Double?
    let longitude: Double?
    
    init?(rating: Int, entryTitle: String, entryBody: String, photo: Image? = nil, latitude: Double? = nil, longitude: Double? = nil) {
        self.date = Date()
        self.rating = rating
        self.entryTitle = entryTitle
        self.entryBody = entryBody
        if let photo = photo {
            if let uiImage = photo.asUIImage() {
                self.photoData = uiImage.jpegData(compressionQuality: 1.0)
            } else {
                return nil
            }
        } else {
            self.photoData = nil
        }
        self.latitude = latitude
        self.longitude = longitude
    }
}

extension Image {
    // Image를 UIImage로 변환하는 helper 메서드
    func asUIImage() -> UIImage? {
        let controller = UIHostingController(rootView: self)
        let view = controller.view
        
        let targetSize = controller.view.intrinsicContentSize
        let format = UIGraphicsImageRendererFormat()
        format.scale = UIScreen.main.scale
        let renderer = UIGraphicsImageRenderer(size: targetSize, format: format)
        
        let image = renderer.image { _ in
            view?.drawHierarchy(in: CGRect(origin: .zero, size: targetSize), afterScreenUpdates: true)
        }
        return image
    }
}

struct SampleJournalEntryData {
    var journalEntries: [JournalEntry] = []
    
    mutating func createSampleJournalEntryData() {
        let photo1 = Image(systemName: "sun.max")
        let photo2 = Image(systemName: "cloud")
        let photo3 = Image(systemName: "cloud.sun")
        guard let journalEntry1 = JournalEntry(rating: 5, entryTitle: "Good",
                                               entryBody: "Today is good day", photo: photo1) else {
            fatalError("Unable to instantiate journalEntry1")
        }
        guard let journalEntry2 = JournalEntry(rating: 0, entryTitle: "Bad",
                                               entryBody: "Today is bad day", photo: photo2,
                                               latitude: 37.3318, longitude: -122.0312) else {
            fatalError("Unable to instantiate journalEntry2")
        }
        guard let journalEntry3 = JournalEntry(rating: 3, entryTitle: "Ok",
                                               entryBody: "Today is Ok day", photo: photo3) else {
            fatalError("Unable to instantiate journalEntry3")
        }
        
        self.journalEntries += [journalEntry1, journalEntry2, journalEntry3]
    }
}
