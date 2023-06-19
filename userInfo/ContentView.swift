//
//  userInfoApp.swift
//  userInfo
//
//  Created by Syed Raza on 6/19/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = UserViewModel()

    var body: some View {
        NavigationView {
            VStack {
                List(viewModel.users) { user in
                    NavigationLink(destination: UserDetailsView(user: user)) {
                        VStack(alignment: .leading, spacing: 4) {
                            HStack {
                                Text("\(user.id)")
                                    .font(.subheadline)
                                    .foregroundColor(.black )
                                Text(user.name)
                                    .foregroundColor(.primary)
                            }
                            HStack {
                                Spacer().frame(width: 15)
                                Text(user.email)
                                Spacer()
                            }
                            HStack {
                                Spacer().frame(width: 15)
                                Text(user.phone)
                                Spacer()
                            }
                        }
                        .padding(10)
                        .background(Color.blue.opacity(0.2))
                        .foregroundColor(.black)
                        .cornerRadius(20)
                    }
                }
                .listStyle(.plain)
            }
            .navigationBarTitle("PhoneBook")
            .onAppear {
                viewModel.getUsers()
            }
            .padding()
        }
        .background(Color.green)
        .accentColor(.blue)
    }
}

struct UserDetailsView: View {
    let user: User

    var body: some View {
        VStack(spacing: 10) {
            
            Text("\(user.id)")
            Text(user.name)
            Text(user.username)
            Text(user.email)
            Text(user.address.street)
            Text(user.address.suite)
            Text(user.address.city)
            VStack(spacing: 10) {
                Text(user.address.zipcode)
                Text(user.address.geo.lat)
                Text(user.address.geo.lng)
                Text(user.phone)
                Text(user.website)
                Text(user.company.name)
                Text(user.company.catchPhrase)
                Text(user.company.bs)
            }
    }

        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

