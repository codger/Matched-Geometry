//
//  Sample 1.swift
//  Matched Geometry
//
//  Created by John James Retina on 7/30/20.
//

import SwiftUI

struct Sample1: View {
    
    @Namespace var namespace
    @State private var isSwap: Bool = true

    var body: some View {
        HStack {
            if isSwap {
                Text("2").font(.title)
                .matchedGeometryEffect(id: "pair1", in: namespace)
                
                Button("Swap") { withAnimation(.easeInOut(duration: 1.0)) { isSwap.toggle() } }
                
                Text("3").font(.title)
                .matchedGeometryEffect(id: "pair2", in: namespace)
            
            }

            else {
                Text("3").font(.title)
                .matchedGeometryEffect(id: "pair2", in: namespace)
                
                Button("Swap") { withAnimation(.easeInOut(duration: 1.0)) { isSwap.toggle() } }
                
                Text("2").font(.title)
                .matchedGeometryEffect(id: "pair1", in: namespace)
            }
        }
        
    }
}

struct Sample_1_Previews: PreviewProvider {
    static var previews: some View {
        Sample1()
    }
}
