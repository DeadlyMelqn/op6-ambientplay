.class Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffloadTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/OffloadController;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/OffloadController;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/OffloadController;
    .param p2, "-this1"    # Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .locals 9
    .param p1, "how"    # I

    .prologue
    const/4 v8, 0x0

    .line 261
    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI;

    invoke-direct {v4, p0}, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI;-><init>(Ljava/lang/Object;)V

    .line 262
    .local v4, "updateStats":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/OffloadController;->-get1(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 263
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 268
    :goto_0
    new-instance v3, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v3, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 269
    .local v3, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 270
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v8, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 271
    iput v8, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 272
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    const/4 v6, -0x5

    :goto_1
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 274
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/OffloadController;->-get0(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "kv$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 275
    .local v1, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    .line 276
    .local v5, "value":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 277
    iget-wide v6, v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 278
    iget-wide v6, v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 279
    invoke-virtual {v3, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_2

    .line 265
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;>;"
    .end local v2    # "kv$iterator":Ljava/util/Iterator;
    .end local v3    # "stats":Landroid/net/NetworkStats;
    .end local v5    # "value":Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;
    :cond_0
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/OffloadController;->-get1(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 272
    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "stats":Landroid/net/NetworkStats;
    :cond_1
    const/4 v6, -0x1

    goto :goto_1

    .line 282
    .restart local v2    # "kv$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v3
.end method

.method synthetic lambda$-com_android_server_connectivity_tethering_OffloadController$OffloadTetheringStatsProvider_11400()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap8(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_connectivity_tethering_OffloadController$OffloadTetheringStatsProvider_12382(JLjava/lang/String;)V
    .locals 3
    .param p1, "quotaBytes"    # J
    .param p3, "iface"    # Ljava/lang/String;

    .prologue
    .line 287
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get2(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0, p3}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap1(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get2(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get1(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method
