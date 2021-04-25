//
//  Landmark.swift
//  LandmarksTutorial
//
//  Created by Alex Python on 4/24/21.
//

import Foundation
import SwiftUI
import MapKit
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var category: String
    var city: String
    var state: String
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
