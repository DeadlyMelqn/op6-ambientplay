.class Lcom/android/server/am/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    }
.end annotation


# static fields
.field private static final INVALID_START_TIME:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private mLastLogTimeSecs:J

.field private final mLastStackTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTransitionStartTime:J

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStackTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "window_time_0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "window_time_3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 65
    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V
    .locals 4
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 72
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 74
    iput-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 75
    iput-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastStackTransitionInfo:Landroid/util/SparseArray;

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 98
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 99
    iput-object p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 100
    return-void
.end method

.method private allStacksWindowsDrawn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    return v2

    .line 327
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 332
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private calculateCurrentDelay()I
    .locals 4

    .prologue
    .line 353
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method private getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I
    .locals 2
    .param p1, "info"    # Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .prologue
    .line 419
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    const/16 v0, 0x8

    return v0

    .line 422
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 423
    const/16 v0, 0x9

    return v0

    .line 425
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_2

    .line 426
    const/4 v0, 0x7

    return v0

    .line 428
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 176
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 177
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 178
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    if-ne p2, v1, :cond_1

    .line 176
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 181
    :cond_1
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v3, :cond_0

    .line 182
    const/4 v3, 0x1

    return v3

    .line 185
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v4
.end method

.method private isAnyTransitionActive()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 336
    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 336
    :cond_0
    return v0
.end method

