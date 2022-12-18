//
//  CountryView.swift
//  NavigationStack 2
//
//  Created by Simran Preet Narang on 2022-12-18.
//

import SwiftUI

struct CountryView: View {
    
    var country: Country
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(country.flag)
                Text(country.name)
            }
            .font(.largeTitle)
            .padding()
            
            HStack {
                Spacer()
                Text("Population: \(country.population)")
            }
            .padding()
            List(country.cities) { city in
                NavigationLink(value: city) {
                    Text(city.name)
                }
            }
        }
        .navigationTitle("Country")
        .navigationDestination(for: City.self) { city in
            CityView(city: city)
        }
    }
        
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CountryView(country: Country.sample[0])
                .navigationTitle("Country")
        }
    }
}
