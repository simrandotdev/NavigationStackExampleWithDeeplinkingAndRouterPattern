//
// NavStackIntro1
// by Stewart Lynch on 2022-08-30
// Using Swift 5.0
//
// Follow me on Twitter: @StewartLynch
// Subscribe on YouTube: https://youTube.com/StewartLynch
//

import SwiftUI

struct CountryListView: View {
    var body: some View {
        NavigationStack {
            List(Country.sample) { country in
                NavigationLink(value: country) {
                    HStack {
                        Text(country.flag)
                        Text(country.name)
                    }
                }
            }
            .navigationTitle("Countries")
            .navigationDestination(for: Country.self) { country in
                CountryView(country: country)
            }
        }
    }
}

struct CountryListView_Previews: PreviewProvider {
    static var previews: some View {
        CountryListView()
    }
}
