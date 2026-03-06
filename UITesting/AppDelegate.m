// AppDelegate.m
#import "AppDelegate.h"
#import "MainWindowController.h"

@implementation AppDelegate {
    MainWindowController *_mainWindowController;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    _mainWindowController = [[MainWindowController alloc] init];
    [_mainWindowController showWindow:self];
}

@end
