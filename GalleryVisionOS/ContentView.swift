//
//  ContentView.swift
//  GalleryVisionOS
//
//  Created by Kuti Gbolahan on 05/06/2025.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, worldrrr!")
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
