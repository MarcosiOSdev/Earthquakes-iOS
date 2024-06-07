//
//  QuakeDetail.swift
//  Earthquakes-iOS
//
//  Created by mfelipesp on 06/06/24.
//  Copyright © 2024 Apple. All rights reserved.
//

import SwiftUI

struct QuakeDetailView: View {
    
    @EnvironmentObject
    private var quakesProvider: QuakesProvider
    
    @State
    private var location: QuakeLocation? = nil
    
    var quake: Quake
    
    var body: some View {
        VStack {
            if let location {
                QuakeDetailMapView(location: location, tintColor: quake.color)
                    .ignoresSafeArea()
            }
            
            QuakeMagnitudeView(quake: quake)
            Text(quake.place)
                .font(.title3)
                .bold()
            
            Text(quake.time.formatted(date: .numeric, time: .shortened))
                .foregroundStyle(.secondary)
            
            if let location {
                Text("Latitude: \(location.latitude.formatted(.number.precision(.fractionLength(3))))")
                Text("Longitude: \(location.longitude.formatted(.number.precision(.fractionLength(3))))")
            }
        }
        .task {
            if location == nil {
                if let quakeLocation = quake.location {
                    self.location = quakeLocation
                } else {
                    self.location = try? await quakesProvider.location(for: quake)
                }
            }
        }
    }
}

#Preview {
    QuakeDetailView(quake: Quake.preview)
}
