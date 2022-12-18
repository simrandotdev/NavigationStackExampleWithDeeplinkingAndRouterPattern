//
//  CityView.swift
//  NavigationStack 2
//
//  Created by Simran Preet Narang on 2022-12-18.
//

import SwiftUI
import Charts

struct CityView: View {
    
    var city: City
    
    var body: some View {
        VStack {
            ZStack {
                if city.isCapital {
                    Text("🌟")
                        .font(.system(size: 160))
                }
                
                HStack {
                    Text("\(city.name) (\(city.country))")
                        .font(.title)
                }
            }
            .frame(height: 220)
            Chart(city.fellowCities) { city in
                BarMark(x: .value("City", city.name), y: .value("Population", city.population))
                    .foregroundStyle(by: .value("City", city.name))
            }
            .chartLegend(.hidden)
            .padding()
            
        }
        .navigationTitle("City")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CityView(city: City.all[3])
                .navigationTitle("City")
        }
    }
}
