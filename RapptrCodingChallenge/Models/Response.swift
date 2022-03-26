//
//  Message.swift
//  Rapptr iOS Test
//
//  Created by Ethan Humphrey on 8/11/21.
//

import Foundation

struct Response: Codable {
    var data: [Message]
}

struct Message: Codable, Identifiable {
    var id: String = UUID().uuidString
    var userID: String
    var username: String
    var avatarURL: String
    var text: String
    
    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
        case username = "name"
        case avatarURL = "avatar_url"
        case text = "message"
    }
    
    init(testName: String, withTestMessage message: String) {
        self.userID = "0"
        self.username = testName
        self.avatarURL = "https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Smiley.svg/220px-Smiley.svg.png"
        self.text = message
    }
}


/*
 { "data" : [ { "user_id" : "1", "name" : "Drew", "avatar_url" : "http://dev.rapptrlabs.com/Tests/images/drew_avatar.png", "message" : "Team, can we give job applicants taking this test some examples of the types of apps they’d be working on if they joined our team?" }, { "user_id" : "2", "name" : "Abby", "avatar_url" : "http://dev.rapptrlabs.com/Tests/images/abby_avatar.png", "message" : "We work on ecommerce apps for brands like PromGirl & Simply Dresses." }, { "user_id" : "3", "name" : "Taylor", "avatar_url" : "http://dev.rapptrlabs.com/Tests/images/taylor_avatar.png", "message" : "You know those scooter sharing services that have been popping up? We developed and support one of those: Movo." }, { "user_id" : "2", "name" : "Abby", "avatar_url" : "http://dev.rapptrlabs.com/Tests/images/abby_avatar.png", "message" : "We do a lot of hardware-pairing apps as well like Conair’s Smart WeightWatchers Scale and Phlex’s new smart goggles." } ] }
 */
