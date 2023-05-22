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
        TextField("Suche", text: $sucheEingabe)
    }
}

struct SucheView_Previews: PreviewProvider {
    static var previews: some View {
        SucheView()
    }
}
