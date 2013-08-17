//
//  KeyboardAnimationExampleAppDelegate.h
//  KeyboardAnimationExample
//
//  Copyright http://iphoneapp-dev.blogspot.com/ All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyboardAnimationExampleAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

