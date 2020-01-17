//
//  swiftproj.m
//  rnproj
//
//  Created by mac on 2020/01/16.
//  Copyright © 2020 Facebook. All rights reserved.
//

#import "React/RCTBridgeModule.h"
@interface RCT_EXTERN_MODULE(MyObj, NSObject)
RCT_EXTERN_METHOD(rtnMessage: (RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(sendMessage:(NSString *)name)
@end
