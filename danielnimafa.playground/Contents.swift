//: Playground - noun: a place where people can play

import UIKit
import Foundation


// Stacks --------------------------------------------------------

public struct Stack<T> {
    
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
    
}

var tumpuk = Stack<Int>()
tumpuk.push(1)
tumpuk.push(2)
tumpuk.push(3)
tumpuk.push(4)
tumpuk.push(5)
tumpuk.pop()
print(tumpuk.top!)

//class Node<T> {
//    let value: T
//    var next: Node?
//    init(value: T) {
//        self.value = value
//    }
//}
//
//class Stack<T> {
//
//    var top: Node<T>?
//
//    func push(_ value: T) {
//        let oldTop = top
//        top = Node(value: value)
//        top?.next = oldTop
//    }
//
//    func pop() -> T? {
//        let currentTop = top
//        top = top?.next
//        return currentTop?.value
//    }
//
//    func peek() -> T? {
//        return top?.value
//    }
//
//}
//
//struct User {
//    let name: String
//    let username: String
//}
//
//let ayas = User(name: "Daniel", username: "@danielnimafa")
//let umak = User(name: "Bejo", username: "@bejoo")
//
//let userStack = Stack<User>()
//userStack.push(ayas)
//userStack.push(umak)
//
//let firstUserPop = userStack.pop()
//print(firstUserPop?.name ?? "NULL")
//
//let stack = Stack<Int>()
//stack.push(1)
//stack.push(2)
//stack.push(3)
//
//stack.peek()
//
//let firstPop = stack.pop()
//stack.peek()
//let secondPop = stack.pop()
//stack.peek()
//let thirdPop = stack.pop()
//stack.peek()
//let finalPop = stack.pop()
//stack.peek()



// LinkedList ----------------------------------------------------------------

public class Node<T> {
    
    var value: T
    
    var next: Node<T>?
    weak var previous: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    fileprivate var head: Node<T>?
    private var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node<T>? {
        return head
    }
    
    public var last: Node<T>? {
        return tail
    }
    
    public func append(value: T) {
        let newNode = Node(value: value)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node<T>? {
        
        if index >= 0 {
            var node = head
            var i = index
            
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        
        return nil
    }
    
    public func removaAll() {
        head = nil
        tail = nil
    }
    
    public func remove(node: Node<T>) -> T {
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        
        if next == nil {
            tail = prev
        }
        
        node.previous = nil
        node.next = nil
        
        return node.value
    }
}

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        var text = "["
        var node = head
        
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        
        return text + "]"
    }
}

let kucings = LinkedList<String>()
kucings.append(value: "Moky")
kucings.append(value: "Gembul")
kucings.append(value: "Molly")
kucings.append(value: "Cimong")

let numbers = LinkedList<Int>()
numbers.append(value: 3)
numbers.append(value: 7)
numbers.append(value: 9)

print(kucings.last?.value)

print(kucings.nodeAt(index: 0)!.value)

// ------------------------------------------------------------------------------

