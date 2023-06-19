////
////  ContentView.swift
////  userInfo
////
////  Created by Syed Raza on 6/19/23.
////
//
//
//
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
        VStack {
            Text(user.name)
                .font(.title)
            Text("ID: \(user.id)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text("Email: \(user.email)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text("Phone: \(user.phone)")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//import SwiftUI
//
//struct ContentView: View {
//    @StateObject var viewModel = UserViewModel()
//
//    var body: some View {
//        NavigationView {
//            VStack {
//                List(viewModel.users) { user in
//                    NavigationLink(destination: UserDetailsView(user: user)) {
//                        HStack {
//                            Text("\(user.id)")
//                                .font(.subheadline)
//                                .foregroundColor(.white)
//                            Text(user.name)
//
//                                .foregroundColor(.primary)
//                        }
//
//
//
//                        VStack(alignment: .leading) {
//                            Text(user.email)
//
//
//                            Text(user.phone)
//
//
//                        }
//                        .padding(10)
//
//                    }
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(15)
//                }
//                .listStyle(.plain)
//            }
//            .navigationBarTitle("PhoneBook")
//            .onAppear {
//                viewModel.getUsers()
//            }
//            .padding()
//        }
//        .background(Color.green)
//        .accentColor(.blue)
//    }
//}
//
//struct UserDetailsView: View {
//    let user: User
//
//    var body: some View {
//        VStack {
//            Text(user.name)
//                .font(.title)
//            Text("ID: \(user.id)")
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//            Text("Email: \(user.email)")
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//            Text("Phone: \(user.phone)")
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
//
//
//
//
