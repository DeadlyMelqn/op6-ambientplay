.class public Landroid/app/usage/NetworkStatsManager;
.super Ljava/lang/Object;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStatsManager$CallbackHandler;,
        Landroid/app/usage/NetworkStatsManager$UsageCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_LIMIT_REACHED:I = 0x0

.field public static final CALLBACK_RELEASED:I = 0x1

.field private static final DBG:Z = false

.field public static final FLAG_AUGMENT_WITH_SUBSCRIPTION_PLAN:I = 0x2

.field public static final FLAG_POLL_ON_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStatsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFlags:I

.field private final mService:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    .line 111
    const-string/jumbo v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/usage/NetworkStatsManager;->setPollOnOpen(Z)V

    .line 113
    return-void
.end method

.method private static createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 4
    .param p0, "networkType"    # I
    .param p1, "subscriberId"    # Ljava/lang/String;

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "template":Landroid/net/NetworkTemplate;
    packed-switch p0, :pswitch_data_0

    .line 447
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot create template for network type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 448
    const-string/jumbo v3, ", subscriberId \'"

    .line 447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 449
    invoke-static {p1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 449
    const-string/jumbo v3, "\'."

    .line 447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :pswitch_0
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 452
    .local v0, "template":Landroid/net/NetworkTemplate;
    :goto_0
    return-object v0

    .line 444
    .local v0, "template":Landroid/net/NetworkTemplate;
    :pswitch_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    .local v0, "template":Landroid/net/NetworkTemplate;
    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public queryDetails(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 326
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 333
    .local v2, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 334
    .local v0, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startUserUidEnumeration()V

    .line 335
    return-object v0

    .line 327
    .end local v0    # "result":Landroid/app/usage/NetworkStats;
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v8

    .line 329
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    .line 252
    invoke-virtual/range {v1 .. v9}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUidTag(ILjava/lang/String;JJII)Landroid/app/usage/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public queryDetailsForUidTag(ILjava/lang/String;JJII)Landroid/app/usage/NetworkStats;
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "uid"    # I
    .param p8, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    .line 288
    .local v4, "template":Landroid/net/NetworkTemplate;
    :try_start_0
    new-instance v2, Landroid/app/usage/NetworkStats;

    iget-object v3, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 289
    .local v2, "result":Landroid/app/usage/NetworkStats;
    move/from16 v0, p7

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/app/usage/NetworkStats;->startHistoryEnumeration(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    return-object v2

    .line 290
    .end local v2    # "result":Landroid/app/usage/NetworkStats;
    :catch_0
    move-exception v10

    .line 291
    .local v10, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "NetworkStatsManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error while querying stats for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v3, 0x0

    return-object v3
.end method

.method public querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 239
    .local v2, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 240
    .local v0, "result":Landroid/app/usage/NetworkStats;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    .line 242
    return-object v0

    .line 233
    .end local v0    # "result":Landroid/app/usage/NetworkStats;
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v8

    .line 235
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 11
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 163
    .local v2, "template":Landroid/net/NetworkTemplate;
    const/4 v8, 0x0

    .line 164
    .local v8, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 165
    .local v0, "stats":Landroid/app/usage/NetworkStats;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v8

    .line 167
    .local v8, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    .line 168
    return-object v8

    .line 158
    .end local v0    # "stats":Landroid/app/usage/NetworkStats;
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    .end local v8    # "bucket":Landroid/app/usage/NetworkStats$Bucket;
    :catch_0
    move-exception v9

    .line 160
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    .local v2, "template":Landroid/net/NetworkTemplate;
    new-instance v0, Landroid/app/usage/NetworkStats;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/app/usage/NetworkStats;-><init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJ)V

    .line 203
    .local v0, "stats":Landroid/app/usage/NetworkStats;
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->startSummaryEnumeration()V

    .line 205
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    .line 206
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v1

    return-object v1

    .line 196
    .end local v0    # "stats":Landroid/app/usage/NetworkStats;
    .end local v2    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v8

    .line 198
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "thresholdBytes"    # J
    .param p5, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .prologue
    .line 346
    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 345
    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V

    .line 347
    return-void
.end method

.method public registerUsageCallback(ILjava/lang/String;JLandroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/os/Handler;)V
    .locals 9
    .param p1, "networkType"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .param p3, "thresholdBytes"    # J
    .param p5, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 366
    const-string/jumbo v5, "UsageCallback cannot be null"

    invoke-static {p5, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    if-nez p6, :cond_1

    .line 370
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 383
    .local v2, "looper":Landroid/os/Looper;
    :goto_0
    invoke-static {p1, p2}, Landroid/app/usage/NetworkStatsManager;->createTemplate(ILjava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    .line 384
    .local v4, "template":Landroid/net/NetworkTemplate;
    new-instance v3, Landroid/net/DataUsageRequest;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, p3, p4}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    .line 387
    .local v3, "request":Landroid/net/DataUsageRequest;
    :try_start_0
    new-instance v0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;

    invoke-direct {v0, v2, p1, p2, p5}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;-><init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 389
    .local v0, "callbackHandler":Landroid/app/usage/NetworkStatsManager$CallbackHandler;
    iget-object v5, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    .line 390
    iget-object v6, p0, Landroid/app/usage/NetworkStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/os/Messenger;

    invoke-direct {v7, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 391
    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    .line 389
    invoke-interface {v5, v6, v3, v7, v8}, Landroid/net/INetworkStatsService;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;

    move-result-object v5

    invoke-static {p5, v5}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-set0(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)Landroid/net/DataUsageRequest;

    .line 394
    invoke-static {p5}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-get0(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v5

    if-nez v5, :cond_0

    .line 395
    const-string/jumbo v5, "NetworkStatsManager"

    const-string/jumbo v6, "Request from callback is null; should not happen"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    return-void

    .line 372
    .end local v0    # "callbackHandler":Landroid/app/usage/NetworkStatsManager$CallbackHandler;
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v3    # "request":Landroid/net/DataUsageRequest;
    .end local v4    # "template":Landroid/net/NetworkTemplate;
    :cond_1
    invoke-virtual {p6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 397
    .restart local v3    # "request":Landroid/net/DataUsageRequest;
    .restart local v4    # "template":Landroid/net/NetworkTemplate;
    :catch_0
    move-exception v1

    .line 399
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public setAugmentWithSubscriptionPlan(Z)V
    .locals 1
    .param p1, "augmentWithSubscriptionPlan"    # Z

    .prologue
    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_0
.end method

.method public setPollOnOpen(Z)V
    .locals 1
    .param p1, "pollOnOpen"    # Z

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/app/usage/NetworkStatsManager;->mFlags:I

    goto :goto_0
.end method

.method public unregisterUsageCallback(Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/usage/NetworkStatsManager$UsageCallback;

    .prologue
    .line 409
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-get0(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid UsageCallback"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_1
    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-get0(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v1

    iget v1, v1, Landroid/net/DataUsageRequest;->requestId:I

    if-eqz v1, :cond_0

    .line 414
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager;->mService:Landroid/net/INetworkStatsService;

    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->-get0(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/INetworkStatsService;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
