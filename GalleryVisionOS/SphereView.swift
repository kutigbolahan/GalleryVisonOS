//
//  SphereView.swift
//  GalleryVisionOS
//
//  Created by Kuti Gbolahan on 05/06/2025.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SphereView: View {
    var scale = false
    var body: some View {
        RealityView{content in
            let model =
            ModelEntity(mesh:.generateSphere(radius: 0.1),
            materials: [SimpleMaterial(color: .white, isMetallic: true)])
            content.add(model)
        } update: { content in
            
            if let model = content.entities.first {
                model.transform.scale = scale ?[1.2,1.2,1.2] : [1.0,1.0,1.0]
            }
        }
    }
}

#Preview {
    SphereView()
}
