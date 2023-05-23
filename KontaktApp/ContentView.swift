//
//  ContentView.swift
//  KontaktApp
//
//  Created by Bernadette Werneke on 22.05.23.
//

import SwiftUI

struct ContentView: View {
    
   

    @State var tabSelection = 0
    @State var contactBadge: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection){
    KontaktListeView(tabSelection: $tabSelection, countBadge: $contactBadge)
                .tabItem{
                    Label("Kontakt", systemImage: "person.crop.circle")
                }
                .badge(contactBadge)
                .tag(0)
            
            CookieView()
                .tabItem{
                    Label("Spiel", systemImage: "gamecontroller")
                }
                .tag(1)
            
            AmpelView()
                .tabItem{
                    Label("Ampel", systemImage: "exclamationmark.octagon")
                }
                .tag(2)
            
            SucheView()
                .tabItem{
                    Label("Suche", systemImage: "magnifyingglass.circle")
            }
                .tag(3)
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
