//
//  SingleUserCell.swift
//  userInfo
//
//  Created by Syed Raza on 6/19/23.
//

import SwiftUI

struct SingleUserCell: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(user.id)")
            Text(user.name)
            Text(user.email)
            Text(user.phone)
        }
    }
}

struct SingleUserCell_Previews: PreviewProvider {
    static var previews: some View {
        let mockUser = User(id: 1, name: "John Doe", email: "abc@gmail.com", phone: "(775)976-6794 x41206")
        return SingleUserCell(user: mockUser)
    }
}


