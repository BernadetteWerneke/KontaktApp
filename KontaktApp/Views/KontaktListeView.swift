//
//  KontaktListeView.swift
//  KontaktApp
//
//  Created by Bernadette Werneke on 22.05.23.
//
import Foundation
import SwiftUI

struct KontaktListeView: View {
    
    @State var contacts: [Contact] =
        [Contact(id: 0, name: "Alice", phone: "1234567"),
         Contact(id: 1, name: "Bob", phone: "0173428374"),
         Contact(id: 2, name: "Charlie", phone: "012345"),
         Contact(id: 3, name: "Walter", phone: "012533485767"),
         Contact(id: 4, name: "Ines", phone: "0173428374"),
         Contact(id: 5, name: "Xaver", phone: "016743293847"),
         Contact(id: 6, name: "Rudi", phone: "0173428374"),
         Contact(id: 7, name: "Erwin", phone: "0152837465"),
         Contact(id: 8, name: "Malte", phone: "0173428374"),
         Contact(id: 9, name: "Lena", phone: "01234726"),
         Contact(id: 10, name: "Chris", phone: "0173428374")]
    
    @State var searchingFor = ""
    
    @Binding var tabSelection: Int
    @Binding var countBadge: Int
    
    
    var body: some View {
    
        VStack{
        Text("Kontakte")
                .font(.largeTitle)
            Button("Suche"){
                tabSelection = 3
            }
            
            List {
                
                ForEach(contacts.sorted {$0.name.lowercased() < $1.name.lowercased()}) { conctat in
                   
                    HStack{
                        Text(conctat.name)
                        Spacer()
                        Text(conctat.phone)
                        
                    }
                }
                .onDelete {
                    indexSet in
                    contacts.remove(atOffsets: indexSet)
                }
            }
        }
    }
    

        }
        

