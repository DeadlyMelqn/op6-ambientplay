.class public Lcom/android/systemui/statusbar/phone/LockIcon;
.super Lcom/android/systemui/statusbar/KeyguardAffordanceView;
.source "LockIcon.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;
    }
.end annotation


# instance fields
.field private mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

.field private mDensity:I

.field private mDeviceInteractive:Z

.field private final mDrawOffTimeout:Ljava/lang/Runnable;

.field private mFacelockAnimationSet:Landroid/view/animation/Animation;

.field private mFacelockFailAnimationSet:Landroid/view/animation/Animation;

.field private mFacelockRunningType:I

.field private mHasFingerPrintIcon:Z

.field private mLastDeviceInteractive:Z

.field private mLastScreenOn:Z

.field private mLastState:I

.field private mScreenOn:Z

.field private mTransientFpError:Z

.field private mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUserAvatarIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/LockIcon;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$s7b_D0Wx3UIN_Bk_BlNMnpBO8ss;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$s7b_D0Wx3UIN_Bk_BlNMnpBO8ss;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    .line 72
    iput v2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    .line 79
    new-instance v0, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f01001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f010020

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    .line 87
    return-void
.end method

.method private getAnimationResForTransition(IIZZZZ)I
    .locals 5
    .param p1, "oldState"    # I
    .param p2, "newState"    # I
    .param p3, "oldDeviceInteractive"    # Z
    .param p4, "deviceInteractive"    # Z
    .param p5, "oldScreenOn"    # Z
    .param p6, "screenOn"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldShowFacelockIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    return v4

    .line 382
    :cond_0
    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 383
    const v0, 0x7f08031a

    return v0

    .line 384
    :cond_1
    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    .line 385
    const v0, 0x7f0806a0

    return v0

    .line 386
    :cond_2
    if-ne p1, v2, :cond_3

    if-ne p2, v3, :cond_3

    .line 387
    const v0, 0x7f0800e1

    return v0

    .line 388
    :cond_3
    if-ne p1, v2, :cond_4

    if-ne p2, v1, :cond_4

    .line 389
    const v0, 0x7f080318

    return v0

    .line 390
    :cond_4
    if-ne p1, v1, :cond_5

    if-ne p2, v3, :cond_5

    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 390
    if-eqz v0, :cond_5

    .line 392
    const v0, 0x7f080314

    return v0

    .line 393
    :cond_5
    if-ne p2, v1, :cond_8

    if-nez p5, :cond_6

    if-eqz p6, :cond_6

    if-nez p4, :cond_7

    .line 394
    :cond_6
    if-eqz p6, :cond_8

    xor-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_8

    .line 393
    if-eqz p4, :cond_8

    .line 395
    :cond_7
    const v0, 0x7f080316

    return v0

    .line 397
    :cond_8
    return v4
.end method

.method private getIconForState(IZZ)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "state"    # I
    .param p2, "screenOn"    # Z
    .param p3, "deviceInteractive"    # Z

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 366
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 338
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v2, 0x7f0800e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 342
    :pswitch_2
    const v0, 0x7f080164

    .line 369
    .local v0, "iconRes":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 345
    .end local v0    # "iconRes":I
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 349
    :cond_0
    const v0, 0x7f080165

    .line 351
    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 353
    .end local v0    # "iconRes":I
    :pswitch_4
    const v0, 0x10802ef

    .line 354
    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 358
    .end local v0    # "iconRes":I
    :pswitch_5
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 359
    const v0, 0x7f080124

    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 360
    .end local v0    # "iconRes":I
    :cond_1
    const v0, 0x7f080316

    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 363
    .end local v0    # "iconRes":I
    :pswitch_6
    const v0, 0x7f080125

    .line 364
    .restart local v0    # "iconRes":I
    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getState()I
    .locals 5

    .prologue
    .line 402
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 403
    .local v3, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    .line 404
    .local v0, "fingerprintRunning":Z
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    .line 406
    .local v2, "unlockingAllowed":Z
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v1

    .line 410
    .local v1, "lockout":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldShowFacelockIcon()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    const/16 v4, 0xb

    return v4

    .line 415
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    if-eqz v4, :cond_1

    .line 416
    const/4 v4, 0x4

    return v4

    .line 417
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 418
    const/4 v4, 0x1

    return v4

    .line 419
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isFaceUnlockRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    const/4 v4, 0x2

    return v4

    .line 423
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_4

    .line 425
    const/4 v4, 0x3

    return v4

    .line 427
    :cond_4
    const/4 v4, 0x0

    return v4
.end method

