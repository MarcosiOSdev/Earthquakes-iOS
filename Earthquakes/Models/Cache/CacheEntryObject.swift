//
//  CacheEntryObject.swift
//  Earthquakes-iOS
//
//  Created by mfelipesp on 06/06/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import Foundation

final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) {
        self.entry = entry
    }
}

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
