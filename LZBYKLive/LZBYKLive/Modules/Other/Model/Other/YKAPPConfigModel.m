//
//  YKAPPConfigModel.m
//  LZBYKLive
//
//  Created by zibin on 16/9/6.
//  Copyright © 2016年 刘子彬（更多项目源码分享平台“开发者源代码” 微信号：developerCode 作者简介：iOS开发者，喜爱交流分享）. All rights reserved.
//

#import "YKAPPConfigModel.h"
#import "LZBDataConversionManger.h"
#import "YKAppCacheDataManger.h"


@implementation YKAPPConfigModel


- (void)saveObject
{
    NSDictionary  *dictData = [[LZBDataConversionManger shareInstance] convertWithModelToDictionary:self];
    [[YKAppCacheDataManger shareInstance] saveObject:dictData forKey:YKAPPConfigModelKey];
}

@end
