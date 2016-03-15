//
//  TPBasePreDefine.h
//  
//
//  Created by wang on 16/3/15.
//
//

#ifndef TPBasePreDefine_h
#define TPBasePreDefine_h

#import "NSString+UUID.h"
#import "UIColor+TPColor.h"
#import "UIImage+TPCategory.h"



//常用宏定义
#undef	TPSINGLETON_DEF
#define TPSINGLETON_DEF( __class ) \
+ (__class *)sharedInstance;

#undef	TPSINGLETON_IMP
#define TPSINGLETON_IMP( __class ) \
+ (__class *)sharedInstance \
{ \
static dispatch_once_t once; \
static __class * __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[__class alloc] init]; } ); \
return __singleton__; \
}


#undef	AS_SINGLETON
#define AS_SINGLETON( __class ) \
+ (__class *)sharedInstance;

#undef	DEF_SINGLETON
#define DEF_SINGLETON( __class ) \
+ (__class *)sharedInstance \
{ \
static dispatch_once_t once; \
static __class * __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[__class alloc] init]; } ); \
return __singleton__; \
}



#endif /* TPBasePreDefine_h */
