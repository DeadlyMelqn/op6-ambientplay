.class public Lcom/android/settings/wifi/ConnectivityManagerWrapper;
.super Ljava/lang/Object;
.source "ConnectivityManagerWrapper.java"


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectivityManagerWrapper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 28
    return-void
.end method


# virtual methods
.method public stopTethering(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/ConnectivityManagerWrapper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 35
    return-void
.end method
