//
//  ViewController.m
//  media播放器
//
//  Created by lwb on 16/6/2.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>
#import <CoreGraphics/CoreGraphics.h>
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController
MPMediaPickerController *mpc;
MPMediaPickerController *musicPlayer;
MPMediaPickerController *IterList;
- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *bn = [[UIBarButtonItem alloc] initWithTitle:@"选择音乐" style:UIBarButtonItemStyleBordered target:self action:@selector(choose:)];
    self.navigationItem.rightBarButtonItem = bn;
    musicPlayer = [[MPMediaPickerController alloc]initWithMediaTypes:MPMediaTypeAnyAudio];
    mpc.delegate = self;
    mpc.prompt = @"选择您喜欢的音乐";
    mpc.allowsPickingMultipleItems = YES;
    mpc.showsCloudItems = YES;
    

    // Do any additional setup after loading the view, typically from a nib.
}
- (void)choose:(id)sender
{
    [self presentViewController:mpc animated:YES completion:NULL];
}
- (void)mediapicker:(MPMediaPickerController *)mediaPicker didPickerMediaItems:(MPMediaItemCollection *)mediaItemCollection
{
    itemList = mediaItemCollection;
    [musicPlayer]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
