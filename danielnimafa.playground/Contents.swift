//: Playground - noun: a place where people can play

import Foundation

let calendar = Calendar.current
let rightNow = Date()

// Create Date from components
let dateComponents = DateComponents(calendar: calendar, year: 1990, month: 2, day: 27)
let composedDate = calendar.date(from: dateComponents)

// Get Components
let componentsFromRightNow = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: rightNow)
let dayOfWeek = calendar.component(.weekday, from: rightNow)

// Adding a component to a date (like 10 days away)
let tenDaysFromNow = calendar.date(byAdding: .day, value: 10, to: rightNow)
