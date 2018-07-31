.class public Lcom/android/systemui/plugin/PreventModeCtrl;
.super Lcom/android/systemui/plugin/BaseCtrl;
.source "PreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/PreventModeCtrl$1;,
        Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;
    }
.end annotation


# static fields
.field private static mPreventModeActive:Z

.field private static mPreventModeNoBackground:Z

.field private static mProximitySensorEnabled:Z


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field mBackground:Landroid/widget/ImageView;

.field private mBouncer:Z

.field private mDozing:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyLockMode:I

.field private mKeyguardIsVisible:Z

.field private mObject:Ljava/lang/Object;

.field mPMView:Lcom/android/systemui/plugin/PreventModeView;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/plugin/PreventModeCtrl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/plugin/PreventModeCtrl;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->disableProximitySensorInternal()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->enableProximitySensorInternal()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->startRootAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 42
    sput-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    .line 43
    sput-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/plugin/BaseCtrl;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->DEBUG:Z

    .line 36
    const-string/jumbo v0, "PreventModeCtrl"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->TAG:Ljava/lang/String;

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBouncer:Z

    .line 49
    iput-boolean v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mDozing:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mObject:Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/android/systemui/plugin/PreventModeCtrl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/PreventModeCtrl$1;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 63
    return-void
.end method

.method private disableProximitySensorInternal()V
    .locals 5

    .prologue
    .line 234
    sget-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_2

    .line 235
    const-string/jumbo v2, "PreventModeCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "disableProximitySensor, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 239
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 240
    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/plugin/PreventModeView;->setVisibility(I)V

    .line 242
    sget-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZ)V

    .line 244
    const-string/jumbo v2, "PreventModeCtrl"

    const-string/jumbo v3, "panel alpha to 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    .line 249
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    .line 251
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 252
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V

    .line 255
    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    .end local v0    # "identity":J
    :cond_2
    return-void

    .line 256
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    .line 257
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 256
    throw v2
.end method

.method private enableProximitySensorInternal()V
    .locals 7

    .prologue
    const/4 v4, 0x3

    .line 203
    sget-boolean v3, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    if-nez v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 206
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    sget-boolean v3, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z

    if-nez v3, :cond_1

    .line 210
    const-string/jumbo v3, "PreventModeCtrl"

    const-string/jumbo v4, "enableProximitySensor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 214
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v5, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    .line 215
    const/4 v6, 0x3

    .line 214
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 216
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 217
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 217
    throw v3
.end method

.method private isPreventModeEnabled()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/Utils;->isPreventModeEnalbed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startRootAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 264
    sget-boolean v1, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 265
    :cond_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_acc_key_lock_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyLockMode:I

    .line 269
    const-string/jumbo v1, "PreventModeCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRootAnimation, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyLockMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    .line 272
    .local v0, "bar":Lcom/android/systemui/statusbar/phone/StatusBar;
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v0, v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelViewAlpha(FZ)V

    .line 274
    sput-boolean v4, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    .line 275
    const-string/jumbo v1, "PreventModeCtrl"

    const-string/jumbo v2, "panel alpha to 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_2
    sput-boolean v4, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    .line 281
    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 283
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->stopFacelockLightMode()V

    .line 285
    :cond_3
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyPreventModeChange(Z)V

    .line 289
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 290
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 291
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 292
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/plugin/PreventModeCtrl$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/PreventModeCtrl$2;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 300
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/plugin/PreventModeCtrl$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/plugin/PreventModeCtrl$3;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 323
    return-void
.end method


# virtual methods
.method public disPatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/plugin/PreventModeView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 137
    return-void
.end method

.method public disableProximitySensor()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 224
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    :cond_0
    return-void
.end method

.method public isPreventModeActive()Z
    .locals 1

    .prologue
    .line 342
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeActive:Z

    return v0
.end method

.method public isPreventModeNoBackground()Z
    .locals 1

    .prologue
    .line 347
    sget-boolean v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPreventModeNoBackground:Z

    return v0
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mDozing:Z

    .line 86
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mDozing:Z

    .line 91
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 120
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBouncer:Z

    .line 125
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mKeyguardIsVisible:Z

    .line 130
    if-nez p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->disableProximitySensor()V

    .line 133
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mDozing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    :cond_0
    return-void
.end method

.method public onStartCtrl()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string/jumbo v0, "PreventModeCtrl"

    const-string/jumbo v1, "onStartCtrl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 69
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a025b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugin/PreventModeView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    .line 70
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a0240

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPMView == null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/PreventModeView;->init()V

    .line 74
    new-instance v0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mProximitySensor:Landroid/hardware/Sensor;

    .line 77
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 108
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    :cond_0
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 327
    const-string/jumbo v2, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWallpaperChange: bitmap:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    if-eqz p1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/util/ImageUtils;->computeCustomBackgroundBounds(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 327
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
