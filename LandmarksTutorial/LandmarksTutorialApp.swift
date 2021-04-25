//
//  LandmarksTutorialApp.swift
//  LandmarksTutorial
//
//  Created by Alex Python on 4/24/21.
//

import SwiftUI

@main
struct LandmarksTutorialApp: App {
    @StateObject private var modelData: ModelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environmentObject(modelData)
        }
    }
}
