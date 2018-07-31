.class public Lcom/android/settingslib/wifi/TestAccessPointBuilder;
.super Ljava/lang/Object;
.source "TestAccessPointBuilder.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mFqdn:Ljava/lang/String;

.field private mIsCarrierAp:Z

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mProviderFriendlyName:Ljava/lang/String;

.field private mRssi:I

.field private mScanResultCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScoredNetworkCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurity:I

.field private mSpeed:I

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    .line 47
    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    .line 48
    sget v0, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    .line 50
    const-string/jumbo v0, "TestSsid"

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 52
    iput-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    .line 54
    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    .line 57
    iput-boolean v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    .line 58
    iput-object v1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public build()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 5
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 71
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v1, "bundle":Landroid/os/Bundle;
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 74
    .local v2, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    iput v3, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 75
    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 77
    const-string/jumbo v3, "key_ssid"

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string/jumbo v3, "key_config"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string/jumbo v3, "key_networkinfo"

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    const-string/jumbo v3, "key_wifiinfo"

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 82
    const-string/jumbo v3, "key_fqdn"

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 85
    const-string/jumbo v3, "key_provider_friendly_name"

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResultCache:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 88
    const-string/jumbo v3, "key_scanresultcache"

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResultCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 91
    const-string/jumbo v3, "key_scorednetworkcache"

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 93
    :cond_3
    const-string/jumbo v3, "key_security"

    iget v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 94
    const-string/jumbo v3, "key_speed"

    iget v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    const-string/jumbo v3, "key_is_carrier_ap"

    iget-boolean v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 97
    const-string/jumbo v3, "key_carrier_name"

    iget-object v4, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_4
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 101
    .local v0, "ap":Lcom/android/settingslib/wifi/AccessPoint;
    iget v3, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    invoke-virtual {v0, v3}, Lcom/android/settingslib/wifi/AccessPoint;->setRssi(I)V

    .line 102
    return-object v0
.end method

.method public setActive(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 4
    .param p1, "active"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 107
    if-eqz p1, :cond_0

    .line 108
    new-instance v0, Landroid/net/NetworkInfo;

    .line 111
    const-string/jumbo v1, "TestNetwork"

    .line 112
    const-string/jumbo v2, "TestNetwork"

    .line 108
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 116
    :goto_0
    return-object p0

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mBssid:Ljava/lang/String;

    .line 229
    return-object p0
.end method

.method public setCarrierName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "carrierName"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mCarrierName:Ljava/lang/String;

    .line 244
    return-object p0
.end method

.method public setFqdn(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mFqdn:Ljava/lang/String;

    .line 200
    return-object p0
.end method

.method public setIsCarrierAp(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "isCarrierAp"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mIsCarrierAp:Z

    .line 239
    return-object p0
.end method

.method public setLevel(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 4
    .param p1, "level"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const/16 v2, -0x64

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    .line 137
    :goto_0
    return-object p0

    .line 130
    :cond_0
    const/4 v2, 0x5

    if-lt p1, v2, :cond_1

    .line 131
    const/16 v2, -0x37

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0

    .line 133
    :cond_1
    const/high16 v0, 0x42340000    # 45.0f

    .line 134
    .local v0, "inputRange":F
    const/high16 v1, 0x40800000    # 4.0f

    .line 135
    .local v1, "outputRange":F
    int-to-float v2, p1

    .line 133
    const/high16 v3, 0x42340000    # 45.0f

    .line 135
    mul-float/2addr v2, v3

    .line 134
    const/high16 v3, 0x40800000    # 4.0f

    .line 135
    div-float/2addr v2, v3

    const/high16 v3, -0x3d380000    # -100.0f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0
.end method

.method public setNetworkId(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "networkId"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 223
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    .line 224
    return-object p0
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 143
    return-object p0
.end method

.method public setProviderFriendlyName(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "friendlyName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mProviderFriendlyName:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setReachable(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 2
    .param p1, "reachable"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 164
    if-eqz p1, :cond_1

    .line 166
    iget v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    sget v1, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    if-ne v0, v1, :cond_0

    .line 167
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    .line 172
    :cond_0
    :goto_0
    return-object p0

    .line 170
    :cond_1
    sget v0, Lcom/android/settingslib/wifi/AccessPoint;->UNREACHABLE_RSSI:I

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    goto :goto_0
.end method

.method public setRssi(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "rssi"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 148
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mRssi:I

    .line 149
    return-object p0
.end method

.method public setSaved(Z)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 1
    .param p1, "saved"    # Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    .line 182
    :goto_0
    return-object p0

    .line 180
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mNetworkId:I

    goto :goto_0
.end method

.method public setScanResultCache(Ljava/util/ArrayList;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Lcom/android/settingslib/wifi/TestAccessPointBuilder;"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "scanResultCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult;>;"
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScanResultCache:Ljava/util/ArrayList;

    .line 234
    return-object p0
.end method

.method public setScoredNetworkCache(Ljava/util/ArrayList;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;)",
            "Lcom/android/settingslib/wifi/TestAccessPointBuilder;"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "scoredNetworkCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/wifi/TimestampedScoredNetwork;>;"
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mScoredNetworkCache:Ljava/util/ArrayList;

    .line 250
    return-object p0
.end method

.method public setSecurity(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "security"    # I
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 187
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSecurity:I

    .line 188
    return-object p0
.end method

.method public setSpeed(I)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "speed"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mSpeed:I

    .line 154
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "newSsid"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->ssid:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setWifiInfo(Landroid/net/wifi/WifiInfo;)Lcom/android/settingslib/wifi/TestAccessPointBuilder;
    .locals 0
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/settingslib/wifi/TestAccessPointBuilder;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 212
    return-object p0
.end method
