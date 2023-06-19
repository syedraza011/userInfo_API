//
//  SingleUserCell.swift
//  userInfo
//
//  Created by Syed Raza on 6/19/23.
//

import SwiftUI

struct SingleUserCell: View {
    let user : User
    var body: some View {
        HStack {
        VStack(spacing: 10){
            Text(user.id)
            Text(user.name)
            Text(user.email)
            Text(user.phone)
        }
      
    }
    }
}

struct SingleUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SingleUserCell(user: User.mock)
    }
}
