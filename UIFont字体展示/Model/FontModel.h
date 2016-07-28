//
//  FontModel.h
//  UIFont字体展示
//
//  Created by LiHuashan on 16/6/12.
//  Copyright © 2016年 Huashan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UIFont;

@interface FontModel : NSObject

+ (instancetype)fontModelWithText:(NSString *)text fontName:(NSString *)fontName size:(float)size;

@property (nonatomic, readonly, copy,) NSString *fontText; // 字体显示文本
@property (nonatomic, readonly, copy,) NSString *fontName; // 字体名
@property (nonatomic, readonly, strong,) UIFont *font; // 字体

@end
