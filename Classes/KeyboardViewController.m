//
//  KeyboardViewController.m
//  KeyboardAnimationExample
//
//  Copyright http://iphoneapp-dev.blogspot.com/ All rights reserved.
//

#import "KeyboardViewController.h"

@implementation KeyboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	//UIBarButtonItem* btnNext = [[ UIBarButtonItem alloc] initWithTitle:@"Next" style: UIBarButtonItemStyleBordered target: self action: @selector(btnNext_Clicked:)];
	//self.navigationItem.rightBarButtonItem = btnNext;
	//[btnNext release];
	
	UIImageView* imgLogo = [ [ UIImageView alloc] initWithImage: [ UIImage imageNamed:@"apple.png"]];
	self.navigationItem.titleView = imgLogo;
	[imgLogo release];
}

- (void)setViewMovedUp:(BOOL)movedUp
{
    [UIView beginAnimations:nil context:NULL];
    
    [UIView setAnimationDuration:0.3];
    
    
    CGRect rect = self.view.frame;
    
    if (movedUp){        
		if(rect.origin.y == 0)
			rect.origin.y = self.view.frame.origin.y - 215;
    }
	else{        
		if(rect.origin.y < 0)
			rect.origin.y = self.view.frame.origin.y + 215;
    }	
	self.view.frame = rect;
    
    [UIView commitAnimations];
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
	[self setViewMovedUp:YES];
	return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[self setViewMovedUp:NO];
	[textField resignFirstResponder];
	return YES;
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
