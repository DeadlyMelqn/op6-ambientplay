.class public Lcom/android/server/policy/OemGestureButton;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemGestureButton$1;,
        Lcom/android/server/policy/OemGestureButton$EdgeEffectView;,
        Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EFFECT_DIST:[F

.field private static final FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static GESTURE_BUTTON_FOLLOW_FINGER:Z = false

.field private static final GESTURE_BUTTON_GUIDE_PAGE:Ljava/lang/String; = "com.android.settings/com.oneplus.settings.OPFullScreenGestureGuidePage"

.field private static final GESTURE_KEY_DISTANCE_THRESHOLD:I

.field private static final GESTURE_KEY_DISTANCE_TIMEOUT:I

.field private static final GESTURE_KEY_LONG_CLICK_MOVE:I

.field private static final GESTURE_KEY_LONG_CLICK_TIMEOUT:I

.field private static GESTURE_KEY_MAX_ANIM_DURATION:I = 0x0

.field private static final GESTURE_KEY_MAX_VELOCITY:F = 5000.0f

.field private static final GESTURE_KEY_MID_VELOCITY:F = 1000.0f

.field private static GESTURE_KEY_MIN_ANIM_DURATION:I = 0x0

.field private static IS_ANIM_TUNING:Z = false

.field static final IS_GESTURE_BUTTON_ENABLED:Z

.field private static final MID_SCALE_SIZE:F = 0.4f

.field private static final MIN_SCALE_SIZE:F = 0.3f

.field private static final NAV_BAR_BOTTOM:I = 0x0

.field private static final NAV_BAR_LEFT:I = 0x2

.field private static final NAV_BAR_RIGHT:I = 0x1

.field private static final SWIPE_TIMEOUT_MS:J = 0x190L

.field private static final TAG:Ljava/lang/String; = "OemGestureButton"

.field private static mCurrentFraction:F

.field static mDismissInputMethod:Z

.field private static mEffectParams:[F

.field static mFocusWin:Landroid/view/WindowManagerPolicy$WindowState;

.field static mGestureButtonEnabled:Z

.field public static mGestureButtonGoingHome:Z

.field static mGestureButtonGuide:Z

.field static mGestureButtonGuiding:Z

.field public static mGestureButtonMovingHome:Z

.field public static mNeedRecoverAnimation:Z

.field private static mRecentMoveTolerance:F

.field private static mScaleRatio:F

.field private static mTargetAlpha:F


# instance fields
.field mContext:Landroid/content/Context;

.field private mDownTime:F

.field mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

.field private mEffectHeight:I

.field private mEffectStage:I

.field private mFromX:F

.field private mFromY:F

.field private mGestureButtonAnimDuration:I

.field mGestureScreenShotView:Landroid/view/View;

.field mGestureScreenShotViewBG:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field mIgnoreNotch:Z

.field mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field private mIsKeyguardShowing:Z

.field private mLastKeyCode:I

.field private mLastX:F

.field private mLastY:F

.field private mLongClick:Z

.field private mMaxWaitTime:J

.field private mNavigationBarPosition:I

.field mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

.field mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field private mPreparedKeycode:I

.field mPwm:Lcom/android/server/policy/PhoneWindowManager;

.field mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mScaleAlpha:F

.field private mScaleAnimationShowing:Z

.field private mScaleSize:F

.field mScreenDecor:Lcom/android/server/policy/ScreenDecor;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwipeLongFireable:Z

.field private mSwipeStartFromEdge:Z

.field private final mSwipeStartThreshold:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    return v0
.end method

.method static synthetic -get2()[F
    .locals 1

    sget-object v0, Lcom/android/server/policy/OemGestureButton;->mEffectParams:[F

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/policy/OemGestureButton;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    iget-wide v0, p0, Lcom/android/server/policy/OemGestureButton;->mMaxWaitTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/OemGestureButton;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/OemGestureButton;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/OemGestureButton;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/policy/OemGestureButton;->mMaxWaitTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/OemGestureButton;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/policy/OemGestureButton;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/OemGestureButton;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->createScaleDownAnimationLocked()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/OemGestureButton;Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/OemGestureButton;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->handleTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->showScreenShot()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->startScaleDownAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->startScaleUpAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/OemGestureButton;IIFF)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "alpha"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/OemGestureButton;->toggleRecentAppsWithGesture(IIFF)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/OemGestureButton;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;
    .param p1, "keyCode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->triggerGestureVirtualKeypress(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemGestureButton;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateGestureButtonRegion()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x3ecccccd    # 0.4f

    const/4 v0, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 90
    new-array v1, v0, [I

    const/16 v2, 0x34

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    .line 89
    sput-boolean v1, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    .line 94
    const-string/jumbo v1, "persist.gesture_button.finger"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 93
    sput-boolean v1, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    .line 95
    sget-boolean v1, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-nez v1, :cond_0

    .line 96
    const-string/jumbo v0, "persist.gesture_button.debug"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 95
    :cond_0
    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    .line 98
    const-string/jumbo v0, "persist.gesture_button.tuning"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_ANIM_TUNING:Z

    .line 104
    const-string/jumbo v0, "persist.gesture_button.anim_max_duration"

    const/16 v1, 0x177

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 103
    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    .line 106
    const-string/jumbo v0, "persist.gesture_button.anim_min_duration"

    const/16 v1, 0x113

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 105
    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    .line 108
    sput-boolean v3, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    .line 109
    sput-boolean v3, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    .line 110
    sput-boolean v3, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    .line 111
    sput-boolean v3, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    .line 112
    sput-boolean v3, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGoingHome:Z

    .line 113
    sput-boolean v3, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    .line 115
    sput-boolean v3, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    .line 124
    const-string/jumbo v0, "persist.gesture_button.dis"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 123
    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    .line 126
    const-string/jumbo v0, "persist.gesture_button.timeout"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 125
    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    .line 130
    const-string/jumbo v0, "persist.gesture_button.long_click_move"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_MOVE:I

    .line 132
    const-string/jumbo v0, "persist.gesture_button.long_click_timeout"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 131
    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_TIMEOUT:I

    .line 137
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->EFFECT_DIST:[F

    .line 138
    sget-object v0, Lcom/android/server/policy/OemGestureButton;->EFFECT_DIST:[F

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mEffectParams:[F

    .line 1158
    sput v4, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    .line 1159
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    .line 1161
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v6, v4, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1160
    sput-object v0, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 1162
    const v0, 0x3e19999a    # 0.15f

    sput v0, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    .line 1163
    sput v5, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    .line 1166
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v6, v4, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 1165
    sput-object v0, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 86
    return-void

    .line 137
    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, -0x8

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    .line 120
    iput v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    .line 121
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    .line 139
    iput v3, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    .line 143
    iput-boolean v3, p0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    .line 144
    iput-boolean v3, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    .line 146
    iput v2, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    iput v2, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    .line 149
    iput v3, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    .line 150
    iput v3, p0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    .line 165
    iput-boolean v3, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    .line 701
    new-instance v0, Lcom/android/server/policy/OemGestureButton$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemGestureButton$1;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 169
    const-string/jumbo v0, "OemGestureButton"

    const-string/jumbo v2, "OemGestureButton init"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    .line 171
    iput-object p2, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 172
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 173
    .local v8, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 174
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    .line 175
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    .line 176
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    .line 177
    const/16 v0, 0x40

    iput v0, p0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    .line 178
    new-instance v11, Landroid/os/HandlerThread;

    const-string/jumbo v0, "OemGestureButtonThread"

    invoke-direct {v11, v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 180
    .local v11, "oemGestureButtonThread":Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 182
    new-instance v10, Landroid/os/HandlerThread;

    const-string/jumbo v0, "OemGestureBtnRegionThread"

    invoke-direct {v10, v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 184
    .local v10, "oemGestureBtnRegionThread":Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 185
    new-instance v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 186
    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 185
    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 188
    new-instance v9, Landroid/os/HandlerThread;

    const-string/jumbo v0, "OemGestureBtnAnimThread"

    invoke-direct {v9, v0, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 190
    .local v9, "oemGestureAnimThread":Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    .line 191
    new-instance v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 192
    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 191
    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 195
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 198
    const/16 v5, 0x7e1

    .line 199
    const v6, 0x1000508

    .line 205
    const/4 v7, -0x2

    move v2, v1

    move v4, v3

    .line 195
    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 206
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x50d0000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 207
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "GestureScreenshot"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x12

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 211
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    new-instance v1, Lcom/android/server/policy/OemGestureButton$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OemGestureButton$2;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 249
    return-void
.end method

.method private checkAllBlack(Landroid/graphics/Bitmap;)Z
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 1116
    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1118
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 1119
    .local v1, "buffer":[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1120
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1119
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1121
    const/4 v8, 0x1

    .line 1122
    .local v8, "allBlack":Z
    aget v9, v1, v2

    .line 1123
    .local v9, "firstColor":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v0, v1

    if-ge v10, v0, :cond_1

    .line 1124
    aget v0, v1, v10

    if-eq v0, v9, :cond_2

    .line 1125
    const/4 v8, 0x0

    .line 1129
    :cond_1
    return v8

    .line 1123
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method private createScaleDownAnimationLocked()Landroid/view/animation/Animation;
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v12, 0x0

    .line 1170
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v3, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    .line 1171
    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v7, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v4, v7

    move v7, v5

    move v8, v6

    .line 1170
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1173
    .local v0, "scale":Landroid/view/animation/Animation;
    sget-object v1, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1174
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1175
    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 1177
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    sget v2, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1178
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    sget-object v1, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1179
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1180
    invoke-virtual {v10, v12}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 1182
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1183
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1184
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1185
    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    .line 1186
    move-object v9, v11

    .line 1188
    .local v9, "a":Landroid/view/animation/Animation;
    return-object v11
.end method

.method private dismissInputMethod()V
    .locals 2

    .prologue
    .line 415
    const-string/jumbo v0, "OemGestureButton"

    const-string/jumbo v1, "dismissInputMethod"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    .line 417
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 419
    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 418
    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 424
    :cond_1
    return-void
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1053
    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleTouch(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 432
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 434
    .local v2, "action":I
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1

    .line 435
    return-void

    .line 438
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 439
    .local v7, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    .line 440
    .local v8, "rawY":F
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v11, :cond_2

    .line 441
    const-string/jumbo v11, "OemGestureButton"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " onTouch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " rawX="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " rawY="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 442
    const-string/jumbo v13, " pos="

    .line 441
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 442
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    .line 441
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 697
    :pswitch_0
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string/jumbo v11, "OemGestureButton"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Ignoring "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_3
    :goto_0
    return-void

    .line 447
    :pswitch_1
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    .line 448
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v11, :cond_a

    .line 449
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v11, v8, v11

    if-gez v11, :cond_4

    .line 450
    return-void

    .line 452
    :cond_4
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    .line 453
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    .line 454
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/lit8 v12, v12, 0x2

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_9

    .line 455
    :cond_5
    const/4 v11, 0x4

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    .line 456
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/lit8 v12, v12, 0x2

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    .line 457
    const/16 v11, 0xbb

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    .line 480
    :cond_6
    :goto_1
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 481
    sget-boolean v11, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_7

    .line 482
    const-string/jumbo v11, "OemGestureButton"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Start from edge mPreparedKeycode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v11}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v11

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    .line 486
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_8

    .line 487
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    check-cast v11, Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 488
    const/4 v12, 0x0

    const/16 v13, 0x1f4

    .line 487
    invoke-virtual {v11, v12, v13}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 489
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 490
    const/4 v12, 0x1

    .line 489
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 491
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    .line 493
    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    .line 494
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_11

    .line 495
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 499
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 501
    :cond_8
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    .line 502
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    .line 503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    long-to-float v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    goto/16 :goto_0

    .line 460
    :cond_9
    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto/16 :goto_1

    .line 463
    :cond_a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    cmpg-float v11, v7, v11

    if-gez v11, :cond_c

    .line 465
    :cond_b
    return-void

    .line 464
    :cond_c
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_d

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-gtz v11, :cond_b

    .line 469
    :cond_d
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    .line 470
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    .line 471
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_e

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/lit8 v12, v12, 0x2

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_f

    .line 472
    :cond_e
    const/4 v11, 0x4

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    .line 473
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v11, :cond_6

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/lit8 v12, v12, 0x2

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_6

    .line 474
    const/16 v11, 0xbb

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto/16 :goto_1

    .line 477
    :cond_f
    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto/16 :goto_1

    .line 484
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 497
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_3

    .line 506
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    if-nez v11, :cond_3

    .line 508
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v11, :cond_12

    .line 509
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 514
    .local v6, "moveDistance":F
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    sub-long v4, v12, v14

    .line 515
    .local v4, "delta":J
    sget v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_MOVE:I

    int-to-float v11, v11

    cmpg-float v11, v6, v11

    if-gez v11, :cond_13

    .line 516
    sget v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_TIMEOUT:I

    int-to-long v12, v11

    cmp-long v11, v4, v12

    if-lez v11, :cond_3

    .line 517
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    goto/16 :goto_0

    .line 511
    .end local v4    # "delta":J
    .end local v6    # "moveDistance":F
    :cond_12
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    sub-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .restart local v6    # "moveDistance":F
    goto :goto_4

    .line 523
    .restart local v4    # "delta":J
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v11, :cond_14

    .line 525
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 527
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v12

    .line 526
    const/4 v13, 0x2

    .line 525
    invoke-virtual {v11, v13, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    .line 528
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_14

    .line 529
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 533
    :cond_14
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v11, :cond_1a

    .line 534
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_19

    .line 535
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_17

    .line 536
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    long-to-float v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x43c80000    # 400.0f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_15

    .line 540
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v11, :cond_16

    .line 541
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 542
    const-string/jumbo v12, "op_gesture_button_guide_state"

    const/4 v13, 0x3

    .line 541
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    :cond_15
    :goto_5
    return-void

    .line 544
    :cond_16
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 545
    const/4 v12, 0x6

    .line 544
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 550
    :cond_17
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    .line 552
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    sub-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sget v12, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_18

    .line 553
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 554
    const/4 v12, 0x5

    .line 553
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 555
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 556
    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    int-to-long v12, v12

    const/4 v14, 0x5

    .line 555
    invoke-virtual {v11, v14, v12, v13}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 593
    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    .line 594
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    goto/16 :goto_0

    .line 559
    :cond_19
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 560
    const/4 v12, 0x5

    .line 559
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 561
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    goto :goto_6

    .line 564
    :cond_1a
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    sub-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1e

    .line 565
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_1d

    .line 566
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 569
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    long-to-float v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x43c80000    # 400.0f

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1b

    .line 570
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v11, :cond_1c

    .line 571
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 572
    const-string/jumbo v12, "op_gesture_button_guide_state"

    const/4 v13, 0x3

    .line 571
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    :cond_1b
    :goto_7
    return-void

    .line 574
    :cond_1c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 575
    const/4 v12, 0x6

    .line 574
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 580
    :cond_1d
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    .line 581
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    sub-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sget v12, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_18

    .line 582
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 583
    const/4 v12, 0x5

    .line 582
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 585
    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    int-to-long v12, v12

    const/4 v14, 0x5

    .line 584
    invoke-virtual {v11, v14, v12, v13}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 588
    :cond_1e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 589
    const/4 v12, 0x5

    .line 588
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 590
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    goto/16 :goto_6

    .line 597
    .end local v4    # "delta":J
    .end local v6    # "moveDistance":F
    :pswitch_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    .line 599
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    .line 600
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 601
    const/4 v12, 0x5

    .line 600
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 602
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v11, :cond_23

    .line 603
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-eqz v11, :cond_22

    .line 604
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 605
    const-string/jumbo v13, "op_gesture_button_guide_state"

    .line 606
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    const/4 v14, 0x3

    if-ne v11, v14, :cond_21

    const/4 v11, 0x1

    .line 604
    :goto_8
    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 664
    :cond_1f
    :goto_9
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v11, :cond_20

    .line 665
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-nez v11, :cond_2b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v11, :cond_2b

    .line 666
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 667
    const/16 v12, 0x9

    .line 666
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 675
    :cond_20
    :goto_a
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 676
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    .line 678
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->IS_ANIM_TUNING:Z

    if-eqz v11, :cond_3

    .line 679
    const-string/jumbo v11, "persist.gesture_button.targetalpha"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sput v11, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    .line 680
    const-string/jumbo v11, "persist.gesture_button.scaleratio"

    const/16 v12, 0xa

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sput v11, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    .line 682
    new-instance v11, Landroid/view/animation/PathInterpolator;

    .line 683
    const-string/jumbo v12, "persist.gesture_button.interpolator1"

    const/16 v13, 0x28

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    int-to-float v12, v12

    const v13, 0x3c23d70a    # 0.01f

    mul-float/2addr v12, v13

    .line 684
    const-string/jumbo v13, "persist.gesture_button.interpolator2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3c23d70a    # 0.01f

    mul-float/2addr v13, v14

    .line 685
    const-string/jumbo v14, "persist.gesture_button.interpolator3"

    const/16 v15, 0x14

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3c23d70a    # 0.01f

    mul-float/2addr v14, v15

    .line 686
    const-string/jumbo v15, "persist.gesture_button.interpolator4"

    const/16 v16, 0x64

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3c23d70a    # 0.01f

    mul-float v15, v15, v16

    .line 682
    invoke-direct {v11, v12, v13, v14, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 681
    sput-object v11, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 687
    const-string/jumbo v11, "persist.gesture_button.mCurrentFraction"

    const/16 v12, 0xf

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3c23d70a    # 0.01f

    mul-float/2addr v11, v12

    sput v11, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    .line 689
    const-string/jumbo v11, "persist.gesture_button.anim_max_duration"

    const/16 v12, 0x177

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 688
    sput v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    .line 691
    const-string/jumbo v11, "persist.gesture_button.anim_min_duration"

    const/16 v12, 0x113

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 690
    sput v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    .line 692
    const-string/jumbo v11, "persist.gesture_button.mRecentMoveTolerance"

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    sput v11, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    goto/16 :goto_0

    .line 606
    :cond_21
    const/4 v11, 0x3

    goto/16 :goto_8

    .line 608
    :cond_22
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 609
    const-string/jumbo v12, "op_gesture_button_guide_state"

    const/4 v13, -0x1

    .line 608
    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_9

    .line 611
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-eqz v11, :cond_1f

    .line 612
    sget-boolean v11, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_24

    .line 613
    const-string/jumbo v11, "OemGestureButton"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Start send mPreparedKeycode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_24
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    .line 616
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    check-cast v11, Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 617
    const/4 v12, 0x0

    const/16 v13, 0x1f4

    .line 616
    invoke-virtual {v11, v12, v13}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 618
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_26

    .line 620
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    if-nez v11, :cond_25

    .line 621
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemGestureButton;->dismissInputMethod()V

    .line 623
    :cond_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v12, Lcom/android/server/policy/OemGestureButton$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/policy/OemGestureButton$5;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    .line 638
    :cond_26
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v11, :cond_27

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_27

    .line 639
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 640
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 642
    .local v9, "velocityX":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 643
    .local v10, "velocityY":F
    cmpl-float v11, v9, v10

    if-lez v11, :cond_28

    move v3, v9

    .line 644
    .local v3, "max":F
    :goto_b
    const v11, 0x459c4000    # 5000.0f

    cmpl-float v11, v3, v11

    if-lez v11, :cond_29

    .line 645
    sget v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    .line 652
    :goto_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 653
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 654
    sget-boolean v11, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v11, :cond_27

    .line 655
    const-string/jumbo v11, "OemGestureButton"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "velocityX="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " velocityY="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 656
    const-string/jumbo v13, " mGestureButtonAnimDuration="

    .line 655
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 656
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    .line 655
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v3    # "max":F
    .end local v9    # "velocityX":F
    .end local v10    # "velocityY":F
    :cond_27
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 660
    const/4 v12, 0x6

    .line 659
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_9

    .line 643
    .restart local v9    # "velocityX":F
    .restart local v10    # "velocityY":F
    :cond_28
    move v3, v10

    .restart local v3    # "max":F
    goto :goto_b

    .line 646
    :cond_29
    const/high16 v11, 0x447a0000    # 1000.0f

    cmpl-float v11, v3, v11

    if-lez v11, :cond_2a

    .line 647
    sget v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    .line 648
    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    .line 647
    add-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    goto :goto_c

    .line 650
    :cond_2a
    sget v11, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    goto :goto_c

    .line 669
    .end local v3    # "max":F
    .end local v9    # "velocityX":F
    .end local v10    # "velocityY":F
    :cond_2b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 670
    const/4 v12, 0x3

    .line 669
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 671
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 672
    const/4 v12, 0x3

    .line 671
    invoke-virtual {v11, v12}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_a

    .line 444
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static isEnabled()Z
    .locals 1

    .prologue
    .line 1136
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isGuiding()Z
    .locals 1

    .prologue
    .line 1133
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    return v0
.end method

.method private isHomeOrRecent(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v0, 0x0

    .line 325
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 326
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 329
    :cond_0
    const-string/jumbo v0, "net.oneplus.launcher"

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    const-string/jumbo v0, "net.oneplus.launcher/net.oneplus.launcher.Launcher"

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 325
    :cond_1
    :goto_0
    return v0

    .line 329
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static notifyCallbacksLocked()V
    .locals 2

    .prologue
    .line 1193
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1194
    const-string/jumbo v0, "OemGestureButton"

    const-string/jumbo v1, "notifyCallbacksLocked."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void
.end method

.method private showScreenShot()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const v4, 0x186a0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 334
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v1, :cond_a

    .line 335
    sget-boolean v1, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v1, :cond_0

    .line 336
    const-string/jumbo v1, "OemGestureButton"

    const-string/jumbo v2, "showScreenShot: skip screenshot for not follow finger."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v1}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 339
    if-eqz v1, :cond_2

    .line 341
    :cond_1
    const-string/jumbo v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showScreenShot: skip screenshot for Home or Recents. focus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    const-string/jumbo v3, " topFull="

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 343
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 346
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    const-string/jumbo v1, "OemGestureButton"

    const-string/jumbo v2, "showScreenShot: skip screenshot for keyguard locked."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void

    .line 350
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 351
    const-string/jumbo v1, "OemGestureButton"

    const-string/jumbo v2, "showScreenShot: skip screenshot for window animating."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1, v10}, Landroid/view/WindowManagerInternal;->isStackVisible(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 355
    const-string/jumbo v1, "OemGestureButton"

    const-string/jumbo v2, "showScreenShot: skip screenshot for docked stack."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 358
    :cond_5
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-eqz v1, :cond_6

    .line 359
    const-string/jumbo v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showScreenShot: skip screenshot for landscape pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 360
    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 363
    :cond_6
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 365
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x5030004

    .line 364
    invoke-virtual {v8, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 366
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 367
    const v2, 0x50e0007

    .line 366
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    .line 369
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 370
    .local v0, "rect":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 371
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v1, :cond_b

    .line 372
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    .line 373
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    move v5, v3

    move v6, v3

    .line 372
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 381
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    :goto_0
    if-eqz v7, :cond_d

    .line 382
    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 383
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 384
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 391
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v1, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 393
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 394
    const/4 v2, 0x4

    .line 393
    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 395
    const-string/jumbo v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showScreenShot for + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mDisplayRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 396
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 396
    const-string/jumbo v3, " mNavigationBarPosition="

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 396
    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    .line 395
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    .line 399
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 402
    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v1, :cond_9

    .line 403
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :cond_9
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_e

    .line 406
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7de

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 409
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    .end local v0    # "rect":Landroid/graphics/Rect;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_a
    return-void

    .line 374
    .restart local v0    # "rect":Landroid/graphics/Rect;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    :cond_b
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 375
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    .line 376
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    move v5, v3

    .line 375
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 377
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :cond_c
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-ne v1, v6, :cond_7

    .line 378
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    .line 379
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    move v5, v3

    move v6, v10

    .line 378
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v7

    .local v7, "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 386
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    iput-object v9, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 387
    const-string/jumbo v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showScreenShot: cannot take screenshot for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void

    .line 408
    :cond_e
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7e1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1
.end method

.method private startScaleDownAnimation(Landroid/widget/ImageView;)V
    .locals 11
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 253
    iget-boolean v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    if-eqz v4, :cond_0

    return-void

    .line 254
    :cond_0
    iput-boolean v8, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    .line 257
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 256
    new-array v5, v10, [F

    .line 257
    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    aput v6, v5, v9

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v7, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v6, v7

    aput v6, v5, v8

    .line 256
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 259
    .local v2, "scaleDownX":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 258
    new-array v5, v10, [F

    .line 259
    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    aput v6, v5, v9

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v7, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v6, v7

    aput v6, v5, v8

    .line 258
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 260
    .local v3, "scaleDownY":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v10, [F

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    aput v6, v5, v9

    sget v6, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 262
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    .line 263
    aput-object v3, v4, v9

    aput-object v2, v4, v8

    aput-object v0, v4, v10

    .line 262
    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 264
    .local v1, "objAnim":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/server/policy/OemGestureButton$3;

    invoke-direct {v4, p0}, Lcom/android/server/policy/OemGestureButton$3;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    sget v4, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 286
    sget-object v4, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 288
    const-string/jumbo v4, "OemGestureButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startScaleDownAnimation: mScaleSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void
.end method

.method private startScaleUpAnimation(Landroid/widget/ImageView;)V
    .locals 11
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 291
    iget-boolean v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    if-eqz v4, :cond_0

    return-void

    .line 292
    :cond_0
    iput-boolean v7, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    .line 294
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 293
    new-array v5, v9, [F

    .line 294
    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    aput v6, v5, v8

    aput v10, v5, v7

    .line 293
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 296
    .local v2, "scaleDownX":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 295
    new-array v5, v9, [F

    .line 296
    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    aput v6, v5, v8

    aput v10, v5, v7

    .line 295
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 297
    .local v3, "scaleDownY":Landroid/animation/PropertyValuesHolder;
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    aput v6, v5, v8

    aput v10, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 298
    .local v0, "alpha":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    .line 299
    aput-object v3, v4, v8

    aput-object v2, v4, v7

    aput-object v0, v4, v9

    .line 298
    invoke-static {p1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 300
    .local v1, "objAnim":Landroid/animation/ObjectAnimator;
    new-instance v4, Lcom/android/server/policy/OemGestureButton$4;

    invoke-direct {v4, p0}, Lcom/android/server/policy/OemGestureButton$4;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 317
    const-wide/16 v4, 0x96

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    sget v4, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 319
    sget-object v4, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 321
    const-string/jumbo v4, "OemGestureButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startScaleUpAnimation: mScaleSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method private toggleRecentAppsWithGesture(IIFF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "scale"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 978
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    .line 980
    .local v0, "statusbar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentAppsWithGesture(IIFF)V

    .line 983
    :cond_0
    return-void
.end method

.method private triggerGestureVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 986
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 987
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 988
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    .line 989
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 991
    const/16 v12, 0x48

    .line 992
    const v13, 0x10000101

    move-wide v4, v2

    move/from16 v7, p1

    .line 988
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 993
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 995
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 996
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 999
    return-void
.end method

.method private updateGestureButtonRegion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 709
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-virtual {v0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 712
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 714
    :cond_0
    iput-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    .line 716
    :cond_1
    const-string/jumbo v0, "OemGestureButton"

    const-string/jumbo v1, "updateGestureButtonRegion: not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void

    .line 719
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-nez v0, :cond_3

    .line 720
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 721
    const/16 v1, 0x7de

    .line 720
    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 722
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x118

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 725
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 727
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "GestureButtonRegion"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 729
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 730
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateWindowParams()V

    .line 731
    new-instance v0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    .line 732
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    :goto_0
    const-string/jumbo v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGestureButtonRegion: mNavigationBarPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    const-string/jumbo v2, " mSwipeStartThreshold="

    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    .line 738
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return-void

    .line 735
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateWindowParams()V

    .line 736
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateWindowParams()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 743
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    .line 744
    :cond_0
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 746
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 747
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 755
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 751
    const/4 v0, 0x5

    .line 750
    :goto_1
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 752
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 753
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 751
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private updateWindows(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "focus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v1, 0x0

    .line 1012
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_0

    .line 1013
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eqz v0, :cond_1

    .line 1014
    const-string/jumbo v0, "com.android.settings/com.oneplus.settings.OPFullScreenGestureGuidePage"

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1013
    :goto_0
    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    .line 1016
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-eqz v0, :cond_2

    .line 1017
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1018
    const-string/jumbo v2, "buttons_show_on_screen_navkeys"

    .line 1017
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1023
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 1024
    const/4 v1, 0x7

    .line 1023
    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 1025
    return-void

    :cond_1
    move v0, v1

    .line 1013
    goto :goto_0

    .line 1020
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1021
    const-string/jumbo v1, "buttons_show_on_screen_navkeys"

    const/4 v2, 0x1

    .line 1020
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method


# virtual methods
.method focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 1
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 1028
    if-eqz p2, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eqz v0, :cond_0

    .line 1029
    invoke-direct {p0, p2}, Lcom/android/server/policy/OemGestureButton;->updateWindows(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1031
    :cond_0
    return-void
.end method

.method isGestureButtonRegion(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1140
    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_6

    .line 1141
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1142
    const-string/jumbo v2, "OemGestureButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isGestureButtonRegion: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1143
    const-string/jumbo v4, " pos="

    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1143
    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    .line 1142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_0
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v2, :cond_2

    .line 1146
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1148
    :cond_2
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-ne v2, v0, :cond_4

    .line 1149
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v2, v3

    if-lt p1, v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1151
    :cond_4
    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    if-gt p1, v2, :cond_5

    :goto_2
    return v0

    :cond_5
    move v0, v1

    goto :goto_2

    .line 1154
    :cond_6
    return v1
.end method

.method isScreenShotShowing()Z
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method navigationBarPosition(III)V
    .locals 4
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "displayRotation"    # I

    .prologue
    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "navigationBarPosition":I
    if-le p1, p2, :cond_0

    .line 1036
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 1037
    const/4 v0, 0x2

    .line 1042
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-eq v0, v1, :cond_1

    .line 1043
    const-string/jumbo v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update mNavigationBarPosition to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1044
    const-string/jumbo v3, " displayRotation="

    .line 1043
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    .line 1046
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 1047
    const/4 v2, 0x7

    .line 1046
    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 1049
    :cond_1
    return-void

    .line 1039
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->handleTouch(Landroid/view/MotionEvent;)V

    .line 429
    return-void
.end method

.method preloadWallapepr(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1064
    if-nez p1, :cond_0

    return-void

    .line 1065
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1066
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v1, Lcom/android/server/policy/OemGestureButton$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/OemGestureButton$6;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    .line 1089
    return-void
.end method

.method preloadWallapepr(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1091
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1092
    .local v0, "focus":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1093
    sget-object v1, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 1094
    :cond_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dd

    if-ne v1, v2, :cond_1

    .line 1095
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1096
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getStackId()I

    move-result v1

    if-nez v1, :cond_1

    .line 1097
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v1

    .line 1092
    if-eqz v1, :cond_1

    .line 1097
    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v1

    .line 1092
    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal;->isAnimating()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1092
    if-eqz v1, :cond_1

    .line 1099
    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 1101
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v2, Lcom/android/server/policy/OemGestureButton$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OemGestureButton$7;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    .line 1113
    :cond_1
    return-void
.end method

.method setBackgoundWallpaper()V
    .locals 1

    .prologue
    .line 1230
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1235
    :goto_0
    return-void

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIgnoreNotchWallpaper()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1209
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-eqz v3, :cond_2

    .line 1210
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    .line 1211
    const-string/jumbo v3, "OemGestureButton"

    const-string/jumbo v4, "setIgnoreNotchWallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_0
    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    .line 1215
    iget-object v5, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 1214
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1216
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-object v3, v3, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 1217
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-object v3, v3, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1218
    .local v2, "notchBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1220
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1221
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1222
    invoke-virtual {v1, v2, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1224
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "notchBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

    .line 1226
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton;->setBackgoundWallpaper()V

    .line 1227
    return-void
.end method

.method public updateNotchSettings(Z)V
    .locals 4
    .param p1, "ignore"    # Z

    .prologue
    const/16 v3, 0xb

    .line 1198
    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-ne v0, p1, :cond_0

    .line 1199
    return-void

    .line 1200
    :cond_0
    const-string/jumbo v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotchSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    .line 1202
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1204
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 1206
    return-void
.end method

.method updateSettings(ZZ)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "guide"    # Z

    .prologue
    .line 1002
    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-ne v0, p1, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eq v0, p2, :cond_1

    .line 1003
    :cond_0
    sput-boolean p1, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    .line 1004
    sput-boolean p2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    .line 1005
    const-string/jumbo v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " guide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemGestureButton;->updateWindows(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 1008
    :cond_1
    return-void
.end method
