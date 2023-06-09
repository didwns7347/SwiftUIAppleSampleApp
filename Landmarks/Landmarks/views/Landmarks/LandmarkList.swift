//
//  LandmarkList.swift
//  Landmarks
//
//  Created by yangjs on 2023/03/24.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData : ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks : [Landmark] {
        modelData.landmarks.filter{ landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks, id: \.id) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }.listStyle(.inset)
                .navigationTitle("Landmarks")
        }
        
    }
    /*
     리스트에 들어가는 데이터는 Identifiable data여야함.
     각 요소를 고유하게 식별하는 속성의 키 경로인 데이터 또는
     (\.id 속성으로 식별하겠다.)
     identifiable타입 체텍 모델이 identifiable프로토콜을 체택하며  id 파라메터 생략가능
     */
}

struct LandmarkList_Previews: PreviewProvider {
    
    
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .environmentObject(ModelData())
        }
    }
}
