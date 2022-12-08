//
//  ViewController.swift
//  Gagenapally_Calculator
//
//  Created by Gagenapally,Roshni Damodar Reddy on 9/15/22.
//

import UIKit

class ViewController: UIViewController {

    
    var operand1:Double = 0
    var operand2:Double = 0
    var operators = "&"
    var dot = "&"
    
    
    @IBOutlet weak var reader: UILabel!
    
    @IBAction func acButton(_ sender: UIButton) {
        reader.text = ""
        operand1 = 0
        operand2 = 0
        dot = "&"
        operators = "&"
        
    }
    
    @IBAction func cButton(_ sender: UIButton) {
        if(operand1 != 0){
            operand1 = 0
        }
        else if(operand2 != 0){
            operand2 = 0
        }
        else {
            operators = ""
        }
    }
    
    @IBAction func changeSignButton(_ sender: UIButton) {
        if(operators == "+"){
            operators = "-"
        }
        else{
            operators = "+"
        }
    }
    
    @IBAction func divButton(_ sender: UIButton) {
        
        operators = "/"
        reader.text = reader.text! + operators
        dot = "&"
    }
    
    @IBAction func sevenButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0){
            operand2 = 7
            reader.text =  reader.text!  + String(Int(operand2))
        }
        else if(operand1 == 0 && operators == "&"){
            if(dot == "&"){
            operand1 = 7
            }
            reader.text = String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+7
            reader.text = reader.text! + "7"
        }
        
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+7
            reader.text = String(Int(operand1))
        }
        
        
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )
            print("operand2 for 7")
            if(s == ".0"){
                print(Double(String(Int(operand2)).appending(".").appending("7"))!)
                operand2 = Double(String(Int(operand2)).appending(".").appending("7"))!
                reader.text = reader.text! + ".7"
            }
            else{
                operand2 = Double(String((operand2)).appending("7"))!
                reader.text = reader.text! + "7"
            }
        }
        
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )
            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("7"))!
            }
            else{
                operand1 = Double(String((operand1)).appending("7"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func eightButton(_ sender: UIButton) {
        
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0 ){
            operand2 = 8
            reader.text = reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 8
            }
            reader.text =  String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+8
            reader.text = reader.text! + "8"
        }
        
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+8
            reader.text = String(Int(operand1))
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )
            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("8"))!
                reader.text = reader.text! + ".8"
            }
            else{
                operand2 = Double(String((operand2)).appending("8"))!
                reader.text = reader.text! + "8"
            }
         
        }
        
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )
            
            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("8"))!
            }
            else{
                operand1 = Double(String((operand1)).appending("8"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func nineButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0 ){
            operand2 = 9
            reader.text =  reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 9
            }
            reader.text =  String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+9
       
            reader.text = reader.text! + "9"
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )

            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("9"))!
                reader.text = reader.text! + ".9"
            }
            else{
                operand2 = Double(String((operand2)).appending("9"))!
                reader.text = reader.text! + "9"
            }
          
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+9
            reader.text = String(Int(operand1))
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )
            print(operand1)
            print(s)
            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("9"))!
                print("value of operand2 after s ==0")
                print(operand1)
            }
            else{
                print("else block")
                operand1 = Double(String((operand1)).appending("9"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func mulButton(_ sender: UIButton) {
        operators = "*"
        reader.text = reader.text! + operators
        dot = "&"
    }
    
    @IBAction func fourButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0 ){
            operand2 = 4
            reader.text = reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 4
            }
            reader.text = String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+4
            reader.text = reader.text! + "4"
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )

            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("4"))!
                reader.text = reader.text! + ".4"
            }
            else{
                operand2 = Double(String((operand2)).appending("4"))!
                reader.text = reader.text! + "4"
            }
           }
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+4
            reader.text = String(Int(operand1))
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )

            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("4"))!
            }
            else{
                operand1 = Double(String((operand1)).appending("4"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func fiveButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0){
            operand2 = 5
            reader.text = reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 5
            }
            reader.text =  String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+5
            reader.text = reader.text! + "5"
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )

            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("5"))!
                reader.text = reader.text! + ".5"
            }
            else{
                operand2 = Double(String((operand2)).appending("5"))!
                reader.text = reader.text! + "5"
            }
         }
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+5
            reader.text = String(Int(operand1))
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )

            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("5"))!
            }
            else{
                operand1 = Double(String((operand1)).appending("5"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func sixButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0 ){
            operand2 = 6
            reader.text = reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 6
            }
            reader.text = String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+6
            reader.text = reader.text! + "6"
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )

            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("6"))!
                reader.text = reader.text! + ".6"
            }
            else{
                operand2 = Double(String((operand2)).appending("6"))!
                reader.text = reader.text! + "6"
            }
            }
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+6
           reader.text = String(operand1)
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )

            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("6"))!
            }
            else{
                operand1 = Double(String((operand1)).appending("6"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func subButton(_ sender: UIButton) {
        operators = "-"
        reader.text = reader.text! + operators
        dot = "&"
    }
    
    @IBAction func oneButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0 ){
            operand2 = 1
            reader.text = reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 1
            }
            reader.text = String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+1
             reader.text = reader.text! + "1"
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )

            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("1"))!
                reader.text = reader.text! + ".1"
            }
            else{
                operand2 = Double(String((operand2)).appending("1"))!
                reader.text = reader.text! + "1"
            }
           }
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+1
                reader.text = String(Int(operand1))
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )

            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("1"))!
            }
            else{
                operand1 = Double(String((operand1)).appending("1"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0 ){
            operand2 = 2
            reader.text = reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 2
            }
            reader.text = String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+2
            reader.text = reader.text! + "1"
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )
           
            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("2"))!
                reader.text = reader.text! + ".2"
            }
            else{
                operand2 = Double(String((operand2)).appending("2"))!
                reader.text = reader.text! + "2"
            }
          }
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+2
            reader.text = String(Int(operand1))
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )

            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("2"))!
            }
            else{
                operand1 = Double(String((operand1)).appending("2"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func threeButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0 ) {
            operand2 = 3
            reader.text = reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 3
            }
            reader.text = String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+3
            reader.text = reader.text! + "3"
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand2).substring(from: (String(operand2).firstIndex(of: "."))! )

            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("3"))!
                reader.text = reader.text! + ".3"
            }
            else{
                operand2 = Double(String((operand2)).appending("3"))!
                reader.text = reader.text! + "3"
            }
         }
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+3
           reader.text = String(Int(operand1))
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )

            if(s == ".0"){
                operand1 = Double(String(Int(operand1)).appending(".").appending("3"))!
            }
            else{
                operand1 = Double(String((operand1)).appending("3"))!
            }
            reader.text = String(operand1)
        }
        
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        operators = "+"
        reader.text = reader.text! + operators
    }
    
    @IBAction func zeroButton(_ sender: UIButton) {
        if(operand1 != 0 &&  operators != "=" && operators != "&" && operand2 == 0 ){
            operand2 = 0
            reader.text = reader.text! + String(Int(operand2))
        }
        else if(operand1 == 0){
            if(dot == "&"){
            operand1 = 0
            }
           reader.text = String(Int(operand1))
        }
                
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "&"){
            operand2 = operand2*10+0
            reader.text = reader.text! + "0"
        }
        else if(operand1 != 0 && operators != "&" && operand2 != 0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )

            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("0"))!
                reader.text = reader.text! + ".0"
            }
            else{
                operand2 = Double(String((operand2)).appending("0"))!
                reader.text = reader.text! + "0"
            }
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0 && dot == "&"){
            operand1 = operand1*10+0
            reader.text = String(Int(operand1))
        }
        else if(operand1 != 0 && operators == "&" && operand2 == 0.0 && dot == "."){
            var s = String(operand1).substring(from: (String(operand1).firstIndex(of: "."))! )

            if(s == ".0"){
                operand2 = Double(String(Int(operand2)).appending(".").appending("0"))!
            }
            else{
                operand2 = Double(String((operand2)).appending("0"))!
            }
            reader.text = String(operand1)
        }
    }
    
    @IBAction func dotButton(_ sender: UIButton) {
        if(operators != "&" ){
            dot = "."
        }
        else if(operators == "&" && operand2 == 0.0){
            dot = "."
        }
       
    }
    
    @IBAction func modButton(_ sender: UIButton) {
        operators = "%"
        dot = "&"
        reader.text = reader.text! + operators
    }
    
    @IBAction func equalsButton(_ sender: UIButton) {
        if(operators == "/"){
            if(String(round(((Double(operand1)/Double(operand2))*100000))/100000.0) == "inf"){
                reader.text = reader.text! + "=" + "Error"
            }
            else{
            reader.text = reader.text! + "=" + String(round(((Double(operand1)/Double(operand2))*100000))/100000.0)
            }
            
            operand1 = 0
            operand2 = 0
            operators = "&"
            dot = "&"
            
        }
        else if(operators == "%"){
            reader.text = reader.text! + "=" + String(round(Double(operand1).truncatingRemainder(dividingBy: Double(operand2))*100)/100.0 )
            operand1 = 0
            operand2 = 0
            operators = "&"
            dot = "&"
            
        }
        else if(operators == "*"){
            var a = String(operand1*operand2)
            var s = a.substring(from: (a.firstIndex(of: "."))! )
            print(s)
            if(s.contains("0")){
               reader.text = reader.text! + "=" + String(Int(operand1*operand2))
            }
            else{
                reader.text = reader.text! + "=" +  String((operand1*operand2))
            }
            operand1 = 0
            operand2 = 0
            operators = "&"
            dot = "&"
        }
        else if(operators == "-"){
            var a = String(operand1-operand2)
            var s = a.substring(from: (a.firstIndex(of: "."))! )
            if(s.contains("0")){
            reader.text = reader.text! + "=" + String(Int(operand1-operand2))
            }
            else{
                reader.text = reader.text! + "=" + String((operand1-operand2))
            }
            operand1 = 0
            operand2 = 0
            operators = "&"
            dot = "&"
        }
        else if(operators == "+"){
            
            var a = String(operand1+operand2)
            var s = a.substring(from: (a.firstIndex(of: "."))! )
            if(s.contains("0")){
                reader.text = reader.text! + "=" +  String(Int(operand1+operand2))
            }
            else{
                reader.text = reader.text! + "=" + String((operand1+operand2))
            }
            operand1 = 0
            operand2 = 0
            operators = "&"
            dot = "&"
                
        }
        
        
    }
    
    
       

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

