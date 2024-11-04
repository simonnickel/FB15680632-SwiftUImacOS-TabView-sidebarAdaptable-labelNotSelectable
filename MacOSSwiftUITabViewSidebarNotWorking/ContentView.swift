//
//  ContentView.swift
//  MacOSSwiftUITabViewSidebarNotWorking
//
//  Created by Simon Nickel on 04.11.24.
//

import SwiftUI

struct ContentView: View {
	
	@State private var selected: Int = 1
	
    var body: some View {
		TabView(selection: $selected) {
			
			Tab(value: 1) {
				Text("Some Text for 1")
			} label: {
				Label {
					Text("First")
				} icon: {
					Image(systemName: "circle")
				}
			}
			
			Tab(value: 2) {
				Text("Some Text for 2")
			} label: {
				Label {
					Text("Second")
				} icon: {
					Image(systemName: "rectangle")
				}
			}
			
		}
		.tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    ContentView()
}
