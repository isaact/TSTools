//
//  TSFoundationTools.h
//  TSTools
//
//  Created by Isaac Tewolde on 10-11-11.
//  Copyright 2010 Ticklespace.com All rights reserved.
//

#import "TSToolsiOS.h"
#import "NSDate+TSTools.h"
#import "NSString+TSTools.h"

void useTSToolsiOS(){
  useTSDateTools();
  useTSStringTools();
  //Do nothing, just used for linking in categories
}


@implementation NSObject (TSToolsiOS)

@end
