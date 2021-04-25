//
//  LandmarkRow.swift
//  LandmarksTutorial
//
//  Created by Alex Python on 4/24/21.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .padding()
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
                    .padding()
                    .foregroundColor(.black)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
