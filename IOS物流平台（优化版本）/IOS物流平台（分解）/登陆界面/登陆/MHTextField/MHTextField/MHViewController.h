//
//  MHViewController.h
//  MHTextField
//
//  by lwb 16/6/3
//  Copyright (c) 2016 lwb school
//

#import <UIKit/UIKit.h>
#import "DemoTextField.h"

@interface MHViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
