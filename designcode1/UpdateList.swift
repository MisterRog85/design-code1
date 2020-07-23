//
//  UpdateList.swift
//  designcode1
//
//  Created by William Tomas on 22/07/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import SwiftUI

struct UpdateList: View {
    @ObservedObject var store = UpdateStore()
    
    func addUpdate() {
        store.updates.append(Update(image: "Card3", title: "new item", text: "mon texte", date: "1 jan"))
    }
    
    var body: some View {
        NavigationView {
            List { //le list est utilisé juste pour gérer les cellules comme le ferait une liste classique
                ForEach(store.updates) { update in //ici on utilise le foreach pour faire le looping, on a alors le swipe to delete
                    NavigationLink(destination: UpdateDetail(update: update)) {
                        HStack {
                            Image(update.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .background(Color.blue.opacity(0.2))
                                .cornerRadius(20)
                                .padding(.trailing, 4)
                            
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text(update.title)
                                    .font(.system(size: 20, weight: .bold))
                                
                                Text("Bonjour")
                                    .lineLimit(2)
                                    .font(.subheadline)
                                    .foregroundColor(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                                
                                Text(update.date)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                    }
                }
                .onDelete { index in
                    self.store.updates.remove(at: index.first!)
                }
                .onMove { (source: IndexSet, destination: Int) in
                    self.store.updates.move(fromOffsets: source, toOffset: destination)
                }
            }
            .navigationBarTitle(Text("Updates"))
            .navigationBarItems(leading: Button(action: addUpdate) {
                Text("Add update")
            }, trailing: EditButton())
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
    }
}


struct Update: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var date: String
}

let updateData = [
    Update(image: "Card1", title: "SwiftUI", text: "Text1", date: "19 Mai"),
    Update(image: "Card1", title: "SwiftUI", text: "Text2", date: "19 Mai"),
    Update(image: "Card1", title: "SwiftUI", text: "Text3", date: "19 Mai"),
    Update(image: "Card1", title: "SwiftUI", text: "Text4", date: "19 Mai")
]
