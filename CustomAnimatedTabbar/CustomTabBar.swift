//  /*
//
//  Project: CustomAnimatedTabbar
//  File: CustomTabBar.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.09.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

enum Tab: String, CaseIterable {
    
    case house
    case message
    case person
    case leaf
    case gearshape
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill" 
    }
    
    var body: some View {
        
        VStack {
            
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.house))
    }
}
