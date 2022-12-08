//
//  GrocerySections.swift
//  Gagenapally_GroceryApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 11/15/22.
//

import Foundation

struct GrocerySections {
    var section = ""
    var items_Array:[GroceryItem]!//movie
}

struct GroceryItem{//movie
   var itemName = ""
   var itemImage  = ""
    var itemInfo  = ""
}

 
//Array(repeating: Event(), count: 10239)



let g1 = GroceryItem(itemName:"Mango",itemImage: "mango", itemInfo: "Mango ice cream is heavenly & you will fall in love with it instantly. It has all the goodness of fresh ripe mangoes, cream and sweetened condensed milk. This no-churn mango ice cream is super simple to make and is also a no cook frozen dessert you should be making when fresh mangoes are in season.")
let g2 = GroceryItem(itemName:"Matcha",itemImage: "matcha", itemInfo: "Green tea ice cream or matcha ice is an ice cream flavor popular in Japan and other parts of East Asia. Green tea ice cream is also sold in monaka form. It has been available in the United States since the late-1970s, primarily in Japanese restaurants and markets, but is currently moving into mainstream availability.")
let g3 = GroceryItem(itemName:"Ube",itemImage: "ube", itemInfo: "Ube ice cream is a Filipino ice cream flavor prepared using ube as the main ingredient. This ice cream is often used in making the dessert halo-halo.")
let g4 = GroceryItem(itemName:"Passionfruit",itemImage: "passionfruit", itemInfo: "This Passion Fruit Ice Cream is creamy and a delicious combination of sweet, tart, and fruity. Passion fruit has its own unique flavor that adds a beautiful floral aroma to any dessert and this ice cream is no exception.")
let g5 = GroceryItem(itemName:"Newzealand",itemImage: "newzealand", itemInfo: "New Zealand Style Ice Cream, or more commonly known as real fruit ice cream, is a popular concept in New Zealand with the invention of a machine that takes premium hard packed ice cream with real frozen fruit and blends it together into a delicious, creamy soft serve-like treat.")


var icecream:[GroceryItem] = [g1,g2,g3,g4,g5]

let g6 = GroceryItem(itemName:"Mango",itemImage: "mangoe", itemInfo: "A mango is an edible stone fruit produced by the tropical tree Mangifera indica. It is believed to have originated in the region between northwestern Myanmar, Bangladesh, and northeastern India.")
let g7 = GroceryItem(itemName:"Blueberries",itemImage: "blueberries", itemInfo: "Blueberries are a widely distributed and widespread group of perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium. Vaccinium also includes cranberries, bilberries, huckleberries and Madeira blueberries.")
let g8 = GroceryItem(itemName:"Cranberries",itemImage: "cranberries", itemInfo: "The Cranberries were an Irish rock band formed in Limerick, Ireland. Originally named the Cranberry Saw Us, the band were formed in 1989 by lead singer Niall Quinn, guitarist Noel Hogan, bassist Mike Hogan and drummer Fergal Lawler.")
let g9 = GroceryItem(itemName:"Grapefruit",itemImage: "grapefruit", itemInfo: "The grapefruit is a subtropical citrus tree known for its relatively large, sour to semi-sweet, somewhat bitter fruit. The interior flesh is segmented and varies in color from pale yellow to dark pink. Grapefruit is a citrus hybrid originating in Barbados.")
let g10 = GroceryItem(itemName:"Guava",itemImage: "guava", itemInfo: "Guava is a common tropical fruit cultivated in many tropical and subtropical regions. The common guava Psidium guajava is a small tree in the myrtle family, native to Mexico, Central America, the Caribbean and northern South America. ")

var fruits:[GroceryItem] = [g6,g7,g8,g9,g10]


let g11 = GroceryItem(itemName:"Broccoli",itemImage: "broccoli", itemInfo: "Broccoli is an edible green plant in the cabbage family whose large flowering head, stalk and small associated leaves are eaten as a vegetable. Broccoli is classified in the Italica cultivar group of the species Brassica oleracea.")
let g12 = GroceryItem(itemName:"Beets",itemImage: "beets", itemInfo: "The beetroot is the taproot portion of a beet plant, usually known in North America as beets while the vegetable is referred to as beetroot in British English, and also known as the table beet, garden beet, red beet, dinner beet or golden beet.")
let g13 = GroceryItem(itemName:"Potato",itemImage: "potato", itemInfo: "The potato is a starchy tuber of the plant Solanum tuberosum and is a root vegetable native to the Americas. The plant is a perennial in the nightshade family Solanaceae. Wild potato species can be found from the southern United States to southern Chile.")
let g14 = GroceryItem(itemName:"Peas",itemImage: "pea", itemInfo: "The pea is most commonly the small spherical seed or the seed-pod of the flowering plant species Pisum sativum. Each pod contains several peas, which can be green or yellow. Botanically, pea pods are fruit, since they contain seeds and develop from the ovary of a flower.")
let g15 = GroceryItem(itemName:"Okra",itemImage: "okra", itemInfo: "Okra or Okro, Abelmoschus esculentus, known in many English-speaking countries as ladies' fingers or ochro, is a flowering plant in the mallow family. It has edible green seed pods. The geographical origin of okra is disputed, with supporters of West African, Ethiopian, Southeast Asian, and South Asian origins.")

var vaggies:[GroceryItem] = [g11,g12,g13,g14,g15]



let m1 = GrocerySections(section: "IceCream",items_Array: icecream)
let m2 = GrocerySections(section: "fruits",items_Array: fruits)
let m3 = GrocerySections(section: "vaggies",items_Array: vaggies)

var grocery:[GrocerySections] = [m1,m2,m3]

