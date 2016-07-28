//
//  HSTableViewCell.m
//  UIFont字体展示
//
//  Created by LiHuashan on 16/6/12.
//  Copyright © 2016年 Huashan. All rights reserved.
//

#import "HSTableViewCell.h"
#import "FontModel.h"

@implementation HSTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)tableViewCellWithTableView:(UITableView *)tableView {
    
    static  NSString  * const cellIdentifier = @"HSTableViewCell";
    
    HSTableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!tableViewCell) {
        
        tableViewCell = [[self alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentifier];
    }
    
    return tableViewCell;
}

- (void)showForFontModel:(FontModel *)fontModel {
    
    self.textLabel.text = fontModel.fontText;
    self.textLabel.font = fontModel.font;
    self.detailTextLabel.text = fontModel.fontName;
}

@end
