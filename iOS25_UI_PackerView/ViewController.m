//
//  ViewController.m
//  iOS25_UI_PackerView
//
//  Created by 姚思远 on 16/4/5.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIPickerView * picker = [[UIPickerView alloc]initWithFrame:CGRectMake(0, 20, 320, 100)];
    
    picker.delegate = self;
    picker.dataSource = self;
    [self.view addSubview:picker];
    
}
/*该协议方法是用来决定在一个组里面有几行的*/
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    switch (component) {
        case 0:
            return 1;
            break;
        case 1:
            return 3;
            break;
        case 2:
            return 10;
            break;
        default:
            return 0;
            break;
    }
}
/*这个方法是决定由几个分区的*/
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}
/*该方法是决定每行的内容都是什么的*/
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component) {
        case 0:
             return @"firstComponent";
            break;
        case 1:
            return @"secondComponent";
            break;
        case 2:
            return @"thirdComponent";
            break;
        default:
            return nil;
            break;
    }
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    /*注:选中该行以后，内容应当从数据源中根据该方法的参数获取*/
    NSLog(@"选中该行");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
