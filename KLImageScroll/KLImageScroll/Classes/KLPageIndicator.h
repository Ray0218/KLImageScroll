//
//  KLPageIndicator.h
//  KLCommonTools
//
//  Created by WKL on 2019/12/27.
//

#import <UIKit/UIKit.h>

 
@interface KLPageIndicator : UIView

@property(nonatomic,assign)NSInteger rCurrentIndex;

@property(nonatomic,assign)NSInteger rTotalCount;



@end


@interface KLPageCollectionCell : UICollectionViewCell

@property(nonatomic,strong)UIImageView *rIndicatorImg;

@end

 


