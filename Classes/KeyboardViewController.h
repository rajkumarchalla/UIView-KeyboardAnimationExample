//
//  KeyboardViewController.h
//  KeyboardAnimationExample
//
//  Copyright http://iphoneapp-dev.blogspot.com/ All rights reserved.
//

#import <UIKit/UIKit.h>


@interface KeyboardViewController : UIViewController <UITextFieldDelegate> {

	IBOutlet UITextField *txtValue1;
	IBOutlet UITextField *txtValue2;
	IBOutlet UITextField *txtValue3;
}

- (void)setViewMovedUp:(BOOL)movedUp;

@end