.method private updateClickability()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 295
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    if-nez v4, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v1

    .line 299
    .local v1, "clickToUnlock":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    xor-int/lit8 v0, v1, 0x1

    .line 301
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 302
    xor-int/lit8 v3, v0, 0x1

    .line 305
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockAvailable()Z

    move-result v2

    .line 308
    .local v2, "facelockRunning":Z
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setClickable(Z)V

    .line 309
    if-nez v3, :cond_1

    move v5, v2

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLongClickable(Z)V

    .line 312
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->setFocusable(Z)V

    .line 313
    return-void

    .line 299
    .end local v2    # "facelockRunning":Z
    :cond_2
    const/4 v0, 0x0

    .local v0, "clickToForceLock":Z
    goto :goto_0

    .line 301
    .end local v0    # "clickToForceLock":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "longClickToForceLock":Z
    goto :goto_1

    .end local v3    # "longClickToForceLock":Z
    .restart local v2    # "facelockRunning":Z
    :cond_4
    move v4, v5

    .line 308
    goto :goto_2
.end method

.method private updateIconAnimation(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 260
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "LockIcon"

    const-string/jumbo v1, "stop recog anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldPlayFacelockFailAnim()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "LockIcon"

    const-string/jumbo v1, "play fail anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockFailAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    :cond_4
    :goto_0
    return-void

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LockIcon$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon$1;-><init>(Lcom/android/systemui/statusbar/phone/LockIcon;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 288
    sget-boolean v0, Lcom/android/systemui/util/Utils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "LockIcon"

    const-string/jumbo v1, "start anim"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockAnimationSet:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_LockIcon_2559()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 144
    .local v0, "density":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    if-eq v0, v1, :cond_0

    .line 145
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDensity:I

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 147
    new-instance v1, Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 151
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onDetachedFromWindow()V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    .line 103
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 318
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    if-eqz v1, :cond_0

    .line 320
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1100f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 321
    const/16 v2, 0x10

    .line 320
    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 323
    .local v0, "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 325
    const v2, 0x7f1100f9

    .line 324
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    .line 327
    .end local v0    # "unlock":Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    :cond_0
    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "picture"    # Landroid/graphics/drawable/Drawable;
    .param p3, "userAccount"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUserAvatarIcon:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 109
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_0
.end method

.method public setAccessibilityController(Lcom/android/systemui/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mAccessibilityController:Lcom/android/systemui/statusbar/policy/AccessibilityController;

    .line 331
    return-void
.end method

.method public setDeviceInteractive(Z)V
    .locals 0
    .param p1, "deviceInteractive"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 119
    return-void
.end method

.method public setFacelockRunning(IZ)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "updateIcon"    # Z

    .prologue
    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 130
    :cond_0
    const-string/jumbo v0, "LockIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFacelockRunning , type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", updateIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mFacelockRunningType:I

    .line 133
    if-eqz p2, :cond_1

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 137
    :cond_1
    return-void
.end method

.method public setScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 124
    return-void
.end method

.method public setTransientFpError(Z)V
    .locals 0
    .param p1, "transientFpError"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTransientFpError:Z

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 114
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 155
    return-void
.end method

.method public update(Z)V
    .locals 22
    .param p1, "force"    # Z

    .prologue
    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->isShown()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v21

    .line 160
    :goto_0
    if-eqz v21, :cond_9

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->start()V

    .line 165
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getState()I

    move-result v4

    .line 166
    .local v4, "state":I
    const/4 v2, 0x3

    if-eq v4, v2, :cond_0

    const/4 v2, 0x4

    if-ne v4, v2, :cond_a

    :cond_0
    const/4 v10, 0x1

    .line 167
    .local v10, "anyFingerprintIcon":Z
    :goto_2
    move/from16 v20, v10

    .line 168
    .local v20, "useAdditionalPadding":Z
    move/from16 v18, v10

    .line 169
    .local v18, "trustHidden":Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    if-ne v4, v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    if-eq v2, v3, :cond_b

    .line 172
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 173
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v2, p0

    .line 172
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/LockIcon;->getAnimationResForTransition(IIZZZZ)I

    move-result v14

    .line 174
    .local v14, "iconAnimRes":I
    const/4 v2, -0x1

    if-eq v14, v2, :cond_c

    const/16 v17, 0x1

    .line 175
    .local v17, "isAnim":Z
    :goto_4
    const v2, 0x7f080314

    if-ne v14, v2, :cond_d

    .line 176
    const/4 v10, 0x1

    .line 177
    const/16 v20, 0x1

    .line 178
    .local v20, "useAdditionalPadding":Z
    const/16 v18, 0x1

    .line 190
    .end local v18    # "trustHidden":Z
    .end local v20    # "useAdditionalPadding":Z
    :cond_2
    :goto_5
    if-eqz v17, :cond_f

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 198
    .local v12, "icon":Landroid/graphics/drawable/Drawable;
    :goto_6
    instance-of v2, v12, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_10

    move-object v9, v12

    .line 199
    check-cast v9, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 201
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 202
    const v3, 0x7f070146

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 203
    .local v15, "iconHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    const v3, 0x7f070147

    .line 203
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 205
    .local v16, "iconWidth":I
    if-nez v10, :cond_4

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, v15, :cond_3

    .line 206
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move/from16 v0, v16

    if-eq v2, v0, :cond_4

    .line 207
    :cond_3
    new-instance v13, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;

    move/from16 v0, v16

    invoke-direct {v13, v12, v0, v15}, Lcom/android/systemui/statusbar/phone/LockIcon$IntrinsicSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .local v13, "icon":Landroid/graphics/drawable/Drawable;
    move-object v12, v13

    .line 209
    .end local v13    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz v20, :cond_11

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 211
    const v3, 0x7f070116

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 209
    :goto_8
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPaddingRelative(IIII)V

    .line 214
    if-eqz v10, :cond_12

    const/high16 v2, 0x3f800000    # 1.0f

    .line 213
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setRestingAlpha(F)V

    .line 215
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 216
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mHasFingerPrintIcon:Z

    .line 217
    if-eqz v9, :cond_5

    if-eqz v17, :cond_5

    .line 218
    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 221
    :try_start_0
    invoke-virtual {v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_5
    :goto_a
    const v2, 0x7f080314

    if-ne v14, v2, :cond_13

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x320

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/systemui/statusbar/phone/LockIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_14

    const/16 v2, 0xb

    if-ne v4, v2, :cond_14

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mContext:Landroid/content/Context;

    const v3, 0x7f0800e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 241
    :cond_6
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateIconAnimation(Landroid/view/View;)V

    .line 244
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastState:I

    .line 245
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastDeviceInteractive:Z

    .line 246
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    .line 250
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "iconAnimRes":I
    .end local v15    # "iconHeight":I
    .end local v16    # "iconWidth":I
    .end local v17    # "isAnim":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrustManaged()Z

    move-result v2

    if-eqz v2, :cond_15

    xor-int/lit8 v19, v18, 0x1

    .line 251
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->setTrustManaged(Z)V

    .line 252
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/LockIcon;->updateClickability()V

    .line 253
    return-void

    .line 158
    .end local v4    # "state":I
    .end local v10    # "anyFingerprintIcon":Z
    :cond_8
    const/16 v21, 0x0

    .local v21, "visible":Z
    goto/16 :goto_0

    .line 163
    .end local v21    # "visible":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrustDrawable;->stop()V

    goto/16 :goto_1

    .line 166
    .restart local v4    # "state":I
    :cond_a
    const/4 v10, 0x0

    .restart local v10    # "anyFingerprintIcon":Z
    goto/16 :goto_2

    .line 170
    .restart local v18    # "trustHidden":Z
    .local v20, "useAdditionalPadding":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mLastScreenOn:Z

    if-ne v2, v3, :cond_1

    .line 169
    if-eqz p1, :cond_7

    goto/16 :goto_3

    .line 174
    .restart local v14    # "iconAnimRes":I
    :cond_c
    const/16 v17, 0x0

    .restart local v17    # "isAnim":Z
    goto/16 :goto_4

    .line 179
    :cond_d
    const v2, 0x7f0806a0

    if-ne v14, v2, :cond_e

    .line 180
    const/4 v10, 0x1

    .line 181
    const/16 v20, 0x0

    .line 182
    .local v20, "useAdditionalPadding":Z
    const/16 v18, 0x1

    .local v18, "trustHidden":Z
    goto/16 :goto_5

    .line 183
    .local v18, "trustHidden":Z
    .local v20, "useAdditionalPadding":Z
    :cond_e
    const v2, 0x7f0800e1

    if-ne v14, v2, :cond_2

    .line 184
    const/4 v10, 0x1

    .line 185
    const/16 v20, 0x0

    .line 186
    .local v20, "useAdditionalPadding":Z
    const/16 v18, 0x0

    .local v18, "trustHidden":Z
    goto/16 :goto_5

    .line 195
    .end local v18    # "trustHidden":Z
    .end local v20    # "useAdditionalPadding":Z
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDeviceInteractive:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->getIconForState(IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .restart local v12    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_6

    .line 200
    :cond_10
    const/4 v9, 0x0

    .local v9, "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    goto/16 :goto_7

    .line 212
    .end local v9    # "animation":Landroid/graphics/drawable/AnimatedVectorDrawable;
    .restart local v15    # "iconHeight":I
    .restart local v16    # "iconWidth":I
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 214
    :cond_12
    const/high16 v2, 0x3f000000    # 0.5f

    goto/16 :goto_9

    .line 222
    :catch_0
    move-exception v11

    .line 223
    .local v11, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "LockIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start anim faile : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 232
    .end local v11    # "e":Ljava/lang/IllegalStateException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mDrawOffTimeout:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_b

    .line 238
    :cond_14
    const/16 v2, 0xb

    if-eq v4, v2, :cond_6

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/LockIcon;->mTrustDrawable:Lcom/android/systemui/statusbar/phone/TrustDrawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 250
    .end local v12    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v14    # "iconAnimRes":I
    .end local v15    # "iconHeight":I
    .end local v16    # "iconWidth":I
    .end local v17    # "isAnim":Z
    :cond_15
    const/16 v19, 0x0

    .local v19, "trustManaged":Z
    goto/16 :goto_d
.end method
