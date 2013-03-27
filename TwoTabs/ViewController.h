//
//  ViewController.h
//  TwoTabs
//
//  Created by David Casseres on 2/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong)IBOutlet UIButton* fileButton;
@property(nonatomic, strong)IBOutlet UIButton* linkButton;

- (IBAction)fileButtonTouched:(id)sender;

- (IBAction)linkButtonTouched:(id)sender;

@end
