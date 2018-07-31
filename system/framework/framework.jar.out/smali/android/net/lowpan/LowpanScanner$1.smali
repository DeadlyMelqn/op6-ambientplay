.class Landroid/net/lowpan/LowpanScanner$1;
.super Landroid/net/lowpan/ILowpanNetScanCallback$Stub;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startNetScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanScanner;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanScanner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanScanner;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 175
    invoke-direct {p0}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;-><init>()V

    .line 1
    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner$1_5692(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 0
    .param p0, "callback"    # Landroid/net/lowpan/LowpanScanner$Callback;
    .param p1, "beaconInfo"    # Landroid/net/lowpan/LowpanBeaconInfo;

    .prologue
    .line 189
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanScanner$Callback;->onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner$1_6441(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0
    .param p0, "callback"    # Landroid/net/lowpan/LowpanScanner$Callback;

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method


# virtual methods
.method public onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 5
    .param p1, "beaconInfo"    # Landroid/net/lowpan/LowpanBeaconInfo;

    .prologue
    .line 180
    iget-object v4, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    monitor-enter v4

    .line 181
    :try_start_0
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    .line 182
    .local v0, "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "handler":Landroid/os/Handler;
    monitor-exit v4

    .line 185
    if-nez v0, :cond_0

    .line 186
    return-void

    .line 180
    .end local v0    # "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    .end local v1    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 189
    .restart local v0    # "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    .restart local v1    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v2, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onNetScanFinished()V
    .locals 5

    .prologue
    .line 202
    iget-object v4, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    .line 204
    .local v0, "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "handler":Landroid/os/Handler;
    monitor-exit v4

    .line 207
    if-nez v0, :cond_0

    .line 208
    return-void

    .line 202
    .end local v0    # "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    .end local v1    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 211
    .restart local v0    # "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    .restart local v1    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance v2, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;-><init>(BLjava/lang/Object;)V

    .line 213
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 214
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
