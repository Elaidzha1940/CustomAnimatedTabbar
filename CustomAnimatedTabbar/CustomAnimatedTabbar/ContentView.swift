//  /*
//
//  Project: CustomAnimatedTabbar
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 09.09.2023
//
//  Status: in progress | Decorated
//
//  */

import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .house
    
    init () {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        ZStack {
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        HStack {
                            Image(systemName: tab.rawValue)
                            Text("\(tab.rawValue.capitalized)")
                                .font(.system(size: 25, weight: .bold, design: .serif))
                                .animation(nil, value: selectedTab)
                        }
                        .tag(tab)
                    }
                }
            }
            VStack {
                Spacer()
                
                CustomTabBar(selectedTab: $selectedTab)
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
