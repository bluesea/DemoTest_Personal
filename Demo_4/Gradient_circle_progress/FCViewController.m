//
//  FCViewController.m
//  Gradient_circle_progress
//
//  Created by pingyandong on 14-7-30.
//  Copyright (c) 2014年 平 艳东. All rights reserved.
//

#import "FCViewController.h"
#import "CircleProgress.h"

static float percent = 0;

@interface FCViewController ()
{
    CircleProgress *progressView;
}
@end

@implementation FCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    progressView = [[CircleProgress alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:progressView];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)testAction:(id)sender{
    percent = 30;
    [progressView setPercent:percent animated:YES];
}

- (IBAction)repeatAction:(id)sender
{
//    for (int i = percent; i<100; i++) {
//        [progressView setPercent:i animated:YES];
//    }
    do {
        [progressView setPercent:percent animated:YES];
        percent += 0.1;
        
    } while (percent<=100);
    percent = 0;
}

- (IBAction)clearAction:(id)sender
{
    percent = 0;
    [progressView setPercent:percent animated:YES];
}
@end
