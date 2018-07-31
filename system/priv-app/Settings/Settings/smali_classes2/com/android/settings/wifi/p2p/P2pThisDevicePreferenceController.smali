.class public Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "P2pThisDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 54
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "p2p_this_device"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public updateDeviceName(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 6
    .param p1, "thisDevice"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    const/4 v5, 0x0

    .line 72
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_oneplus_devicename"

    .line 71
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "mDeviceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 77
    const/4 v3, 0x0

    const/16 v4, 0x1f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_oneplus_devicename"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifip2p"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 85
    .local v2, "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    .line 86
    iget-object v4, p0, Lcom/android/settings/wifi/p2p/P2pThisDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 85
    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 87
    .local v0, "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v2, v0, v1, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 90
    .end local v0    # "mChannel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .end local v2    # "mWifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_1
    return-void
.end method
