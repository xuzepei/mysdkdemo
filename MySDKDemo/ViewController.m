//
//  ViewController.m
//  MySDKDemo
//
//  Created by xuzepei on 2025/2/24.
//

#import "ViewController.h"
#import <MySDKWork/MySDKWork.h>

@interface ViewController ()
- (IBAction)clickedCallSDKBtn:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)clickedCallSDKBtn:(id)sender {
    
    NSLog(@"#### clickedCallSDKBtn");
    
    Test* t = [Test new];
    [t showTestAlert:self];
    
    //[Test showToast:self];
    
    [t showToast:self message:@"Toast message"];
    
}


@end
