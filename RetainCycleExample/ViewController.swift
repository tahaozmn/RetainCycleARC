//
//  ViewController.swift
//  RetainCycleExample
//
//  Created by Taha Özmen on 19.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var course : WeakCourse2? = WeakCourse2(name: "iOS Course", url: URL(string: "www.tahaozmn.com")!)
        var instructor : WeakInstructor2? = WeakInstructor2(name: "Taha Özmen")
        
        // weak reference
        course!.instructor = instructor
        instructor!.course = course
        
        course!.launch(launchedCourse: LaunchedCourse(title: "iOS"))
        
        course = nil
        instructor = nil
        
    }


}

