//
//  Moive.swift
//  Gagenapally_MovieDisplayApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/29/22.
//

import Foundation

struct Movie{
    var movieName = ""
    var movieImage = ""
    var movieCast = ""
    var movieReleasedYear = ""
    var boxOfficeCollection = ""
    
}

var m1 = Movie(movieName: "Avengers End Game",
               movieImage: "AEG", movieCast: "Robert Downey Jr, Chris Evans, Chris Hemsworth", movieReleasedYear: "April 26, 2019", boxOfficeCollection: "2.798 billion USD")

var m2 = Movie(movieName: "Black Panther",
               movieImage: "BP", movieCast: "Chadwick Boseman, Letitia Wright, Michael B. Jordan", movieReleasedYear: "February 16, 2018", boxOfficeCollection: "1.382 billion USD")


var m3 = Movie(movieName: "Black Panther: Wakanda Forever",
               movieImage: "BPWF", movieCast: "Tenoch Huerta, Letitia Wright, Dominique Thorne", movieReleasedYear: "November 11, 2022", boxOfficeCollection: "425.8 million USD")

var m4 = Movie(movieName: "Avatar",
               movieImage: "AVATAR", movieCast: "Sam Worthington, Zoe Saldaña, Michelle Rodriguez", movieReleasedYear: "December 18, 2009", boxOfficeCollection: "2.922 billion USD")

var m5 = Movie(movieName: "Iron Man",
               movieImage: "IRON", movieCast: "Robert Downey Jr., Gwyneth Paltrow, Stan Lee", movieReleasedYear: "May 2, 2008", boxOfficeCollection: "585.8 million USD")

var MovieArray = [m1,m2,m3,m4,m5]





