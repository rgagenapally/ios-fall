//
//  ViewController.swift
//  Gagenapally_SearchApp
//
//  Created by Gagenapally,Roshni Damodar Reddy on 10/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ShowPrevImagesOutlet: UIButton!
    
    @IBOutlet weak var searchButtonOutlet: UIButton!
    
    @IBOutlet weak var ShowNextImagesOutlet: UIButton!
    
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    
    @IBOutlet weak var resetOutlet: UIButton!
    
    @IBAction func ResetBut(_ sender: Any) {
        topicInfoText.text = ""
        ShowNextImagesOutlet.isHidden = true
        ShowPrevImagesOutlet.isHidden = true
        topic = 0
        c = 0
        searchTextField.text?.removeAll()
        print("search is empty")
        print(searchTextField.hasText)
        print(searchTextField.isEditing)
        resultImage.image = UIImage(named: "sorry")
        searchButtonOutlet.isEnabled = false
        resetOutlet.isHidden = true

        
    }
    
    
    
    @IBAction func ShowPrevImagesBTN(_ sender: UIButton) {
        if(c >= 0){
            c = c-1
            print(c)

            //DetailsDisplay(topic,c)
            if(c == 4){
                print("inside 5")
                ShowNextImagesOutlet.isEnabled = false
                ShowPrevImagesOutlet.isEnabled = true
                
            }
            else if(c == 0){
                ShowNextImagesOutlet.isEnabled = true
                ShowPrevImagesOutlet.isEnabled = false
            }
            else{
                ShowNextImagesOutlet.isEnabled = true
                ShowPrevImagesOutlet.isEnabled = true
            }
            DetailsDisplay(topic,c)
        }
        
    }
    
    
    @IBAction func ShowNextImagesBTN(_ sender: UIButton) {
        if(c <= 4){
            c = c+1
            print(c)

            //DetailsDisplay(topic,c)
            if(c == 4){
                print("inside 5")
                ShowNextImagesOutlet.isEnabled = false
                ShowPrevImagesOutlet.isEnabled = true
                
            }
            else if(c == 0){
                ShowNextImagesOutlet.isEnabled = true
                ShowPrevImagesOutlet.isEnabled = false
            }
            else{
                ShowNextImagesOutlet.isEnabled = true
                ShowPrevImagesOutlet.isEnabled = true
            }
            DetailsDisplay(topic,c)
        }
        
    }
    
    var topic = 0
    var c:Array<String>.Index = 0
    
    var arr = [["rm","suga","jhope","chanyeol","jennie"],
               ["jimin","young","jin","v","jk"],
        ["bts","bp","twice","aespa","txt"]]
    
    var rapper_keywords = ["RAP","DEEJAY","KNOCKER","HIP-HOP","HITMAKER"]
   
    var vocals_keywords = ["SIGNER","VOCALISM","SIGNING","MEZZO","VOICE"]
    
    var group_keywords = ["BAND","GROUP","TEAM","MEMBERS","K-POP"]
    
    
    var topics_array = [[
        "Kim Nam-joon, known professionally as RM, is a South Korean rapper, singer-songwriter and record producer. He is the leader of the South Korean boy group BTS. RM released his first solo mixtape, RM, in 2015.",
        "Min Yoon-gi, known professionally by his stage names Suga and Agust D, is a South Korean rapper, songwriter and record producer. Managed by Big Hit Music, he debuted as a member of the South Korean boy band BTS in 2013.",
        "Jung Ho-seok, better known by his stage name J-Hope, is a South Korean rapper, singer-songwriter, dancer, and record producer. He made his debut as a member of South Korean boy band BTS in 2013, under Big Hit Entertainment. J-Hope released his first solo mixtape, Hope World, in 2018.",
        "Park Chan-yeol, better known mononymously as Chanyeol, is a South Korean rapper, singer, songwriter, producer, actor and model. He is a member of the South Korean-Chinese boy group Exo, its sub-group Exo-K and sub-unit Exo-SC",
        "Jennie Kim, known mononymously as Jennie, is a South Korean singer and rapper. Born and raised in South Korea, Jennie studied in New Zealand for five years before returning to South Korea in 2010. She debuted as a member of the girl group Blackpink, formed by YG Entertainment, in August 2016."
        ],
        [
        "Park Ji-min, known mononymously as Jimin, is a South Korean singer and dancer. In 2013, he made his debut as a member of the South Korean boy group BTS, under the record label Big Hit Entertainment.",
        "Ahn Ji-young is a South Korean singer and songwriter. She is the main vocalist and only remaining member of South Korean indie band Bolbbalgan4. In 2014, she was featured on the television programme Superstar K 6, and debuted as a member of Bolbbalgan4 along with Woo Ji-yoon in 2016.",
        "Kim Seok-jin, also known professionally as Jin, is a South Korean singer, songwriter, and member of the South Korean boy band BTS. Kim has co-written and released three solo tracks with BTS: Awake in 2016, Epiphany in 2018, and Moon in 2020, all of which have charted on South Korea's Gaon Digital Chart.",
        "Kim Tae-hyung, also known professionally as V, is a South Korean singer and songwriter. A member of the South Korean boy band BTS, V has released three solo tracks under the band's name: Stigma in 2016, Singularity in 2018, and Inner Child in 2020, all of which have charted on South Korea's Gaon Digital Chart.",
        "Jeon Jung-kook, known mononymously as Jungkook, is a South Korean singer and songwriter. He is the youngest member and vocalist of the South Korean boy band BTS."
        ],[
        "BTS (Korean: 방탄소년단; RR: Bangtan Sonyeondan), also known as the Bangtan Boys, is a South Korean boy band formed in 2010 and debuting in 2013 under Big Hit Entertainment. The septet—consisting of members Jin, Suga, J-Hope, RM, Jimin, V, and Jungkook—co-writes and co-produces much of their own material.",
       "Blackpink (Hangul: 블랙핑크), stylized as BLACKPINK or BLΛƆKPIИK, is a South Korean girl group formed by YG Entertainment and the first girl group to debut under the same entertainment company seven years after 2NE1. The group consists of four members: Jennie, Lisa, Jisoo, and Rosé.",
        "Twice is a South Korean girl group formed by JYP Entertainment. The group is composed of nine members: Nayeon, Jeongyeon, Momo, Sana, Jihyo, Mina, Dahyun, Chaeyoung, and Tzuyu. Twice was formed under the television program Sixteen and debuted on October 20, 2015, with the extended play The Story Begins.",
        "Aespa is a South Korean girl group formed by SM Entertainment. The group consists of four members: Karina, Giselle, Winter, and Ningning. They debuted on November 17, 2020, with the single Black Mamba",
        "Tomorrow X Together, commonly known as TXT, is a South Korean boy band formed by Big Hit Music. The group consists of five members: Yeonjun, Soobin, Beomgyu, Taehyun and HueningKai. They debuted on March 4, 2019 with the extended play The Dream Chapter: Star."],
            ]
    
    
    @IBAction func searchButtonAction(_ sender: Any) {
        ShowNextImagesOutlet.isHidden = false
        ShowPrevImagesOutlet.isHidden = false
        if((rapper_keywords.contains(searchTextField.text!.uppercased()))){
            
            topic = 1
            c = rapper_keywords.firstIndex(of:searchTextField.text!.uppercased())!
            print(c)
            rapper_keywords.firstIndex(of:searchTextField.text!)
            resultImage.image = UIImage(named: arr[topic-1][c])
            //var c = rapper_keywords.firstIndex(of:searchTextField.text!)
            topicInfoText.text = topics_array[topic-1][c]
            if(c == 0 ){
                ShowPrevImagesOutlet.isEnabled = false
                ShowNextImagesOutlet.isEnabled = true
            }
            
            else if(c == 4){
                ShowNextImagesOutlet.isEnabled = false
                ShowPrevImagesOutlet.isEnabled = true
            }
            else{
                ShowPrevImagesOutlet.isEnabled = true
                ShowNextImagesOutlet.isEnabled = true
            }
            
        }
        
        else if((vocals_keywords.contains(searchTextField.text!.uppercased()))){
            
            topic = 2
            c = vocals_keywords.firstIndex(of:searchTextField.text!.uppercased())!
            print(c)
            vocals_keywords.firstIndex(of:searchTextField.text!)
            resultImage.image = UIImage(named: arr[topic-1][c])
            //var c = rapper_keywords.firstIndex(of:searchTextField.text!)
            topicInfoText.text = topics_array[topic-1][c]
            if(c == 0){
                ShowPrevImagesOutlet.isEnabled = false
                ShowNextImagesOutlet.isEnabled = true
                
            }
            else if(c == 4){
                ShowNextImagesOutlet.isEnabled = false
                ShowPrevImagesOutlet.isEnabled = true
            }
            else{
                ShowPrevImagesOutlet.isEnabled = true
                ShowNextImagesOutlet.isEnabled = true
            }
            
        }
        else if((group_keywords.contains(searchTextField.text!.uppercased()))){
            
            topic = 3
            c = group_keywords.firstIndex(of:searchTextField.text!.uppercased())!
            print(c)
            group_keywords.firstIndex(of:searchTextField.text!)
            resultImage.image = UIImage(named: arr[topic-1][c])
            //var c = group_keywords.firstIndex(of:searchTextField.text!)
            topicInfoText.text = topics_array[topic-1][c]
            print(topics_array[topic-1][c])
            
            if(c == 0){
                ShowPrevImagesOutlet.isEnabled = false
                print("group")
                print(c)
                print(ShowNextImagesOutlet.isEnabled)
                ShowNextImagesOutlet.isEnabled = true
            }
            else if(c == 4){
                ShowNextImagesOutlet.isEnabled = false
                ShowPrevImagesOutlet.isEnabled = true
            }
            else{
                ShowPrevImagesOutlet.isEnabled = true
                ShowNextImagesOutlet.isEnabled = true
                
            }
            
        }
        else {
            resultImage.image = UIImage(named: "sorry")
            
            topicInfoText.text = ""
            ShowNextImagesOutlet.isHidden = true
            ShowPrevImagesOutlet.isHidden = true
           // resetOutlet.isHidden = false
        }
        resetOutlet.isHidden = false
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("testing is editing")
        print(searchTextField.isEditing)
        searchButtonOutlet.isEnabled = false
        ShowNextImagesOutlet.isHidden = true
        ShowPrevImagesOutlet.isHidden = true
        resetOutlet.isHidden = true
        
   
    }
   
    @IBAction func editSearchChanged(_ sender: Any) {
        var textEnterd = searchTextField.text!;
        if textEnterd.isEmpty{
            searchButtonOutlet.isEnabled = false
        }
        else{
            searchButtonOutlet.isEnabled = true
        }
    }
    

    func DetailsDisplay(_ topic: Int, _ c: Int) {
        
        resultImage.image = UIImage(named: arr[topic-1][c])
        topicInfoText.text = topics_array[topic-1][c]
         
    }
    
    
}

