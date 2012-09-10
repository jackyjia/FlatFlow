//
//  FlowCoverViewController.m
//  FlowCover
//
//  Created by William Woody on 12/13/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import "FlowCoverViewController.h"

@implementation FlowCoverViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/
@synthesize currentNo;
@synthesize totalNo;


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    return ((interfaceOrientation == UIInterfaceOrientationLandscapeLeft) ||
			(interfaceOrientation == UIInterfaceOrientationLandscapeRight));
}


- (void)didReceiveMemoryWarning 
{
    [super didReceiveMemoryWarning];
}


- (void)dealloc 
{
    [currentNo release];
    [totalNo release];
    [super dealloc];
}

/************************************************************************/
/*																		*/
/*	FlowCover Callbacks													*/
/*																		*/
/************************************************************************/

- (int)flowCoverNumberImages:(FlowCoverView *)view
{
    totalNo.text = [NSString stringWithFormat:@"%d", 64];
	return 64;
}

- (UIImage *)flowCover:(FlowCoverView *)view cover:(int)image
{
	switch (image % 6) {
		case 0:
		default:
			return [UIImage imageNamed:@"a.png"];
		case 1:
			return [UIImage imageNamed:@"b.png"];
		case 2:
			return [UIImage imageNamed:@"c.png"];
		case 3:
			return [UIImage imageNamed:@"x.png"];
		case 4:
			return [UIImage imageNamed:@"y.png"];
		case 5:
			return [UIImage imageNamed:@"z.png"];
	}
}

- (void)flowCover:(FlowCoverView *)view didSelect:(int)image
{
	//NSLog(@"Selected Index %d",image);
    currentNo.text = [NSString stringWithFormat:@"%d", image+1];
}


@end
