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
                      .font(.headline)
                      .foregroundColor(.white)
                      .padding()
                      .background(Color.blue)
                      .cornerRadius(10)
                  
                  Text(user.name)
                      .font(.title)
                      .fontWeight(.bold)
                      .foregroundColor(.primary)
                  
                  Text(user.username)
                      .font(.subheadline)
                      .foregroundColor(.secondary)
                  
                  Text(user.email)
                      .font(.subheadline)
                      .foregroundColor(.secondary)
                  
                  Text(user.address.street)
                      .font(.subheadline)
                      .foregroundColor(.secondary)
                  
                  Text(user.address.suite)
                      .font(.subheadline)
                      .foregroundColor(.secondary)
                  
                  Text(user.address.city)
                      .font(.subheadline)
                      .foregroundColor(.secondary)
                  
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
                  .padding()
                  .background(Color.gray)
                  .cornerRadius(20)
              }
              .padding()
              .background(Color.white)
              .cornerRadius(10)
              .shadow(color: Color.black.opacity(0.9), radius: 5, x: 0, y: 2)
          }
      }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

