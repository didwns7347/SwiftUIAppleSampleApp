//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by yangjs on 2023/03/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark : Landmark
    var body: some View {
        HStack{
            landMark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landMark.name)
            Spacer()
            
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
//        LandmarkRow(landMark: Landmark(id: 1001, name: "Turtle Rock", park: "Joshua Tree National Park", state: "California", description: "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.", imageName: "turtlerock", coordinator: Landmark.Coordinates(latitude: 59.560551, longtitude:  -135.334571)))
        LandmarkRow(landMark: landmarks[0])
    }
}
