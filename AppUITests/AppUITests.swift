import XCTest

final class MyAppUITests: XCTestCase {

    override func setUpWithError() throws {
        // 在每个测试方法之前运行
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        // 启动应用
        let app = XCUIApplication()
        app.launch()

        // 检查一个按钮是否存在（假设按钮的标题为“Start”）
        XCTAssertTrue(app.buttons["Start"].exists)
    }
}
