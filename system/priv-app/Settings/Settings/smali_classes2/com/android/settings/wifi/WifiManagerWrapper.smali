.class public Lcom/android/settings/wifi/WifiManagerWrapper;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# instance fields
.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/settings/wifi/WifiManagerWrapper;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 15
    return-void
.end method


# virtual methods
.method public getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings/wifi/WifiManagerWrapper;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
