//
//  NSDictionary+Json.m
//  iphoneLive
//
//  Created by gaogm on 2019/5/3.
//  Copyright © 2019 cat. All rights reserved.
//

#import "NSDictionary+Json.h"


@implementation NSDictionary (Json)

-(NSString*) getStr:(NSString*)strKey
{
    if(strKey==nil || strKey.length<1)
    {
        return @"";
    }
    id iValue= self[strKey];
    if(iValue==nil)
    {
        return @"";
    }
    return iValue;
}
-(int) getInt:(NSString*)strKey
{
    if(strKey==nil || strKey.length<1)
    {
        return 0;
    }
    id iValue= self[strKey];
    if(iValue==nil)
    {
        return 0;
    }
    @try
    {
        return [iValue intValue];
    }
    @catch(NSException *e)
    {
        return 0;
    }
}
-(NSDate*) getDate:(NSString*)strKey
{
    if(strKey==nil || strKey.length<1)
    {
        return [[NSDate alloc] initWithTimeIntervalSince1970:0];
    }
    id iValue= self[strKey];
    if(iValue==nil)
    {
        return [[NSDate alloc] initWithTimeIntervalSince1970:0];
    }
    @try
    {
        return [iValue date];
    }
    @catch(NSException *e)
    {
        return [[NSDate alloc] initWithTimeIntervalSince1970:0];
    }
}
-(int64_t) getInt64:(NSString*)strKey
{
    if(strKey==nil || strKey.length<1)
    {
        return 0;
    }
    id iValue= self[strKey];
    if(iValue==nil)
    {
        return 0;
    }
    @try
    {
        return [iValue longLongValue];
    }
    @catch(NSException *e)
    {
        return 0;
    }
}


-(NSArray*) getNSArray:(NSString*)strKey
{
    if(strKey==nil || strKey.length<1)
    {
        return nil;
    }
    id iValue= self[strKey];
    if(iValue==nil)
    {
        return nil;
    }
    @try
    {
        NSArray *arr=iValue;
        return arr;
    }
    @catch(NSException *e)
    {
        return nil;
    }
}


@end

