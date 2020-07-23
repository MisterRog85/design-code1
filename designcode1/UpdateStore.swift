//
//  UpdateStore.swift
//  designcode1
//
//  Created by William Tomas on 23/07/2020.
//  Copyright © 2020 William Tomas. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore: ObservableObject {
    @Published var updates: [Update] = updateData
}

