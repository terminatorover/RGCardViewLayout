//
//  ViewController.m
//  RGCardViewLayout
//
//  Created by ROBERA GELETA on 1/23/15.
//  Copyright (c) 2015 ROBERA GELETA. All rights reserved.
//
#define TAG 99

#import "ViewController.h"

@interface ViewController ()<UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 1;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return  4;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"reuse" forIndexPath:indexPath];
    [self configureCell:cell withIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(UICollectionViewCell *)cell withIndexPath:(NSIndexPath *)indexPath
{
    UIView  *subview = [cell.contentView viewWithTag:TAG];
    [subview removeFromSuperview];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, cell.bounds.size.width, cell.bounds.size.height)];
    imageView.tag = TAG;
    switch (indexPath.section) {
        case 0:
            imageView.image =  [UIImage imageNamed:@"i1"];
            break;
        case 1:
            imageView.image =  [UIImage imageNamed:@"i2"];
            break;
        case 2:
            imageView.image =  [UIImage imageNamed:@"i3"];
            break;
        case 3:
            imageView.image =  [UIImage imageNamed:@"i4"];
            break;
        case 4:
            imageView.image =  [UIImage imageNamed:@"i5"];
            break;
        default:
            break;
    }
    
    [cell.contentView addSubview:imageView];
}


@end
