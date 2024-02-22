#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "calculate_background" asset catalog image resource.
static NSString * const ACImageNameCalculateBackground AC_SWIFT_PRIVATE = @"calculate_background";

/// The "result_background" asset catalog image resource.
static NSString * const ACImageNameResultBackground AC_SWIFT_PRIVATE = @"result_background";

#undef AC_SWIFT_PRIVATE