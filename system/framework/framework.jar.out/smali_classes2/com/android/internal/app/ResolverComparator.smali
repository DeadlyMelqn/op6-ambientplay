.class Lcom/android/internal/app/ResolverComparator;
.super Ljava/lang/Object;
.source "ResolverComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverComparator$1;,
        Lcom/android/internal/app/ResolverComparator$AfterCompute;,
        Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECTION_COST_TIMEOUT_MILLIS:I = 0xc8

.field private static final DEBUG:Z = false

.field private static final NUM_OF_TOP_ANNOTATIONS_TO_USE:I = 0x3

.field private static final RECENCY_MULTIPLIER:F = 2.0f

.field private static final RECENCY_TIME_PERIOD:J = 0x2932e00L

.field private static final RESOLVER_RANKER_RESULT_TIMEOUT:I = 0x1

.field private static final RESOLVER_RANKER_SERVICE_RESULT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ResolverComparator"

.field private static final USAGE_STATS_PERIOD:J = 0x240c8400L

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x1f4


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

.field private mAnnotations:[Ljava/lang/String;

.field private final mCollator:Ljava/text/Collator;

.field private mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field private mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mCurrentTime:J

.field private final mHandler:Landroid/os/Handler;

.field private final mHttp:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mRanker:Landroid/service/resolver/IResolverRankerService;

.field private mRankerServiceName:Landroid/content/ComponentName;

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolvedRankerName:Landroid/content/ComponentName;

.field private final mSinceTime:J

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetsDict:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/service/resolver/ResolverTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsm:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ResolverComparator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ResolverComparator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ResolverComparator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ResolverComparator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/app/ResolverComparator;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/ResolverComparator;Landroid/service/resolver/IResolverRankerService;)Landroid/service/resolver/IResolverRankerService;
    .locals 0
    .param p0, "-this"    # Lcom/android/internal/app/ResolverComparator;
    .param p1, "-value"    # Landroid/service/resolver/IResolverRankerService;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "-this"    # Lcom/android/internal/app/ResolverComparator;
    .param p1, "-value"    # Landroid/content/ComponentName;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "referrerPackage"    # Ljava/lang/String;
    .param p4, "afterCompute"    # Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    .line 100
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    .line 113
    new-instance v1, Lcom/android/internal/app/ResolverComparator$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ResolverComparator$1;-><init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    .line 173
    iput-object p3, p0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    .line 174
    iput-object p4, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 175
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 178
    const-string/jumbo v1, "usagestats"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    .line 181
    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v4, 0x240c8400

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    .line 182
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-wide v2, p0, Lcom/android/internal/app/ResolverComparator;->mSinceTime:J

    iget-wide v4, p0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/usage/UsageStatsManager;->queryAndAggregateUsageStats(JJ)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    .line 184
    invoke-virtual {p0, p2}, Lcom/android/internal/app/ResolverComparator;->getContentAnnotations(Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    .line 186
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverComparator;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 187
    return-void

    .line 172
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V
    .locals 6
    .param p1, "target"    # Landroid/service/resolver/ResolverTarget;

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 616
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v1

    const v2, 0x402379a7    # 2.5543f

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v2

    const v3, 0x4035d639

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 617
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v2

    const v3, 0x3e89ba5e    # 0.269f

    mul-float/2addr v2, v3

    .line 616
    add-float/2addr v1, v2

    .line 617
    invoke-virtual {p1}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v2

    const v3, 0x40871c43    # 4.2222f

    mul-float/2addr v2, v3

    .line 616
    add-float v0, v1, v2

    .line 618
    .local v0, "sum":F
    const v1, 0x3fd41206    # 1.6568f

    sub-float/2addr v1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    add-double/2addr v2, v4

    div-double v2, v4, v2

    double-to-float v1, v2

    invoke-virtual {p1, v1}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 619
    return-void
.end method

.method private initRanker(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 440
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 441
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 445
    return-void

    :cond_0
    monitor-exit v2

    .line 448
    invoke-direct {p0}, Lcom/android/internal/app/ResolverComparator;->resolveRankerService()Landroid/content/Intent;

    move-result-object v0

    .line 449
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 450
    return-void

    .line 440
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 452
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 453
    new-instance v1, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;-><init>(Lcom/android/internal/app/ResolverComparator;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 454
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 455
    return-void
.end method

.method static isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 2
    .param p0, "rci"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    const/4 v0, 0x0

    .line 631
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 632
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 635
    :cond_1
    return v0
.end method

.method private logMetrics(I)V
    .locals 5
    .param p1, "selectedPos"    # I

    .prologue
    .line 427
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 428
    new-instance v2, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v2}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 429
    .local v2, "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v3, 0x43d

    invoke-direct {v1, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 430
    .local v1, "log":Landroid/metrics/LogMaker;
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    .line 431
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 432
    .local v0, "isCategoryUsed":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x43e

    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 433
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x43f

    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 434
    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 436
    .end local v0    # "isCategoryUsed":I
    .end local v1    # "log":Landroid/metrics/LogMaker;
    .end local v2    # "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    :cond_0
    return-void

    .line 431
    .restart local v1    # "log":Landroid/metrics/LogMaker;
    .restart local v2    # "metricsLogger":Lcom/android/internal/logging/MetricsLogger;
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isCategoryUsed":I
    goto :goto_0
.end method

.method private predictSelectProbabilities(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-nez v2, :cond_0

    .line 582
    return-void

    .line 587
    :cond_0
    :try_start_0
    const-string/jumbo v2, "ResolverComparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " predictSelectProbabilities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_1

    .line 589
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 593
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 594
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    if-eqz v2, :cond_3

    .line 595
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v4, v4, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    invoke-interface {v2, p1, v4}, Landroid/service/resolver/IResolverRankerService;->predict(Ljava/util/List;Landroid/service/resolver/IResolverRankerResult;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    .line 596
    return-void

    .line 591
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "ResolverComparator"

    const-string/jumbo v3, "Error in Wait for Service Connection."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    if-eqz v2, :cond_2

    .line 610
    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    invoke-interface {v2}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    .line 612
    :cond_2
    return-void

    :cond_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 605
    :catch_1
    move-exception v0

    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "ResolverComparator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in Predict: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 593
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 568
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 569
    iput-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 570
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverComparator;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mRankerServiceName:Landroid/content/ComponentName;

    .line 571
    iput-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 572
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->startWatchDog(I)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverComparator;->initRanker(Landroid/content/Context;)V

    .line 574
    return-void
.end method

.method private resolveRankerService()Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 459
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.service.resolver.ResolverRankerService"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 461
    .local v6, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 462
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_0

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_0

    .line 463
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    .line 469
    new-instance v0, Landroid/content/ComponentName;

    .line 470
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 471
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 469
    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 474
    .local v3, "perm":Ljava/lang/String;
    const-string/jumbo v7, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 475
    const-string/jumbo v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ResolverRankerService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not require"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 476
    const-string/jumbo v9, " permission "

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 476
    const-string/jumbo v9, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 477
    const-string/jumbo v9, " - this service will not be queried for ResolverComparator."

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 478
    const-string/jumbo v9, " add android:permission=\""

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 479
    const-string/jumbo v9, "android.permission.BIND_RESOLVER_RANKER_SERVICE"

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 479
    const-string/jumbo v9, "\""

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 480
    const-string/jumbo v9, " to the <service> tag for "

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 481
    const-string/jumbo v9, " in the manifest."

    .line 475
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 492
    .end local v3    # "perm":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 493
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not look up service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 494
    const-string/jumbo v9, "; component name not found"

    .line 493
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 484
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "perm":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mPm:Landroid/content/pm/PackageManager;

    .line 485
    const-string/jumbo v8, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    .line 486
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 484
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 487
    const-string/jumbo v7, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ResolverRankerService "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not hold"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 488
    const-string/jumbo v9, " permission "

    .line 487
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 488
    const-string/jumbo v9, "android.permission.PROVIDE_RESOLVER_RANKER_SERVICE"

    .line 487
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 489
    const-string/jumbo v9, " - this service will not be queried for ResolverComparator."

    .line 487
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 500
    :cond_2
    iput-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mResolvedRankerName:Landroid/content/ComponentName;

    .line 501
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 502
    return-object v2

    .line 504
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "perm":Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    return-object v10
.end method

.method private setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V
    .locals 0
    .param p1, "target"    # Landroid/service/resolver/ResolverTarget;
    .param p2, "recencyScore"    # F
    .param p3, "launchScore"    # F
    .param p4, "timeSpentScore"    # F
    .param p5, "chooserScore"    # F

    .prologue
    .line 624
    invoke-virtual {p1, p2}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 625
    invoke-virtual {p1, p3}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 626
    invoke-virtual {p1, p4}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 627
    invoke-virtual {p1, p5}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 628
    return-void
.end method

.method private startWatchDog(I)V
    .locals 4
    .param p1, "timeOutLimit"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 511
    const-string/jumbo v0, "ResolverComparator"

    const-string/jumbo v1, "Error: Handler is Null; Needs to be initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 514
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I
    .locals 16
    .param p1, "lhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .param p2, "rhsp"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .prologue
    .line 301
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 302
    .local v2, "lhs":Landroid/content/pm/ResolveInfo;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 305
    .local v6, "rhs":Landroid/content/pm/ResolveInfo;
    iget v12, v2, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_1

    .line 306
    iget v12, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    const/4 v12, 0x1

    goto :goto_0

    .line 308
    :cond_1
    iget v12, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v13, -0x2

    if-eq v12, v13, :cond_2

    .line 309
    const/4 v12, -0x1

    return v12

    .line 312
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/app/ResolverComparator;->mHttp:Z

    if-eqz v12, :cond_4

    .line 316
    iget v12, v2, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v12}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v3

    .line 317
    .local v3, "lhsSpecific":Z
    iget v12, v6, Landroid/content/pm/ResolveInfo;->match:I

    invoke-static {v12}, Lcom/android/internal/app/ResolverActivity;->isSpecificUriMatch(I)Z

    move-result v7

    .line 318
    .local v7, "rhsSpecific":Z
    if-eq v3, v7, :cond_4

    .line 319
    if-eqz v3, :cond_3

    const/4 v12, -0x1

    :goto_1
    return v12

    :cond_3
    const/4 v12, 0x1

    goto :goto_1

    .line 323
    .end local v3    # "lhsSpecific":Z
    .end local v7    # "rhsSpecific":Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v1

    .line 324
    .local v1, "lPinned":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->isPinned()Z

    move-result v5

    .line 326
    .local v5, "rPinned":Z
    if-eqz v1, :cond_5

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_5

    .line 327
    const/4 v12, -0x1

    return v12

    .line 328
    :cond_5
    if-nez v1, :cond_6

    if-eqz v5, :cond_6

    .line 329
    const/4 v12, 0x1

    return v12

    .line 333
    :cond_6
    if-nez v1, :cond_8

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_8

    .line 334
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    if-eqz v12, :cond_8

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v13, Landroid/content/ComponentName;

    .line 336
    iget-object v14, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 335
    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    .line 337
    .local v4, "lhsTarget":Landroid/service/resolver/ResolverTarget;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    new-instance v13, Landroid/content/ComponentName;

    .line 338
    iget-object v14, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 337
    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/resolver/ResolverTarget;

    .line 340
    .local v8, "rhsTarget":Landroid/service/resolver/ResolverTarget;
    if-eqz v4, :cond_8

    if-eqz v8, :cond_8

    .line 342
    invoke-virtual {v8}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v12

    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v13

    .line 341
    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    .line 344
    .local v11, "selectProbabilityDiff":I
    if-eqz v11, :cond_8

    .line 345
    if-lez v11, :cond_7

    const/4 v12, 0x1

    :goto_2
    return v12

    :cond_7
    const/4 v12, -0x1

    goto :goto_2

    .line 352
    .end local v4    # "lhsTarget":Landroid/service/resolver/ResolverTarget;
    .end local v8    # "rhsTarget":Landroid/service/resolver/ResolverTarget;
    .end local v11    # "selectProbabilityDiff":I
    :cond_8
    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 353
    .local v9, "sa":Ljava/lang/CharSequence;
    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 355
    .local v10, "sb":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/app/ResolverComparator;->mCollator:Ljava/text/Collator;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    return v12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 299
    check-cast p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    check-cast p2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverComparator;->compare(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)I

    move-result v0

    return v0
.end method

.method public compute(Ljava/util/List;)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverComparator;->reset()V

    .line 213
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/app/ResolverComparator;->mCurrentTime:J

    const-wide/32 v6, 0x2932e00

    sub-long v18, v4, v6

    .line 215
    .local v18, "recentSinceTime":J
    const/high16 v13, 0x3f800000    # 1.0f

    .line 216
    .local v13, "mostRecencyScore":F
    const/high16 v14, 0x3f800000    # 1.0f

    .line 217
    .local v14, "mostTimeSpentScore":F
    const/high16 v12, 0x3f800000    # 1.0f

    .line 218
    .local v12, "mostLaunchScore":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 219
    .local v11, "mostChooserScore":F
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "target$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 220
    .local v22, "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    new-instance v20, Landroid/service/resolver/ResolverTarget;

    invoke-direct/range {v20 .. v20}, Landroid/service/resolver/ResolverTarget;-><init>()V

    .line 221
    .local v20, "resolverTarget":Landroid/service/resolver/ResolverTarget;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-virtual {v2, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mStats:Ljava/util/Map;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    .line 223
    .local v15, "pkStats":Landroid/app/usage/UsageStats;
    if-eqz v15, :cond_0

    .line 227
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mReferrerPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    invoke-static/range {v22 .. v22}, Lcom/android/internal/app/ResolverComparator;->isPersistentProcess(Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 227
    if-eqz v2, :cond_1

    .line 230
    invoke-virtual {v15}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    sub-long v4, v4, v18

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    long-to-float v0, v4

    move/from16 v17, v0

    .line 231
    .local v17, "recencyScore":F
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/service/resolver/ResolverTarget;->setRecencyScore(F)V

    .line 232
    cmpl-float v2, v17, v13

    if-lez v2, :cond_1

    .line 233
    move/from16 v13, v17

    .line 236
    .end local v17    # "recencyScore":F
    :cond_1
    invoke-virtual {v15}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v4

    long-to-float v0, v4

    move/from16 v24, v0

    .line 237
    .local v24, "timeSpentScore":F
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/service/resolver/ResolverTarget;->setTimeSpentScore(F)V

    .line 238
    cmpl-float v2, v24, v14

    if-lez v2, :cond_2

    .line 239
    move/from16 v14, v24

    .line 241
    :cond_2
    iget v2, v15, Landroid/app/usage/UsageStats;->mLaunchCount:I

    int-to-float v10, v2

    .line 242
    .local v10, "launchScore":F
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/service/resolver/ResolverTarget;->setLaunchScore(F)V

    .line 243
    cmpl-float v2, v10, v12

    if-lez v2, :cond_3

    .line 244
    move v12, v10

    .line 247
    :cond_3
    const/4 v8, 0x0

    .line 248
    .local v8, "chooserScore":F
    iget-object v2, v15, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 249
    iget-object v2, v15, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 250
    iget-object v2, v15, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 250
    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v8, v2

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    array-length v0, v2

    move/from16 v21, v0

    .line 254
    .local v21, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 255
    iget-object v2, v15, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    aget-object v4, v4, v9

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 255
    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    .line 254
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 269
    .end local v9    # "i":I
    .end local v21    # "size":I
    :cond_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/service/resolver/ResolverTarget;->setChooserScore(F)V

    .line 270
    cmpl-float v2, v8, v11

    if-lez v2, :cond_0

    .line 271
    move v11, v8

    goto/16 :goto_0

    .line 283
    .end local v8    # "chooserScore":F
    .end local v10    # "launchScore":F
    .end local v15    # "pkStats":Landroid/app/usage/UsageStats;
    .end local v20    # "resolverTarget":Landroid/service/resolver/ResolverTarget;
    .end local v22    # "target":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v24    # "timeSpentScore":F
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/resolver/ResolverTarget;

    .line 285
    .local v3, "target":Landroid/service/resolver/ResolverTarget;
    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getRecencyScore()F

    move-result v2

    div-float v16, v2, v13

    .line 286
    .local v16, "recency":F
    mul-float v2, v16, v16

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, v2

    .line 287
    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getLaunchScore()F

    move-result v2

    div-float v5, v2, v12

    .line 288
    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getTimeSpentScore()F

    move-result v2

    div-float v6, v2, v14

    .line 289
    invoke-virtual {v3}, Landroid/service/resolver/ResolverTarget;->getChooserScore()F

    move-result v2

    div-float v7, v2, v11

    move-object/from16 v2, p0

    .line 286
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/ResolverComparator;->setFeatures(Landroid/service/resolver/ResolverTarget;FFFF)V

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/app/ResolverComparator;->addDefaultSelectProbability(Landroid/service/resolver/ResolverTarget;)V

    goto :goto_2

    .line 295
    .end local v3    # "target":Landroid/service/resolver/ResolverTarget;
    .end local v16    # "recency":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverComparator;->predictSelectProbabilities(Ljava/util/List;)V

    .line 296
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 408
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    if-eqz v0, :cond_0

    .line 412
    const-string/jumbo v0, "ResolverComparator"

    const-string/jumbo v1, "call mAfterCompute.afterCompute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mConnection:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->destroy()V

    .line 423
    :cond_1
    return-void
.end method

.method public getContentAnnotations(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    const-string/jumbo v3, "android.intent.extra.CONTENT_ANNOTATIONS"

    .line 191
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 193
    .local v0, "annotations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 195
    .local v2, "size":I
    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 196
    const/4 v2, 0x3

    .line 198
    :cond_0
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    .line 199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 200
    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v1

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-void
.end method

.method public getScore(Landroid/content/ComponentName;)F
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/resolver/ResolverTarget;

    .line 360
    .local v0, "target":Landroid/service/resolver/ResolverTarget;
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v1

    return v1

    .line 363
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V
    .locals 0
    .param p1, "afterCompute"    # Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator;->mAfterCompute:Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 207
    return-void
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator;->mUsm:Landroid/app/usage/UsageStatsManager;

    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator;->mContentType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator;->mAnnotations:[Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 10
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 374
    iget-object v7, p0, Lcom/android/internal/app/ResolverComparator;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 375
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 377
    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/internal/app/ResolverComparator;->mTargetsDict:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 379
    .local v2, "selectedPos":I
    if-ltz v2, :cond_2

    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v3

    .line 381
    .local v3, "selectedProbability":F
    const/4 v1, 0x0

    .line 382
    .local v1, "order":I
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "target$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/resolver/ResolverTarget;

    .line 383
    .local v4, "target":Landroid/service/resolver/ResolverTarget;
    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    move-result v6

    cmpl-float v6, v6, v3

    if-lez v6, :cond_0

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    .end local v4    # "target":Landroid/service/resolver/ResolverTarget;
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverComparator;->logMetrics(I)V

    .line 388
    iget-object v6, p0, Lcom/android/internal/app/ResolverComparator;->mRanker:Landroid/service/resolver/IResolverRankerService;

    iget-object v8, p0, Lcom/android/internal/app/ResolverComparator;->mTargets:Ljava/util/ArrayList;

    invoke-interface {v6, v8, v2}, Landroid/service/resolver/IResolverRankerService;->train(Ljava/util/List;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "order":I
    .end local v2    # "selectedPos":I
    .end local v3    # "selectedProbability":F
    .end local v5    # "target$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    monitor-exit v7

    .line 403
    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v6, "ResolverComparator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error in Train: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 374
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method
