//
//  CheckSelectButton.m
//  BaoLiHXSH
//
//  Created by KevinSoon on 11/5/17.
//  Copyright © 2017年 com.baoli. All rights reserved.
//

#import "CheckSelectButton.h"

@implementation CheckSelectButton

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self setup];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (CGFloat)autoWidth
{
    CGRect rect = [self.titleLabel.text boundingRectWithSize:CGSizeMake(0, 18) options:NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:self.titleLabel.font} context:nil];
    return rect.size.width + 36;
}

- (void)setup
{
    self.titleEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    //设置按钮图片
    [self setImage:[UIImage imageNamed:@"checkbox-m"] forState:UIControlStateNormal];
    [self setImage:[UIImage imageNamed:@"checkbox"] forState:UIControlStateSelected];
    
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    //设置字体大小
    self.titleLabel.font = [UIFont systemFontOfSize:14.f];
}

@end
