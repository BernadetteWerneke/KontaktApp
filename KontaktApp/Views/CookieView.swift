//
//  CookieView.swift
//  KontaktApp
//
//  Created by Bernadette Werneke on 22.05.23.
//

import SwiftUI

//MARK: CookieView
struct CookieView: View {
    @State var counter: Int = 0
    
    var body: some View {
        VStack{
            HStack(){
                Text("Counter: \(counter)")
                    .bold()
            }
            Spacer()
            Button{
                counter += 1
            } label: {
                let xRandom: CGFloat = .random(in: 10...300)
                let yRandom: CGFloat = .random(in: 40...600)
                Image("CookieImage")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .position(x: xRandom, y: yRandom)
            }
        }
    }
}

struct CookieView_Previews: PreviewProvider {
    static var previews: some View {
        CookieView()
    }
}
