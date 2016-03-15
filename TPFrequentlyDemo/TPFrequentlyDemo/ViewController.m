//
//  ViewController.m
//  TPFrequentlyDemo
//
//  Created by wang on 16/3/15.
//  Copyright © 2016年 wp. All rights reserved.
//

#import "ViewController.h"
#import "TPAudio.h"
@interface ViewController ()

@end

@implementation ViewController

TPSINGLETON_IMP(ViewController)

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSError *error;
    [[TPAudio sharedInstance] startRecordMp3WithProgress:^(NSInteger recordSeconds) {
        NSLog(@"pre %ld",recordSeconds);
    } error:&error];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSError *error1;
        [[TPAudio sharedInstance] stopRecordMp3WithCompletion:^(NSString *fullPath, NSInteger duration, NSError *error) {
            NSLog(@"dur %ld  path: %@", duration, fullPath);
        } error:&error1];
        NSLog(@"error %@",error);
        
        
    });

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
