//
//  MyActivity.swift
//  Lesson11
//
//  Created by Alex on 19.05.2021.
//

import UIKit

class MyActivity: UIActivity {

    private var text: String = ""
    
    override class var activityCategory: UIActivity.Category {
        return .share
    }
    
    override var activityType: UIActivity.ActivityType? {
        return UIActivity.ActivityType("MyActivity")
    }
    
    override var activityTitle: String? {
        return "My Printer"
    }
    
    override var activityImage: UIImage? {
        return UIImage(named: "printer")
    }
 
    override func canPerform(withActivityItems activityItems: [Any]) -> Bool {
        return true
    }
    
    override func prepare(withActivityItems activityItems: [Any]) {
        text = activityItems.first as? String ?? "Error"
    }
    
    override func perform() {
        print(text)
        activityDidFinish(true)
    }
}
