// MainWindowController.m
#import "MainWindowController.h"

@interface MainWindowController ()
@property (strong) NSButton *button;
@property (strong) NSTextField *label;
@end

@implementation MainWindowController

- (instancetype)init {
    self = [super initWithWindow:[[NSWindow alloc] initWithContentRect:NSMakeRect(0,0,400,200)
                                                            styleMask:(NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable)
                                                              backing:NSBackingStoreBuffered
                                                                defer:NO]];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    NSView *contentView = self.window.contentView;
    self.label = [[NSTextField alloc] initWithFrame:NSMakeRect(150, 120, 100, 24)];
    self.label.stringValue = @"Hello";
    self.label.editable = NO;
    self.label.bezeled = NO;
    self.label.drawsBackground = NO;
    [contentView addSubview:self.label];

    self.button = [[NSButton alloc] initWithFrame:NSMakeRect(150, 60, 100, 32)];
    self.button.title = @"Click Me";
    self.button.target = self;
    self.button.action = @selector(buttonClicked:);
    [contentView addSubview:self.button];
}

- (void)buttonClicked:(id)sender {
    self.label.stringValue = @"Button Clicked!";
}

@end
