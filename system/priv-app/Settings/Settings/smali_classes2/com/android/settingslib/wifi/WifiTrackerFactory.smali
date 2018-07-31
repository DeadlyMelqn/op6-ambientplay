.class public Lcom/android/settingslib/wifi/WifiTrackerFactory;
.super Ljava/lang/Object;
.source "WifiTrackerFactory.java"


# static fields
.field private static sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)Lcom/android/settingslib/wifi/WifiTracker;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wifiListener"    # Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
    .param p2, "workerLooper"    # Landroid/os/Looper;
    .param p3, "includeSaved"    # Z
    .param p4, "includeScans"    # Z
    .param p5, "includePasspoints"    # Z

    .prologue
    .line 36
    sget-object v0, Lcom/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)V

    return-object v0
.end method

.method public static setTestingWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0
    .param p0, "tracker"    # Lcom/android/settingslib/wifi/WifiTracker;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 30
    sput-object p0, Lcom/android/settingslib/wifi/WifiTrackerFactory;->sTestingWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 31
    return-void
.end method
