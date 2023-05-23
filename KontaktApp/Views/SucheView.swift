//
//  SucheView.swift
//  KontaktApp
//
//  Created by Bernadette Werneke on 22.05.23.
//

import SwiftUI

struct SucheView: View {

    @State var sucheEingabe: String = ""
    
    var body: some View {
        VStack{
            TextField("Suche", text: $sucheEingabe)
                .padding()
                .background(.gray)
                .opacity(0.2)
                .cornerRadius(25)
            
        }
    }
}

struct SucheView_Previews: PreviewProvider {
    static var previews: some View {
        SucheView()
    }
}
