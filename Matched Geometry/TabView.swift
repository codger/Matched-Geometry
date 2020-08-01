//
//  TabView.swift
//  Matched Geometry
//
//  Created by John James Retina on 7/30/20.
//

import SwiftUI

struct TabbedView: View {
  
  @State private var selectedTab = 0
  
  var body: some View {
    TabView(selection: $selectedTab) {
      Sample1()
        .onTapGesture {
          self.selectedTab = 1
        }
        .tabItem {
          Image(systemName: "1.circle")
          Text("One")
        }
        .tag(0)
      
      Sample2()
        .tabItem {
          Image(systemName: "2.circle")
          Text("Two")
        }
        .tag(1)
      Sample3()
        .tabItem {
          Image(systemName: "3.circle")
          Text("Three")
        }
        .tag(2)
    }
  }
}

struct TabView_Previews: PreviewProvider {
  
  static var previews: some View {
    TabbedView()
  }
}
