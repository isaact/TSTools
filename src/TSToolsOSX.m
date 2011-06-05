//
//  TSFoundationTools.h
//  TSTools
//
//  Created by Isaac Tewolde on 10-11-11.
//  Copyright 2010 Ticklespace.com All rights reserved.
//

#import "TSFoundationTools.h"
#import "TSAppKitTools.h"

void useTSToolsOSX(){
  useTSFoundationTools();
  useTSAppKitTools();
  //Do nothing, just used for linking in categories
}


@implementation NSObject (TSToolsOSX)

@end
