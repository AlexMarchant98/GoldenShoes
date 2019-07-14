//
//  BundleLoadingTests.swift
//  GoldenShoesTests
//
//  Created by Alex Marchant on 13/07/2019.
//  Copyright © 2019 Alex Marchant. All rights reserved.
//

import XCTest
@testable import GoldenShoes

/// Tests that content can be loaded from our app bundle.
class BundleLoadingTests: XCTestCase {
    
    /// Tests decoding a type from JSON.
    func testDecoding() {
        _ = Bundle.main.decode([FAQEntry].self, from: "faqs.json")
    }
    
}

