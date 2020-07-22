//
//  UpdateDetail.swift
//  designcode1
//
//  Created by William Tomas on 22/07/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import SwiftUI

struct UpdateDetail: View {
    var update: Update = updateData[0]
    
    var body: some View {
        ScrollView {
            VStack {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                Text(update.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 16)
            }
            .navigationBarTitle(update.title)
        }
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetail()
    }
}
