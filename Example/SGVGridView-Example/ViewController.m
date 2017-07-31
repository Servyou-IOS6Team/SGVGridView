//
//  ViewController.m
//  SGVGridView-Example
//
//  Created by 季风 on 2017/7/10.
//  Copyright © 2017年 servyou. All rights reserved.
//

#import "ViewController.h"
#import <SGVGridView/ServyouGridView.h>

@interface ViewController () <SGVGridViewDelegate>
@property (nonatomic, strong) SGVGridView *gridView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.gridView];
}

#pragma mark -
#pragma mark - SGVGridViewDelegate
-(void)didSelectedView:(SGVGridView *)dyLayoutView WithItem:(NSDictionary *)item {
    NSLog(@"%@:%@", item.sgvItemName, item.sgvExtraInfo);
}

#pragma mark -
#pragma mark - getter
-(SGVGridView *)gridView
{
    if (!_gridView) {
        NSDictionary *dict;
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"001" ofType:@"geojson"];
        NSData *data = [NSData dataWithContentsOfFile:bundlePath];
        if (data) {
            NSError *error;
            dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        }
        _gridView = [[SGVGridView alloc]initWithFrame:CGRectZero dynamicLayoutData:dict];
        _gridView.frame = CGRectMake(15, 80, 345, 0);
        _gridView.showType = SGVContentShowTypeExpand;
        _gridView.delegate = self;
    }
    return _gridView;
}

@end
