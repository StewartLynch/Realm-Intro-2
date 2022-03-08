//
//  CountryRowView.swift
//  Realm Intro-2
//
//  Created by Stewart Lynch on 2022-03-07.
//

import SwiftUI
import RealmSwift

struct CountryRowView: View {
    @ObservedRealmObject var country: Country
    var body: some View {
        TextField("New Country", text: $country.name)
            .textFieldStyle(.roundedBorder)
            .padding()
            .frame(height: 30)
    }
}

struct CountryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryRowView(country: Country(name: "Canada"))
    }
}
