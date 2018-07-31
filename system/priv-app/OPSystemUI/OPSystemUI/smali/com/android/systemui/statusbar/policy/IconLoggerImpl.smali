.class public Lcom/android/systemui/statusbar/policy/IconLoggerImpl;
.super Ljava/lang/Object;
.source "IconLoggerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/IconLogger;


# static fields
.field protected static MIN_LOG_INTERVAL:J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIcons:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastLog:J

.field private final mLog:Ljava/lang/Runnable;

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->MIN_LOG_INTERVAL:J

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bgLooper"    # Landroid/os/Looper;
    .param p3, "logger"    # Lcom/android/internal/logging/MetricsLogger;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    .line 107
    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$ZBSSeqFNBAvA0ccFE9j_JqrBBT8;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$ZBSSeqFNBAvA0ccFE9j_JqrBBT8;-><init>(BLjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mContext:Landroid/content/Context;

    .line 50
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    .line 51
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 53
    const v2, 0x1070040

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "icons":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIconIndex:Ljava/util/List;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->doLog()V

    .line 56
    return-void
.end method

.method private doLog()V
    .locals 9

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    .local v2, "time":J
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    sub-long v4, v2, v6

    .line 83
    .local v4, "timeSinceLastLog":J
    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLastLog:J

    .line 86
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    monitor-enter v6

    .line 87
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v6

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x445

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 90
    const/4 v7, 0x4

    .line 89
    invoke-virtual {v6, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 92
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x447

    .line 89
    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 93
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->getBitField(Landroid/util/ArraySet;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x446

    .line 89
    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 94
    return-void

    .line 86
    .end local v0    # "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v6

    throw v1
.end method

.method private getBitField(Landroid/util/ArraySet;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "icons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 98
    .local v2, "iconsVisible":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "icon$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, "icon":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIconIndex:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 100
    .local v3, "index":I
    if-ltz v3, :cond_0

    .line 101
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    or-int/2addr v2, v4

    goto :goto_0

    .line 104
    .end local v0    # "icon":Ljava/lang/String;
    .end local v3    # "index":I
    :cond_1
    return v2
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_policy_IconLoggerImpl-mthref-0()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->doLog()V

    return-void
.end method

.method public onIconHidden(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 73
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->MIN_LOG_INTERVAL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onIconShown(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    .line 62
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mIcons:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->mLog:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/systemui/statusbar/policy/IconLoggerImpl;->MIN_LOG_INTERVAL:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    :cond_1
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
