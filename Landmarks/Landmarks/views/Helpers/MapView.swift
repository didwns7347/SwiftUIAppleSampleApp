//
//  MapView.swift
//  Landmarks
//
//  Created by yangjs on 2023/03/24.
//

import SwiftUI
import MapKit
struct MapView: View {
    
    /**
     @State -> 값의 수정에 따라 뷰를 자동갱신함. propertyWrapper
     */
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
    
    private func setRegion(_ coordinate : CLLocationCoordinate2D){
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
