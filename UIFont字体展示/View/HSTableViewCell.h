//
//  HSTableViewCell.h
//  UIFont字体展示
//
//  Created by LiHuashan on 16/6/12.
//  Copyright © 2016年 Huashan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FontModel;

@interface HSTableViewCell : UITableViewCell

+ (instancetype)tableViewCellWithTableView:(UITableView *)tableView;

- (void)showForFontModel:(FontModel *)fontModel;

@end
