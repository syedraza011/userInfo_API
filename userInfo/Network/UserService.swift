//
//  UserService.swift
//  userInfo
//
//  Created by Syed Raza on 6/19/23.
//

import Foundation
import Combine


class UserService {
    var cancelable = Set<AnyCancellable>()
    let urlString = "https://jsonplaceholder.typicode.com/users"

    func fetchUsers() -> Future<[User], Error> {
        return Future<[User], Error> { promise in
            guard let url = URL(string: self.urlString) else {
                let error = NSError(domain: "InvalidURL", code: 0, userInfo: nil)
                promise(.failure(error))
                return
            }
            
            URLSession.shared.dataTaskPublisher(for: url)
                .map { $0.data }
                .decode(type: [User].self, decoder: JSONDecoder())
                .receive(on: DispatchQueue.main)
                .sink(receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        break
                    case .failure(let error):
                        promise(.failure(error))
                    }
                }, receiveValue: { response in
                    promise(.success(response))
                })
                .store(in: &self.cancelable)
        }
    }
}