.method private logAppTransitionMultiEvents()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 362
    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_6

    .line 363
    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .line 364
    .local v2, "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v4

    .line 365
    .local v4, "type":I
    if-ne v4, v8, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v5, 0x2f9

    invoke-direct {v0, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 369
    .local v0, "builder":Landroid/metrics/LogMaker;
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 370
    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 371
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v7, 0x367

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 372
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v3

    .line 373
    .local v3, "isInstantApp":Z
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 375
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 374
    const/16 v7, 0x388

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 377
    :cond_1
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 379
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 378
    const/16 v7, 0x387

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 380
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v9, v5, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 382
    :cond_2
    if-eqz v3, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x389

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 384
    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 383
    const/16 v7, 0x145

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 385
    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x13f

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 386
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get5(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 387
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    if-eq v5, v8, :cond_3

    .line 389
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 388
    const/16 v7, 0x141

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 391
    :cond_3
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    if-eq v5, v8, :cond_4

    .line 393
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 392
    const/16 v7, 0x3b1

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 395
    :cond_4
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get8(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v7, 0x142

    invoke-virtual {v0, v7, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 396
    iget-object v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 362
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :cond_5
    move v5, v6

    .line 382
    goto :goto_1

    .line 398
    .end local v0    # "builder":Landroid/metrics/LogMaker;
    .end local v2    # "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .end local v3    # "isInstantApp":Z
    .end local v4    # "type":I
    :cond_6
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V
    .locals 9
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "processRunning"    # Z
    .param p4, "processSwitch"    # Z

    .prologue
    const/4 v8, 0x0

    .line 204
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    iget v3, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 208
    .local v3, "stackId":I
    :goto_0
    iget-wide v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 209
    return-void

    .line 206
    .end local v3    # "stackId":I
    :cond_0
    const/4 v3, -0x1

    .restart local v3    # "stackId":I
    goto :goto_0

    .line 212
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .line 213
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    .line 214
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 215
    return-void

    .line 218
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    if-nez v0, :cond_4

    const/4 v2, 0x1

    .line 219
    .local v2, "otherStacksLaunching":Z
    :goto_1
    if-ltz p1, :cond_3

    if-nez p2, :cond_5

    .line 220
    :cond_3
    xor-int/lit8 v4, v2, 0x1

    .line 219
    if-eqz v4, :cond_6

    .line 223
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    .line 224
    return-void

    .line 218
    .end local v2    # "otherStacksLaunching":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "otherStacksLaunching":Z
    goto :goto_1

    .line 219
    :cond_5
    xor-int/lit8 v4, p4, 0x1

    if-nez v4, :cond_3

    .line 220
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 225
    :cond_6
    if-eqz v2, :cond_7

    .line 227
    return-void

    .line 230
    :cond_7
    new-instance v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    invoke-direct {v1, p0, v8}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)V

    .line 231
    .local v1, "newInfo":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    invoke-static {v1, p2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 232
    invoke-static {v1, p3}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    .line 233
    invoke-static {v1, p1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set6(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    .line 234
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 237
    return-void
.end method

.method private reset(Z)V
    .locals 2
    .param p1, "abort"    # Z

    .prologue
    .line 341
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    .line 344
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 345
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 347
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 348
    return-void
.end method


# virtual methods
.method logAppTransitionReportedDrawn(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "restoredFromBundle"    # Z

    .prologue
    .line 401
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .line 402
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    if-nez v1, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v2, 0x442

    invoke-direct {v0, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 406
    .local v0, "builder":Landroid/metrics/LogMaker;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 407
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/16 v3, 0x367

    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 408
    const/16 v3, 0x443

    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 410
    if-eqz p2, :cond_1

    .line 411
    const/16 v2, 0xd

    .line 410
    :goto_0
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 414
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get1(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 413
    const/16 v3, 0x144

    invoke-virtual {v0, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 415
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 416
    return-void

    .line 412
    :cond_1
    const/16 v2, 0xc

    goto :goto_0

    .line 414
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method logWindowState()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, -0x1

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 104
    .local v0, "now":J
    iget v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    if-eq v3, v8, :cond_0

    .line 108
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    aget-object v4, v4, v5

    .line 109
    iget-wide v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v6, v0, v6

    long-to-int v5, v6

    .line 108
    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 111
    :cond_0
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 113
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 114
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    iput v11, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 116
    return-void

    .line 118
    :cond_1
    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 119
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 120
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 123
    :cond_2
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 124
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v11, :cond_5

    .line 125
    :cond_3
    iput v10, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 137
    :cond_4
    :goto_0
    return-void

    .line 126
    :cond_5
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v9, :cond_6

    .line 127
    sget-object v3, Lcom/android/server/am/ActivityMetricsLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Docked stack shouldn\'t be the focused stack, because it reported not being visible."

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    .line 130
    :cond_6
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v3, v12, :cond_7

    .line 131
    iput v12, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    .line 132
    :cond_7
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_8

    .line 133
    iput v9, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    goto :goto_0

    .line 134
    :cond_8
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 158
    if-eqz p2, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    .line 160
    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 159
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 162
    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 168
    .local v1, "processRunning":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 169
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v3

    xor-int/lit8 v2, v3, 0x1

    .line 171
    :goto_2
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V

    .line 172
    return-void

    .line 161
    .end local v1    # "processRunning":Z
    :cond_0
    const/4 v0, 0x0

    .local v0, "processRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_0

    .line 162
    .end local v0    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "processRunning":Z
    goto :goto_1

    .line 168
    :cond_2
    const/4 v2, 0x1

    .local v2, "processSwitch":Z
    goto :goto_2
.end method

.method notifyActivityLaunching()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 146
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 148
    :cond_0
    return-void
.end method

.method notifyBindApplication(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 316
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 317
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .line 320
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-ne v2, v3, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set0(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    .line 316
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 324
    .end local v1    # "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    :cond_1
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .line 259
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get3(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    :cond_0
    return-void

    .line 262
    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set3(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    .line 263
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set7(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    .line 264
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .locals 6
    .param p1, "stackIdReasons"    # Landroid/util/SparseIntArray;
    .param p2, "timestamp"    # J

    .prologue
    const/4 v4, 0x0

    .line 273
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v3, :cond_1

    .line 274
    :cond_0
    return-void

    .line 276
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 277
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 278
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_3

    .line 279
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 280
    .local v2, "stackId":I
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .line 281
    .local v1, "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    if-nez v1, :cond_2

    .line 278
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set5(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    goto :goto_1

    .line 286
    .end local v1    # "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    .end local v2    # "stackId":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allStacksWindowsDrawn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 287
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    .line 289
    :cond_4
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 3
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .line 302
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    if-eqz v0, :cond_0

    xor-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get2(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 304
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method notifyWindowsDrawn(IJ)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "timestamp"    # J

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStackTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;

    .line 244
    .local v0, "info":Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-get4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    return-void

    .line 247
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set8(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;I)I

    .line 248
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;->-set4(Lcom/android/server/am/ActivityMetricsLogger$StackTransitionInfo;Z)Z

    .line 249
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allStacksWindowsDrawn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v1, :cond_2

    .line 250
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(Z)V

    .line 252
    :cond_2
    return-void
.end method
