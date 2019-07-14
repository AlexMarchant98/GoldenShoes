//
//  ReturnsTextViewClass.swift
//  GoldenShoes
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import UIKit

/// A trivial text view subclass that loads Swift in Sixty Seconds chapters.
class ReturnsTextView: UITextView {
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func loadContent() {
        // load our text
        
        backgroundColor = .white
        isEditable = false
        
        guard let contentsFilepath = Bundle.main.path(forResource: "ReturnsProcess", ofType: "html") else {
            print("Could not find the 'ReturnsProcess.html' file")
            return
        }
        guard let themeFilepath = Bundle.main.path(forResource: "Theme", ofType: "css") else {
            print("Could not find the 'theme.css' file")
            return
        }
        
        do {
            var contents = try String(contentsOfFile: contentsFilepath)
            var themeContents = try String(contentsOfFile: themeFilepath)
            
            // Scale up fonts based on Dynamic Type.
            let metrics = UIFontMetrics(forTextStyle: .body)
            let scaledSize = metrics.scaledValue(for: 140)
            themeContents = themeContents.replacingOccurrences(of: "[FONTSIZE]", with: "\(scaledSize)")
            
            contents = contents.replacingOccurrences(of: "[STYLE]", with: themeContents)
            
            self.attributedText = contents.htmlToAttributedString
        } catch {
            
        }
        
        scrollsToTop = true
    }
}
