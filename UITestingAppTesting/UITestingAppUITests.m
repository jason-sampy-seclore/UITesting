// UITestingAppUITests.m
#import <XCTest/XCTest.h>

@interface UITestingAppUITests : XCTestCase
@end

@implementation UITestingAppUITests

- (void)setUp {
    [super setUp];
    self.continueAfterFailure = NO;
    [[[XCUIApplication alloc] init] launch];
}

- (void)testButtonClickChangesLabel {
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *button = app.buttons[@"Click Me"];
    [button click];
    XCUIElement *label = app.staticTexts[@"Button Clicked!"];
    XCTAssertTrue(label.exists);
}

@end
