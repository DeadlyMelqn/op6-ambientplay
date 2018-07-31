.class Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;
.super Ljava/lang/Object;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeStatePair"
.end annotation


# instance fields
.field public ns:Landroid/net/NetworkState;

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->type:I

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;->ns:Landroid/net/NetworkState;

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;

    .prologue
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$TypeStatePair;-><init>()V

    return-void
.end method
