//
//  UserViewModel.swift
//  userInfo
//
//  Created by Syed Raza on 6/19/23.
//
import Foundation
import Combine

class UserViewModel: ObservableObject {
    @Published var users = [User]()
    var cancelable = Set<AnyCancellable>()
    let service = UserService()

    func getUsers() {
        service.fetchUsers()
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }, receiveValue: { [weak self] users in
                self?.users = users
            })
            .store(in: &cancelable)
    }
}
