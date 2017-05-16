//
//  ViewController.m
//  SelectButton
//
//  Created by KevinSoon on 16/5/17.
//  Copyright © 2017年 KevinSoon. All rights reserved.
//

#import "ViewController.h"
#import "CheckSelectButton.h"

@interface ViewController ()

@property (strong, nonatomic) CheckSelectButton *maleButton;
@property (strong, nonatomic) CheckSelectButton *femaleButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CheckSelectButton *maleButton = [CheckSelectButton buttonWithType:UIButtonTypeCustom];
    maleButton.frame = CGRectMake(self.view.frame.size.width/2, 100, 50, 50);
    [maleButton setTitle:@"男" forState:UIControlStateNormal];
    [self.view addSubview:maleButton];
    [maleButton addTarget:self action:@selector(selectSexButton:) forControlEvents:UIControlEventTouchUpInside];
    self.maleButton = maleButton;

    CheckSelectButton *femaleButton = [CheckSelectButton buttonWithType:UIButtonTypeCustom];
    femaleButton.frame = CGRectMake(self.view.frame.size.width/2, 150, 50, 50);
    [femaleButton setTitle:@"女" forState:UIControlStateNormal];
    [self.view addSubview:femaleButton];
    [femaleButton addTarget:self action:@selector(selectSexButton:) forControlEvents:UIControlEventTouchUpInside];
    self.femaleButton = femaleButton;

}

#pragma mark - 选择性别的方法
- (void)selectSexButton:(UIButton *)button
{
    if ([button isEqual:self.maleButton]) {
        
        self.femaleButton.selected = NO;
        self.maleButton.selected = YES;
        
    }else if ([button isEqual:self.femaleButton]){
        self.maleButton.selected = NO;
        self.femaleButton.selected = YES;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
