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
    var name: String = ""
    var id: Int = -1
    var category: String = ""
    var city: String = "N/A"
    var state: String = "N/A"
    var isFeatured: Bool = false
    var isFavorite: Bool = false
    var park: String = "N/A"
    var description: String = ""
    
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
