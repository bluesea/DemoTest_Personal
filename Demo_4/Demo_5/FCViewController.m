//
//  FCViewController.m
//  Demo_5 类别添加属性
//
//  Created by pingyandong on 14-7-30.
//  Copyright (c) 2014年 平 艳东. All rights reserved.
//

#import "FCViewController.h"
#import "NSIndexPath+FileIndexPath.h"

@interface FCViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)IBOutlet UITableView *tableView;
@property (nonatomic,strong,readwrite) NSArray *testArray;
@end

@implementation FCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _testArray = @[@"文件1",@"文件2",@"文件3",@"文件4",@"文件5",@"文件6",@"文件7",@"文件8",@"文件9",@"文件9"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *indetifier = @"TEST";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:indetifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:indetifier];
    }
    NSInteger row = indexPath.row;
    indexPath.filePage = row + 1000;
    indexPath.fileName = _testArray[row];
    cell.textLabel.text = _testArray[row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@",indexPath.fileName);
}

@end
