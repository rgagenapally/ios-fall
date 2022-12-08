//
//  ViewController.swift
//  Gagenapally_WordGuess
//
//  Created by Gagenapally,Roshni Damodar Reddy on 10/19/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    
    @IBOutlet weak var playButtonOutlet: UIButton!
    
    @IBOutlet weak var guessButtonOutlet: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    var c = 0
    var lettersGuessed = ""
    var wordToGuess = ""
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var arr = [["Popular character name played by Mahesh babu","Ajay"],
                ["The most popular Kpop Boys Band","BTS"],
                ["First Captain to win all 3 cups in cricket","Dhoni"],
                ["Movie based on cricket in Bollywood","Lagaan"],
                ["Indian Air-hostess who saved many lives in flight hijack in Karachi","Neerja"]
            ]
    var img = ["ajay","bts","m_s_dhoni","lagaan","neerja"]
    var newWord = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hintLabel.text = String(arr[c][c])
        wordToGuess = arr[c][c+1]
        //var length = 0
        userGuessLabel.text = ""
        for i in wordToGuess {
            userGuessLabel.text = userGuessLabel.text! + "_ "
        }
        guessButtonOutlet.isEnabled = false
        playButtonOutlet.isEnabled = false;
        
    }
    var check = 0, i = 0
    @IBAction func inputChanged(_ sender: UITextField) {
        
        //Read the data from the text field
               var textEnterd = guessLetterField.text!;
               //Consider only the last character by calling textEntered.last and trimming the white spaces.
               textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
                guessLetterField.text = textEnterd
               
               //Check whether the entered text is empty or not to enable check button.
               if textEnterd.isEmpty{
                   guessButtonOutlet.isEnabled = false
               }
               else{
                   guessButtonOutlet.isEnabled = true
               }
        
        
    }
    
    
    
    
    
    @IBAction func guessLetterButtonPressed(_ sender: Any) {
        //Get the text from the text field.
        var letter = guessLetterField.text!
              
              //Replace the guessed letter if the letter is part of the word.
              lettersGuessed = lettersGuessed + letter
               var revealedWord = ""
        for l in wordToGuess.uppercased(){
                  if lettersGuessed.contains(l){
                      revealedWord += "\(l)"
                  }
                  else{
                      revealedWord += "_ "
                  }
              }
        
              //Assigning the word to displaylabel after a guess
        userGuessLabel.text = revealedWord
        guessLetterField.text = ""
              
              //If the word is guessed correctly, we are enabling play again button and disabling the check button.
              if userGuessLabel.text!.contains("_") == false{
             playButtonOutlet.isEnabled = true;
             guessButtonOutlet.isEnabled = false;
                  displayImage.isHidden = false
                  displayImage.image = UIImage.init(named: img[c])
                  c = c+1
                  revealedWord = ""
                  lettersGuessed = ""
                  wordsGuessedLabel.text!.removeLast()
                  wordsRemainingLabel.text!.removeLast()
                  wordsGuessedLabel.text = wordsGuessedLabel.text! + "\(c)"
                  wordsRemainingLabel.text = wordsRemainingLabel.text! + String(5 - c)
                  totalWordsLabel.text = totalWordsLabel.text!
             
              }
        else {
            print("test")
             guessButtonOutlet.isEnabled = false
           
             //playButtonOutlet.isHidden = true;
        }
             
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        print(arr.count)
        if(c == arr.count){
            c = 0
            statusLabel.text = "Congratulations, You are done, Please start over again"
            reset()
            wordsGuessedLabel.text!.removeLast()
            wordsRemainingLabel.text!.removeLast()
            wordsGuessedLabel.text = wordsGuessedLabel.text! + "0"
            wordsRemainingLabel.text = wordsRemainingLabel.text! + "5"
            displayImage.isHidden = false
            displayImage.image = UIImage.checkmark
        }
        else {
            reset()
        }
        
    }
    
    func reset(){
        hintLabel.text = String(arr[c][0])
        print(hintLabel.text!)
        wordToGuess = arr[c][1]
        userGuessLabel.text = ""
        
        displayImage.isHidden = true
        print("hint label")
        print(wordToGuess)
        
        playButtonOutlet.isEnabled = false;
       
        for i in wordToGuess {
            userGuessLabel.text = userGuessLabel.text! + "_ "
        }
        
    }
        
}

