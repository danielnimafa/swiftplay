//: Playground - noun: a place where people can play

import UIKit

protocol Number {
    var floatValue: Float {get}
}

extension Float: Number {
    var floatValue: Float {
        return self
    }
}

extension Double: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension Int: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension UInt: Number {
    var floatValue: Float {
        return Float(self)
    }
}

let four: Float = 4
four.floatValue

var tiga: Double = 3
var empat: Float = 4

tiga.floatValue + empat

func +(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue + valueB.floatValue
}

func -(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue - valueB.floatValue
}

func /(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue / valueB.floatValue
}

func *(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue * valueB.floatValue
}

let x: Double = 1.457398475
let y: Int = 5
let q = x / y






class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
    
}

enum QuestionType: String {
    case trueFalse = "The sky is blue"
    case multipleChoice = "who is the ugliest Beatle: Bla, Bli, Blu"
    case shortAnswer  = "What is the capital of Oregon?"
    case essay = "in 50 word, explain molceular fusion."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
    case trueFalse = "True."
    case multipleChoice = "Bla"
    case shortAnswer = "Salem"
    case essay = "Aku adalah anak gembala selalu riang serta gembira"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        return randomQuestion
    }
}

let quiz = Quiz()
let question = quiz.generateRandomQuestion()
var printValue = "Question Type: \(question.type) \nQuery: \(question.query) \nAnswer: \(question.answer)"
print(printValue)







