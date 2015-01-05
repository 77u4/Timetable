//
//  Lesson.swift
//  Timetable
//
//  Created by Jannis on 04.01.15.
//  Copyright (c) 2015 Jannis Hutt. All rights reserved.
//

import Foundation

class Lesson {
    let name: String
    let onTimetable: Int
    let time: (h: Int, m:Int)
    let duration: Duration
    let weekday: Weekday
    let teacher: String
    let room: String
    
    init(let name: String, let onTimetable: Int, let time: (h:Int, m:Int), let duration: Duration, let weekday: Weekday, let teacher: String, let room: String){
        self.name = name
        self.onTimetable = onTimetable
        self.time = time
        self.duration = duration
        self.weekday = weekday
        self.teacher = teacher
        self.room = room
    }
    
    struct Duration {
        func toTimeTuple(lessons:Int) -> (h: Int, m:Int){
            var h = 0,
            m = 0,
            help = lessons
            
            while help > 0 {
                m += 45
                help = help - 1
            }
            while m >= 60 {
                m = m - 60
                h += 1
            }
            
            return (h, m)
        }
    }
    
    enum Weekday: Int {
        case Monday = 1
        case Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    }
    
}
