//
//  Sample 2.swift
//  Matched Geometry
//
//  Created by John James Retina on 7/30/20.
//

import SwiftUI

struct Sample2: View {
  
  @Namespace var namespace
  @State private var isSwap: Bool = true
  
  var body: some View {
    HStack {
      if isSwap {
        RoundedRectangle(cornerRadius: 10)
          .foregroundColor(Color.green)
          .frame(width: 60, height: 60)
          .matchedGeometryEffect(id: "pair1", in: namespace, properties: .size)
        
        Button("Swap") { withAnimation(.easeInOut(duration: 1.0)) { isSwap.toggle() } }
        
        Circle()
          .foregroundColor(Color.pink)
          .frame(width: 60, height: 60)
          .matchedGeometryEffect(id: "pair2", in: namespace, properties: .frame)
      }
      else {
        Circle()
          .foregroundColor(Color.pink)
          .frame(width: 30, height: 30)
          .matchedGeometryEffect(id: "pair2", in: namespace, properties: .frame)
        
        Button("Swap") { withAnimation(.easeInOut(duration: 1.0)) { isSwap.toggle() } }
        
        RoundedRectangle(cornerRadius: 10)
          .foregroundColor(Color.green)
          .frame(width: 30, height: 30)
          .matchedGeometryEffect(id: "pair1", in: namespace, properties: .size)
      }
    }
    
  }
}

struct Sample_2_Previews: PreviewProvider {
  static var previews: some View {
    Sample2()
  }
}
