.class public Lcom/android/server/utils/ManagedApplicationService;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/ManagedApplicationService$BinderChecker;,
        Lcom/android/server/utils/ManagedApplicationService$EventCallback;,
        Lcom/android/server/utils/ManagedApplicationService$LogEvent;,
        Lcom/android/server/utils/ManagedApplicationService$LogFormattable;,
        Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x4

.field private static final MAX_RETRY_DURATION_MS:J = 0x3e80L

.field private static final MIN_RETRY_DURATION_MS:J = 0x7d0L

.field public static final RETRY_BEST_EFFORT:I = 0x3

.field public static final RETRY_FOREVER:I = 0x1

.field public static final RETRY_NEVER:I = 0x2

.field private static final RETRY_RESET_TIME_MS:J = 0xfa00L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBoundInterface:Landroid/os/IInterface;

.field private final mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

.field private final mClientLabel:I

.field private final mComponent:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsImportant:Z

.field private mLastRetryTimeMs:J

.field private final mLock:Ljava/lang/Object;

.field private mNextRetryDurationMs:J

.field private mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;

.field private final mRetryType:I

.field private mRetrying:Z

.field private final mSettingsAction:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;
    .param p1, "-value"    # Landroid/os/IInterface;

    .prologue
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;
    .param p1, "-value"    # Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    .prologue
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/utils/ManagedApplicationService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->stopRetriesLocked()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "clientLabel"    # I
    .param p5, "settingsAction"    # Ljava/lang/String;
    .param p6, "binderChecker"    # Lcom/android/server/utils/ManagedApplicationService$BinderChecker;
    .param p7, "isImportant"    # Z
    .param p8, "retryType"    # I
    .param p9, "handler"    # Landroid/os/Handler;
    .param p10, "eventCallback"    # Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs;

    invoke-direct {v0, p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    .line 100
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    .line 156
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 158
    iput p3, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    .line 159
    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    .line 160
    iput-object p5, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    .line 161
    iput-object p6, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    .line 162
    iput-boolean p7, p0, Lcom/android/server/utils/ManagedApplicationService;->mIsImportant:Z

    .line 163
    iput p8, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    .line 164
    iput-object p9, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p10, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .line 166
    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "clientLabel"    # I
    .param p4, "settingsAction"    # Ljava/lang/String;
    .param p5, "binderChecker"    # Lcom/android/server/utils/ManagedApplicationService$BinderChecker;
    .param p6, "isImportant"    # Z
    .param p7, "retryType"    # I
    .param p8, "handler"    # Landroid/os/Handler;
    .param p9, "eventCallback"    # Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    .prologue
    .line 217
    new-instance v0, Lcom/android/server/utils/ManagedApplicationService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)V

    return-object v0
.end method

.method private checkAndDeliverServiceDiedCbLocked()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 448
    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    if-ne v2, v5, :cond_2

    .line 449
    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has died too much, not retrying."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    if-eqz v2, :cond_1

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 454
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;

    invoke-direct {v3, v5, v0, v1, p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;-><init>(BJLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    .end local v0    # "timestamp":J
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 461
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private doRetry()V
    .locals 4

    .prologue
    .line 465
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 468
    return-void

    .line 470
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit v1

    .line 472
    return-void

    .line 474
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempting to reconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 481
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    .line 483
    return-void

    .line 485
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    .line 486
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v1

    .line 488
    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private matches(Landroid/content/ComponentName;I)Z
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private queueRetryLocked()V
    .locals 6

    .prologue
    .line 434
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 435
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xfa00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 437
    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    .line 438
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    .line 440
    :cond_0
    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    .line 441
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 442
    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e80

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    .line 443
    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    .line 444
    return-void
.end method

.method private startRetriesLocked()V
    .locals 1

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 417
    return-void

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    if-eqz v0, :cond_1

    .line 422
    return-void

    .line 424
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    .line 425
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    .line 426
    return-void
.end method

.method private stopRetriesLocked()V
    .locals 2

    .prologue
    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    .line 430
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_utils_ManagedApplicationService-mthref-0()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->doRetry()V

    return-void
.end method

.method public connect()V
    .locals 9

    .prologue
    .line 295
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 298
    return-void

    .line 301
    :cond_0
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 302
    .local v2, "intent":Landroid/content/Intent;
    iget v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    if-eqz v3, :cond_1

    .line 303
    const-string/jumbo v3, "android.intent.extra.client_label"

    iget v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 305
    :cond_1
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 306
    const-string/jumbo v3, "android.intent.extra.client_intent"

    .line 307
    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 306
    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 310
    :cond_2
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$1;

    invoke-direct {v3, p0}, Lcom/android/server/utils/ManagedApplicationService$1;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    iput-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    .line 392
    const v1, 0x4000001

    .line 393
    .local v1, "flags":I
    iget-boolean v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mIsImportant:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 394
    const v1, 0x4000041

    .line 397
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    .line 398
    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 397
    invoke-virtual {v3, v2, v5, v1, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 399
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to bind service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_0
    monitor-exit v4

    .line 407
    return-void

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_3
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to bind service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 295
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "flags":I
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 282
    return-void

    .line 285
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 289
    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disconnectIfNotMatching(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/ManagedApplicationService;->matches(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    return v0
.end method

.method synthetic lambda$-com_android_server_utils_ManagedApplicationService_17383(J)V
    .locals 5
    .param p1, "timestamp"    # J

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 456
    const/4 v3, 0x4

    .line 455
    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method public sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    .prologue
    .line 259
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    .line 261
    .local v1, "iface":Landroid/os/IInterface;
    if-nez v1, :cond_0

    .line 262
    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 266
    if-eqz v1, :cond_1

    .line 268
    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :cond_1
    :goto_0
    return-void

    .line 259
    .end local v1    # "iface":Landroid/os/IInterface;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 269
    .restart local v1    # "iface":Landroid/os/IInterface;
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Received exception from user service: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
