.class public Lcom/android/systemui/plugin/LSState;
.super Ljava/lang/Object;
.source "LSState.java"

# interfaces
.implements Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/LSState$1;,
        Lcom/android/systemui/plugin/LSState$MyUIHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/plugin/LSState;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final WHAT_UI_INIT:I

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field public final mControls:[Lcom/android/systemui/plugin/BaseCtrl;

.field private final mDozeModeCtrl:Lcom/android/systemui/plugin/DozeModeCtrl;

.field private mFingerprintUnlockControl:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mInit:Z

.field private mIsFinishedScreenTuredOn:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mPreventModeCtrl:Lcom/android/systemui/plugin/PreventModeCtrl;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/plugin/LSState;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/plugin/LSState;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    return p1
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v3, p0, Lcom/android/systemui/plugin/LSState;->DEBUG:Z

    .line 27
    const-string/jumbo v0, "LSState"

    iput-object v0, p0, Lcom/android/systemui/plugin/LSState;->TAG:Ljava/lang/String;

    .line 28
    iput v3, p0, Lcom/android/systemui/plugin/LSState;->WHAT_UI_INIT:I

    .line 33
    iput-boolean v2, p0, Lcom/android/systemui/plugin/LSState;->mInit:Z

    .line 34
    new-instance v0, Lcom/android/systemui/plugin/LSState$MyUIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/plugin/LSState$MyUIHandler;-><init>(Lcom/android/systemui/plugin/LSState;Lcom/android/systemui/plugin/LSState$MyUIHandler;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/LSState;->mUIHandler:Landroid/os/Handler;

    .line 38
    iput-boolean v2, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    .line 40
    new-instance v0, Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-direct {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 41
    new-instance v0, Lcom/android/systemui/plugin/DozeModeCtrl;

    invoke-direct {v0}, Lcom/android/systemui/plugin/DozeModeCtrl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/plugin/LSState;->mDozeModeCtrl:Lcom/android/systemui/plugin/DozeModeCtrl;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/plugin/BaseCtrl;

    .line 43
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui/plugin/PreventModeCtrl;

    aput-object v1, v0, v2

    .line 44
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState;->mDozeModeCtrl:Lcom/android/systemui/plugin/DozeModeCtrl;

    aput-object v1, v0, v3

    .line 42
    iput-object v0, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    .line 101
    new-instance v0, Lcom/android/systemui/plugin/LSState$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/LSState$1;-><init>(Lcom/android/systemui/plugin/LSState;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/LSState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 67
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/plugin/LSState;
    .locals 2

    .prologue
    const-class v1, Lcom/android/systemui/plugin/LSState;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/android/systemui/plugin/LSState;->sInstance:Lcom/android/systemui/plugin/LSState;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/android/systemui/plugin/LSState;

    invoke-direct {v0}, Lcom/android/systemui/plugin/LSState;-><init>()V

    sput-object v0, Lcom/android/systemui/plugin/LSState;->sInstance:Lcom/android/systemui/plugin/LSState;

    .line 63
    :cond_0
    sget-object v0, Lcom/android/systemui/plugin/LSState;->sInstance:Lcom/android/systemui/plugin/LSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mFingerprintUnlockControl:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-object v0
.end method

.method public getNonUILooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 279
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LSState thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "handerTread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 281
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;

    .line 283
    .end local v0    # "handerTread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method public getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui/plugin/PreventModeCtrl;

    return-object v0
.end method

.method public getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/StatusBar;

    .prologue
    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/plugin/LSState;->mInit:Z

    if-nez v2, :cond_2

    .line 72
    const-string/jumbo v2, "LSState"

    const-string/jumbo v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p2, p0, Lcom/android/systemui/plugin/LSState;->mContainer:Landroid/view/ViewGroup;

    .line 74
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 75
    iput-object p3, p0, Lcom/android/systemui/plugin/LSState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    .line 77
    .local v0, "bootCmp":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/plugin/LSState;->mInit:Z

    .line 78
    iput-object p1, p0, Lcom/android/systemui/plugin/LSState;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/plugin/LSState;->getNonUILooper()Landroid/os/Looper;

    .line 82
    iget-object v3, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 83
    .local v1, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1, p0}, Lcom/android/systemui/plugin/BaseCtrl;->setCallback(Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;)V

    .line 85
    invoke-virtual {v1, p1}, Lcom/android/systemui/plugin/BaseCtrl;->init(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v1}, Lcom/android/systemui/plugin/BaseCtrl;->startCtrl()V

    .line 82
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/systemui/plugin/LSState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bootCmp":Z
    :cond_2
    monitor-exit p0

    .line 92
    return-void

    .line 70
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public isFinishedScreenTuredOn()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    return v0
.end method

.method public onDreamingStarted()V
    .locals 5

    .prologue
    .line 237
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 238
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->onDreamingStarted()V

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onDreamingStopped()V
    .locals 5

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 246
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->onDreamingStopped()V

    .line 245
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onFingerprintStartedGoingToSleep()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    .line 98
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .prologue
    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    .line 213
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 214
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->onScreenTurnedOn()V

    .line 213
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 164
    .local v0, "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "ctrl":Lcom/android/systemui/plugin/BaseCtrl;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    .line 169
    return-void
.end method

.method public setFingerprintUnlockControl(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0
    .param p1, "fingerprintUnlockController"    # Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/systemui/plugin/LSState;->mFingerprintUnlockControl:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    .line 329
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/systemui/plugin/LSState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 305
    return-void
.end method
