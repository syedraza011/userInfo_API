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
                .font(.headline)
                .foregroundColor(.blue)
                .fontWeight(.bold)
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
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(user.address.geo.lat)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(user.address.geo.lng)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(user.phone)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(user.website)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                Text(user.company.name)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .italic()
                Text(user.company.catchPhrase)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .italic()
                Text(user.company.bs)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .italic()
            }
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(10)
    }
}


struct SingleUserCell_Previews: PreviewProvider {
    static var previews: some View {
        let mockUser = User(
            id: 1,
            name: "John Doe",
            username: "Moriah.Stanton",
            email: "abc@gmail.com",
            
            address: Address(
                street: "Kattie Turnpike",
                suite: "Suite 198",
                city: "Lebsackbury",
                zipcode: "31428-2261",
                
                geo: Geo(
                    lat: "-38.2386",
                    lng: "57.2232"
                )
            ),
            phone: "(775)976-6794 x41206",
            website: "ambrose.net",
            
            company: Company(
                name: "Hoeger LLC",
                catchPhrase: "Centralized empowering task-force",
                bs: "target end-to-end models"
            )
        )
        return SingleUserCell(user: mockUser)
    }
}





