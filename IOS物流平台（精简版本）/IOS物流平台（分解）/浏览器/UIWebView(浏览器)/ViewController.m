//
//  ViewController.m
//  UIWebView(浏览器)
//
//  Created by lwb on 16/5/7.
//  Copyright © 2016年 lwb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
UIActivityIndicatorView *activityIndicator;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.webview.scalesPageToFit = YES;
    self.webview.delegate = self;
    activityIndicator = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)];
    [activityIndicator setCenter:self.view.center];
    activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
    [self.view addSubview:activityIndicator];
    activityIndicator.hidden = YES;
    [self touchview:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    activityIndicator.hidden = NO;
    [activityIndicator startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [activityIndicator stopAnimating];
    activityIndicator.hidden = YES;
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"" message:[error localizedDescription] delegate:nil cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
    [alert show];
    
}

- (IBAction)touchview:(id)sender {
    [self.addr resignFirstResponder];
    NSString *reqAddr = self.addr.text;
    if (![reqAddr hasPrefix:@"http://"]) {
        reqAddr = [NSString stringWithFormat:@"http://%@",reqAddr];
        self.addr.text;
    }
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:reqAddr]];
    [self.webview loadRequest:request];
    
}
@end
