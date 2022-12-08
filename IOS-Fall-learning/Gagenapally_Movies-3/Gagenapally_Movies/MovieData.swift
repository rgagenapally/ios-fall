//
//  MovieData.swift
//  Gagenapally_Movies
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/21/22.
//

import Foundation
import UIKit

struct Movie {
    var title:String
    var image:UIImage
    var releasedYear:String
    var movieRating:String
    var boxOffice :String
    var moviePlot :String
    var cast:[String]
}

struct Genre {
    var category:String!,
        movies:[Movie]!
}
let mo = Movie(title: "Jersey",image: (UIImage(named: "jersey"))!,releasedYear: "2022",movieRating: "7.3",boxOffice: "$2,156,815",moviePlot: "Struggling to make ends meet, a former cricketer must decide whether to return to the sport he loves to fulfil his son's wish for a jersey",cast: ["Shahid Kapoor","Mrunal Thakur","Pankaj Kapur"])
    
let mo1 = Movie(title: "Dear Zindagi ",image: (UIImage(named: "zindagi"))!,releasedYear: "2016",movieRating: "7.4",boxOffice: "$977,862",moviePlot: "Kaira is a budding cinematographer in search of a perfect life. Her encounter with Jug, an unconventional thinker, helps her gain a new perspective on life. She discovers that happiness is all about finding comfort in life's imperfections.",cast: ["SRK","Alia Bhatt","Kunal Kapoor"])
let mo2 = Movie(title: "Badhaai ho",image: (UIImage(named: "badhaaiho"))!,releasedYear: "2018",movieRating: "7.9",boxOffice: "$26,125,610",moviePlot: "A man is embarrassed when he finds out his mother is pregnant.",cast: ["Ayushmann Khurrana","Neena Gupta","Nayim Saifi"])
    
let mo3 =  Movie(title: " Brahmastra Part One: Shiva",image: (UIImage(named: "Brahmastra"))!,releasedYear: "2022",movieRating: "5.6",boxOffice: "₹431 crore",moviePlot: "This is the story of Shiva who sets out in search of love and self-discovery. During his journey, he has to face many evil forces that threaten our existence.",cast: ["Amitabh Bachchan","Ranbir Kapoor","Alia Bhatt"])
let mo4 = Movie(title: " Monica, O My Darling",image: (UIImage(named: "monica")!),releasedYear: "2022",movieRating: "7.6",boxOffice: "$60,262,836",moviePlot: "A slick robotics expert joins a murderous plot after a passionate affair takes a sudden turn, but nothing not even death , is what it seems to be.",cast: ["Rajkummar Rao","Huma Qureshi","Sikandar Kher","Akansha Ranjan Kapoor"])

    var s:[Movie] = [mo,mo1,mo2,mo4,mo3]

let amo = Movie(title: "Uncharted",image: (UIImage(named: "uncharted"))!,releasedYear: "2022",movieRating: "6.3",boxOffice: "$401,748,820",moviePlot: "Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor Sully Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.",cast: ["Tom Holland","Mark Wahlberg","Antonio Banderas"])
let amo1 = Movie(title: "Spider-Man: No Way Home",image: (UIImage(named: "spiderman"))!,releasedYear: "2021",movieRating: "8.4",boxOffice: "$1,916,893,644",moviePlot: "With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.",cast: ["Tom Holland","Zendaya","Benedict Cumberbatch"])
let amo2 = Movie(title: "Pinocchio",image: (UIImage(named: "pinocchio"))!,releasedYear: "2022",movieRating: "5.1",boxOffice: "$150,000,000",moviePlot: "A puppet is brought to life by a fairy, who assigns him to lead a virtuous life in order to become a real boy.",cast: ["Joseph Gordon-Levitt","Tom Hanks"])
let amo3 = Movie(title: "Black Panther",image: (UIImage(named: "black"))!,releasedYear: "2018",movieRating: "7.3",boxOffice: "$1,382,248,826",moviePlot: "After the events of Captain America: Civil War, Prince T'Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country's new king. However, T'Challa soon finds that he is challenged for the throne from factions within his own country. When two foes conspire to destroy Wakanda, the hero known as Black Panther must team up with C.I.A. agent Everett K. Ross and members of the Dora Milaje, Wakandan special forces, to prevent Wakanda from being dragged into a world war.",cast: ["Chadwick Boseman","Michael B. Jordan","Lupita Nyong'o"])
let amo4 = Movie(title: "The Gray Man",image: (UIImage(named: "gray"))!,releasedYear: "2022",movieRating: "6.5",boxOffice: "$454,023",moviePlot: "When the CIA's most skilled operative-whose true identity is known to none-accidentally uncovers dark agency secrets, a psychopathic former colleague puts a bounty on his head, setting off a global manhunt by international assassins.",cast: ["Ryan Gosling","Chris Evans"])

var s1:[Movie] = [amo,amo1,amo2,amo4,amo3]
let rmo1 = Movie(title: "Geetha Govindam",image: (UIImage(named: "Geetha"))!,releasedYear: "2018",movieRating: "7.7",boxOffice: "$132 crore",moviePlot: "An innocent young lecturer is misunderstood as a pervert and despised by a woman who co-incidentally turns out to be the younger sister of his brother-in-law. Eventually differences subside and love blooms between them.",cast: ["Vijay Deverakonda","Rashmika Mandanna","Subbaraju"])
let rmo2 = Movie(title: "Bheeshma",image: (UIImage(named: "Bheeshma"))!,releasedYear: "2020",movieRating: "6.5",boxOffice: "$400 million",moviePlot: "A wise-cracking meme creator gets the chance to prove himself to the girl he loves when he is suddenly appointed to be the CEO of her workplace.",cast: ["Nithiin","Rashmika Mandanna","Avantika Mishra"])
let rmo3 = Movie(title: "Paagal",image: (UIImage(named: "Paagal"))!,releasedYear: "2021",movieRating: "5.6",boxOffice: "$6 crore",moviePlot: "Prem desperately searches for someone to love after the death of his mother, until Cupid's arrow finally connects.",cast: ["Vishwak Sen","Nivetha Pethuraj"])
let rmo4 = Movie(title: "Fidaa",image: (UIImage(named: "Fidaa"))!,releasedYear: "2017",movieRating: "7.4",boxOffice: "$90 crore",moviePlot: "Two young people from different backgrounds embark on a winding and rocky path to love after meeting at a wedding.",cast: ["Varun Tej","Sai Pallavi","Sharanya Pradeep"])
let rmo5 = Movie(title: "Maharshi",image: (UIImage(named: "Maharshi"))!,releasedYear: "2019",movieRating: "7.2",boxOffice: "$200 crore",moviePlot: "After making a fortune with new technologies, millionaire businessman Rishi decides to return to his native village and become a benefactor to those who are less fortunate.",cast: ["Mahesh Babu","Pooja Hegde"])
var s3:[Movie] = [rmo1,rmo2,rmo3,rmo4,rmo5]
let g1 = Genre(category: "Drama",movies: s)
let g2 = Genre(category: "Action",movies: s1)
let g3 = Genre(category: "Romantic",movies: s3)
var genres:[Genre] =  [g1,g2,g3]
