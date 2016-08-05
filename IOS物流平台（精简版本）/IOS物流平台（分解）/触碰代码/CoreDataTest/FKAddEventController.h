//
//  FKAddEventController.h
//  CoreDataTest
//
//  Created by yeeku on 
//  Copyright (c) 2013年 crazyit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FKAddEventController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *eventField;
- (IBAction)finishEdit:(id)sender;
@end
