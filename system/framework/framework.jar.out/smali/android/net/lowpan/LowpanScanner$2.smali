.class Landroid/net/lowpan/LowpanScanner$2;
.super Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startEnergyScan()V
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
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    .line 257
    invoke-direct {p0}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;-><init>()V

    .line 1
    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner$2_8042(Landroid/net/lowpan/LowpanScanner$Callback;II)V
    .locals 1
    .param p0, "callback"    # Landroid/net/lowpan/LowpanScanner$Callback;
    .param p1, "channel"    # I
    .param p2, "rssi"    # I

    .prologue
    .line 268
    if-eqz p0, :cond_0

    .line 270
    new-instance v0, Landroid/net/lowpan/LowpanEnergyScanResult;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanEnergyScanResult;-><init>()V

    .line 271
    .local v0, "result":Landroid/net/lowpan/LowpanEnergyScanResult;
    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanEnergyScanResult;->setChannel(I)V

    .line 272
    invoke-virtual {v0, p2}, Landroid/net/lowpan/LowpanEnergyScanResult;->setMaxRssi(I)V

    .line 273
    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanScanner$Callback;->onEnergyScanResult(Landroid/net/lowpan/LowpanEnergyScanResult;)V

    .end local v0    # "result":Landroid/net/lowpan/LowpanEnergyScanResult;
    :cond_0
    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner$2_9089(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 0
    .param p0, "callback"    # Landroid/net/lowpan/LowpanScanner$Callback;

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method


# virtual methods
.method public onEnergyScanFinished()V
    .locals 4

    .prologue
    .line 285
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    .line 286
    .local v0, "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v1

    .line 288
    .local v1, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 289
    return-void

    .line 292
    :cond_0
    new-instance v2, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;-><init>(BLjava/lang/Object;)V

    .line 294
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onEnergyScanResult(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "rssi"    # I

    .prologue
    .line 259
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    .line 260
    .local v0, "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v1

    .line 262
    .local v1, "handler":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 263
    return-void

    .line 267
    :cond_0
    new-instance v2, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;

    invoke-direct {v2, p1, p2, v0}, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;-><init>(IILjava/lang/Object;)V

    .line 277
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 278
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
