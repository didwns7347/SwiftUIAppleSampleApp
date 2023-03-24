//
//  Landmark.swift
//  Landmarks
//
//  Created by yangjs on 2023/03/24.
//

import Foundation
import SwiftUI
import CoreLocation
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName : String
    var image : Image{
        Image(imageName)
    }
    
    private var coordinator : Coordinates
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinator.latitude,
            longitude: coordinator.longtitude
            )
    }
    
    struct Coordinates : Hashable , Codable{
        var latitude : Double
        var longtitude : Double
    }
}
