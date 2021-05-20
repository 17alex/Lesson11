//
//  ViewController.swift
//  Lesson11
//
//  Created by Alex on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Share", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .regular)
        button.addTarget(self, action: #selector(pressShare), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(button)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        button.sizeToFit()
        button.center = view.center
    }
    
    @objc private func pressShare() {
        let shareText = "my Share Text for print 📤"
        let myActivity = MyActivity()
        
        let avc = UIActivityViewController(activityItems: [shareText], applicationActivities: [myActivity])
        avc.excludedActivityTypes = [.saveToCameraRoll, .postToFlickr, .postToVimeo]
        
        present(avc, animated: true)
    }
}

