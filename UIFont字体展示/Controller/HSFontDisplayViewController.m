//
//  HSFontDisplayViewController.m
//  UIFont字体展示
//
//  Created by LiHuashan on 16/6/14.
//  Copyright © 2016年 Huashan. All rights reserved.
//

#import "HSFontDisplayViewController.h"
#import "FontModel.h"

@interface HSFontDisplayViewController ()

@end

@implementation HSFontDisplayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 100)];
    [self.view addSubview:textLabel];
    textLabel.text = self.fontModel.fontText;
    textLabel.font = self.fontModel.font;
    textLabel.textAlignment = NSTextAlignmentCenter;
    
    UILabel *fontTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(textLabel.frame) + 15, self.view.frame.size.width, 40)];
    [self.view addSubview:fontTextLabel];
    fontTextLabel.text = self.fontModel.fontName;
    fontTextLabel.textAlignment = NSTextAlignmentCenter;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
