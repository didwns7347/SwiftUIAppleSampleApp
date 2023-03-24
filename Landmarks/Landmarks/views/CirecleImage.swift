//
//  CirecleImage.swift
//  Landmarks
//
//  Created by yangjs on 2023/03/24.
//

import SwiftUI

struct CirecleImage: View {
    var body: some View {
        Image("turtlerock")
            .resizable()
            .frame(width: 300,height: 300)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CirecleImage_Previews: PreviewProvider {
    static var previews: some View {
        CirecleImage()
    }
}
