//: Swift 4 Stacks and Generics

import UIKit
import Foundation

class Node<T> {
    let value: T
    var next: Node?
    init(value: T) {
        self.value = value
    }
}

class Stack<T> {
    
    var top: Node<T>?
    
    func push(_ value: T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    }
    
    func pop() -> T? {
        let currentTop = top
        top = top?.next
        return currentTop?.value
    }
    
    func peek() -> T? {
        return top?.value
    }
    
}

struct User {
    let name: String
    let username: String
}

let ayas = User(name: "Daniel", username: "@danielnimafa")
let umak = User(name: "Bejo", username: "@bejoo")

let userStack = Stack<User>()
userStack.push(ayas)
userStack.push(umak)

let firstUserPop = userStack.pop()
print(firstUserPop?.name ?? "NULL")

let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)

stack.peek()

let firstPop = stack.pop()
stack.peek()
let secondPop = stack.pop()
stack.peek()
let thirdPop = stack.pop()
stack.peek()
let finalPop = stack.pop()
stack.peek()
