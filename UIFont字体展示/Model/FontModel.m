//
//  FontModel.m
//  UIFont字体展示
//
//  Created by LiHuashan on 16/6/12.
//  Copyright © 2016年 Huashan. All rights reserved.
//

#import "FontModel.h"
#import <UIKit/UIKit.h>

@implementation FontModel

+ (instancetype)fontModelWithText:(NSString *)text fontName:(NSString *)fontName size:(float)size {
    
    FontModel *fontModel = [[FontModel alloc] init];
    fontModel.fontText = text;
    fontModel.fontName = fontName;
    fontModel.font = [UIFont fontWithName:fontName size:size];
    
    return fontModel;
}

- (void)setFontText:(NSString *)fontText {
    
    _fontText = fontText;
}

- (void)setFontName:(NSString *)fontName {
    
    _fontName = fontName;
}

- (void)setFont:(UIFont *)font {
    
    _font = font;
}

@end
