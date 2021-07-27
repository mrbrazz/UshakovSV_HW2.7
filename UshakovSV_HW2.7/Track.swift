//
//  Track.swift
//  UshakovSV_HW2.7
//
//  Created by Сергей Ушаков on 27.07.2021.
//

struct Track {
    let artist: String
    let song: String
    
    var title: String {
        "\(artist) - \(song)"
    }
}

extension Track {
    static func getTrackList() -> [Track] {
        [
            Track(artist: "Jan Jara", song: "Znaesh"),
            Track(artist: "Jan Jara", song: "say la vi"),
            Track(artist: "Limp Bizkit", song: "Break Stuff"),
            Track(artist: "12", song: "34"),
            Track(artist: "Alberto Ruiz", song: "7 Elements (Original Mix)")
            
        ]
    }
}
