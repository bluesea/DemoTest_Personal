//
//  FCViewController.m
//  Demo_4
//
//  Created by pingyandong on 14-7-30.
//  Copyright (c) 2014年 平 艳东. All rights reserved.
//

#import "FCViewController.h"
#import "EOCPerson.h"
#import "EOCPerson+Firendship.h"
#import "EOCPerson+Play.h"

@interface FCViewController ()

@end

@implementation FCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    EOCPerson *person = [[EOCPerson alloc]initWithFirstName:@"jack" lastName:@"dasada"];
    [person addFriend:nil];
    [person goToPlay];
    

    //添加势力变量
    person.friendsTest = @[@"312",@"3213213"];
    NSLog(@"%@",person.friendsTest);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
