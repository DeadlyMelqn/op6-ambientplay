.class Lcom/android/server/usage/StorageStatsService$H;
.super Landroid/os/Handler;
.source "StorageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/StorageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MINIMUM_CHANGE_DELTA:D = 0.05

.field private static final MSG_CHECK_STORAGE_DELTA:I = 0x64

.field private static final MSG_LOAD_CACHED_QUOTAS_FROM_FILE:I = 0x65

.field private static final UNSET:I = -0x1


# instance fields
.field private mMinimumThresholdBytes:D

.field private mPreviousBytes:J

.field private final mStats:Landroid/os/StatFs;

.field final synthetic this$0:Lcom/android/server/usage/StorageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/usage/StorageStatsService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    .line 465
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 467
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    .line 468
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 469
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/StorageStatsService$H;->mMinimumThresholdBytes:D

    .line 470
    return-void
.end method

.method private getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;
    .locals 5

    .prologue
    .line 529
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 530
    .local v0, "usageStatsManager":Landroid/app/usage/UsageStatsManagerInternal;
    new-instance v1, Lcom/android/server/storage/CacheQuotaStrategy;

    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->-get1(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->-get2(Lcom/android/server/usage/StorageStatsService;)Lcom/android/server/pm/Installer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v4}, Lcom/android/server/usage/StorageStatsService;->-get0(Lcom/android/server/usage/StorageStatsService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/server/storage/CacheQuotaStrategy;-><init>(Landroid/content/Context;Landroid/app/usage/UsageStatsManagerInternal;Lcom/android/server/pm/Installer;Landroid/util/ArrayMap;)V

    return-object v1
.end method

.method private recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V
    .locals 0
    .param p1, "strategy"    # Lcom/android/server/storage/CacheQuotaStrategy;

    .prologue
    .line 524
    invoke-virtual {p1}, Lcom/android/server/storage/CacheQuotaStrategy;->recalculateQuotas()V

    .line 525
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v12, 0x7530

    const/16 v10, 0x64

    .line 477
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-static {v5}, Lcom/android/server/usage/StorageStatsService;->-get1(Lcom/android/server/usage/StorageStatsService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/usage/StorageStatsService;->isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 478
    return-void

    .line 481
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 515
    return-void

    .line 483
    :pswitch_0
    iget-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 484
    .local v0, "bytesDelta":J
    long-to-double v6, v0

    iget-wide v8, p0, Lcom/android/server/usage/StorageStatsService$H;->mMinimumThresholdBytes:D

    cmpl-double v5, v6, v8

    if-lez v5, :cond_1

    .line 485
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 486
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 487
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->this$0:Lcom/android/server/usage/StorageStatsService;

    invoke-virtual {v5}, Lcom/android/server/usage/StorageStatsService;->notifySignificantDelta()V

    .line 489
    :cond_1
    invoke-virtual {p0, v10, v12, v13}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 517
    .end local v0    # "bytesDelta":J
    :goto_0
    return-void

    .line 493
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/usage/StorageStatsService$H;->getInitializedStrategy()Lcom/android/server/storage/CacheQuotaStrategy;

    move-result-object v4

    .line 494
    .local v4, "strategy":Lcom/android/server/storage/CacheQuotaStrategy;
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 496
    :try_start_0
    invoke-virtual {v4}, Lcom/android/server/storage/CacheQuotaStrategy;->setupQuotasFromFile()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    iget-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 505
    iget-object v5, p0, Lcom/android/server/usage/StorageStatsService$H;->mStats:Landroid/os/StatFs;

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/usage/StorageStatsService$H;->mPreviousBytes:J

    .line 506
    invoke-direct {p0, v4}, Lcom/android/server/usage/StorageStatsService$H;->recalculateQuotas(Lcom/android/server/storage/CacheQuotaStrategy;)V

    .line 508
    :cond_2
    invoke-virtual {p0, v10, v12, v13}, Lcom/android/server/usage/StorageStatsService$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 499
    :catch_0
    move-exception v3

    .line 500
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v5, "StorageStatsService"

    const-string/jumbo v6, "Cache quota XML file is malformed?"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 497
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    .line 498
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "StorageStatsService"

    const-string/jumbo v6, "An error occurred while reading the cache quota file."

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 481
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
