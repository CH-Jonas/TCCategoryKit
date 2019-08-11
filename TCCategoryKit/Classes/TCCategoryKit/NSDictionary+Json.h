//
//  NSDictionary+Json.h
//  iphoneLive
//
//  Created by gaogm on 2019/5/3.
//  Copyright © 2019 cat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDictionary (Json)
-(NSString*) getStr:(NSString*)strKey;
-(int) getInt:(NSString*)strKey;
-(NSDate*) getDate:(NSString*)strKey;
-(int64_t) getInt64:(NSString*)strKey;
-(NSArray*) getNSArray:(NSString*)strKey;

@end


NS_ASSUME_NONNULL_END
