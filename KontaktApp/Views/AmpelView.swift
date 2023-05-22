//
//  AmpelView.swift
//  KontaktApp
//
//  Created by Bernadette Werneke on 22.05.23.
//

import SwiftUI

enum Ampel: String, CaseIterable, Identifiable {

    case red
    case orange
    case green
    var id: String {self.rawValue}
}

struct AmpelView: View {
    @State var selAmpel = Ampel.red
    
    
    
    var body: some View {
        VStack{
            Picker("", selection: $selAmpel) {
                ForEach(Ampel.allCases) { sel in
                    Text(sel.rawValue.capitalized)
                        .tag(sel)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
         
            switch selAmpel {
            case .red:
                Button("Stopp"){
                }
                .frame(width: 100, height: 100)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding(30)
            case .orange:
                Button("Attention"){
                }
                .frame(width: 100, height: 100)
                .background(.orange)
                .clipShape(Circle())
                .padding(30)
            case .green:
                Button("Go"){
                }
                .frame(width: 100, height: 100)
                .background(.green)
                .clipShape(Circle())
                .padding(30)
            }
        }
        .padding(.top, 7.0)
    }
}

struct AmpelView_Previews: PreviewProvider {
    static var previews: some View {
        AmpelView()
    }
}
