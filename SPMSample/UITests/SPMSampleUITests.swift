//
//  Copyright © An Tran. All rights reserved.
//

import XCTest

class SPMSampleUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUp() {
        app = XCUIApplication()
        app.launch()
    }

    func testConvertText() {
        let textField = app.textFields["text_input"]
        textField.tap()
        textField.typeText("text")

        app.buttons["Convert it!"].tap()

        XCTAssertTrue(app.staticTexts["SPM:TEXT"].exists)
    }
}
