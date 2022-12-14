//
//  Youtube.swift
//  pages
//
//  Created by Lou on 2022/12/27.
//

import Foundation
struct SearchResponse:Codable{
    let nextPageToken :String
    let items : [videopack]
}
struct Constants {
    static let youtubeAPI_KEY = "AIzaSyCEZqy9n5BfHTK72Bl_zqy1ILkF0dq64iw"
    static let youtubeChannelURL = "https://www.googleapis.com/youtube/v3/channels?part=contentDetails&id="
    static let youtubePlaylistURL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId="
    static let channelid = "UCtG2ospXrllukLp5TorrKzw"
    static var channellistid = "UUtG2ospXrllukLp5TorrKzw"
}
struct videopack:Codable,Identifiable{
    var id : String { snippet.title }
    let snippet : videoinfo
    var isSave : Bool?
}
struct videoinfo:Codable{
    let title : String
    let thumbnails : picpack
    let resourceId : idinfo
    
}
struct picpack:Codable{
    let medium : picinfo
}
struct picinfo:Codable{
    let url : String
}

struct idinfo:Codable{
    let videoId :String
}


struct ChannelResponse:Codable{
    let items:[channelinfo]
}
struct channelinfo:Codable{
    let contentDetails:contentinfo
}
struct contentinfo:Codable{
    let relatedPlaylists:channelid
}
struct channelid:Codable{
    let uploads:String
}
