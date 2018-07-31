.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;
.super Ljava/lang/Object;
.source "WifiManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalOnlyHotspotSubscription"
.end annotation


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 2643
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->this$0:Landroid/net/wifi/WifiManager;

    .line 2645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2641
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2646
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 2647
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 2652
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->this$0:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->unregisterLocalOnlyHotspotObserver()V

    .line 2653
    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2657
    :goto_0
    return-void

    .line 2654
    :catch_0
    move-exception v0

    .line 2655
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiManager"

    const-string/jumbo v2, "Failed to unregister LocalOnlyHotspotObserver."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2662
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 2663
    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 2665
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2667
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2669
    return-void

    .line 2666
    :catchall_0
    move-exception v0

    .line 2667
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2666
    throw v0
.end method
