//
//  HSTableViewController.m
//  UIFont字体展示
//
//  Created by LiHuashan on 16/6/12.
//  Copyright © 2016年 Huashan. All rights reserved.
//

#import "HSTableViewController.h"
#import "HSTableViewCell.h"
#import "FontModel.h"
#import "HSFontDisplayViewController.h"

@interface HSTableViewController () {
    
  //  NSArray *_fontsArray;
}

@property (nonatomic, strong) NSMutableArray *fontModelsMutableArray;

@end

@implementation HSTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.navigationItem.title = @"UIFont字体展示";
}

- (NSMutableArray *)fontModelsMutableArray {
    
    if (!_fontModelsMutableArray) {
        
        NSArray *fontsArray = [UIFont familyNames];
        NSUInteger count = fontsArray.count;
        
        _fontModelsMutableArray = [NSMutableArray arrayWithCapacity:count];
        
        for (int i = 0; i < count; i++) {
            
            FontModel *fontModel = [FontModel fontModelWithText:@"abc&ABC123!" fontName:fontsArray[i] size:30.];
            [_fontModelsMutableArray addObject:fontModel];
        }
    }
    
    return _fontModelsMutableArray;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.fontModelsMutableArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HSTableViewCell *tableViewCell = [HSTableViewCell tableViewCellWithTableView:tableView];
    
    [tableViewCell showForFontModel:self.fontModelsMutableArray[indexPath.row]];
    
    return tableViewCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 75;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    HSFontDisplayViewController *fontDisplayViewController = [[HSFontDisplayViewController alloc] init];
    FontModel *fontModel = self.fontModelsMutableArray[indexPath.row];
    fontDisplayViewController.fontModel = fontModel;
    [self.navigationController pushViewController:fontDisplayViewController animated:YES];
    
    NSLog(@"字体名：%@", fontModel.fontName);
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
