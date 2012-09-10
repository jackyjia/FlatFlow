//
//  FlowCoverViewController.h
//  FlowCover
//
//  Created by William Woody on 12/13/08.
//  Copyright __MyCompanyName__ 2008. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlowCoverView.h"

@interface FlowCoverViewController : UIViewController <FlowCoverViewDelegate>
{

}

@property (retain, nonatomic) IBOutlet UILabel *currentNo;
@property (retain, nonatomic) IBOutlet UILabel *totalNo;

@end

