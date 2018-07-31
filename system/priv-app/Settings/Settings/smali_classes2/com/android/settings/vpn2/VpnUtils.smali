.class public Lcom/android/settings/vpn2/VpnUtils;
.super Ljava/lang/Object;
.source "VpnUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VpnUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearLockdownVpn(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string/jumbo v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 48
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 49
    return-void
.end method

.method public static disconnectLegacyVpn(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 98
    .local v3, "userId":I
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getIConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 99
    .local v0, "connectivityService":Landroid/net/IConnectivityManager;
    invoke-interface {v0, v3}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v1

    .line 100
    .local v1, "currentLegacyVpn":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v1, :cond_0

    .line 101
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 102
    const-string/jumbo v4, "[Legacy VPN]"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4, v3}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/4 v4, 0x1

    return v4

    .line 105
    .end local v0    # "connectivityService":Landroid/net/IConnectivityManager;
    .end local v1    # "currentLegacyVpn":Lcom/android/internal/net/LegacyVpnInfo;
    .end local v3    # "userId":I
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "VpnUtils"

    const-string/jumbo v5, "Legacy VPN could not be disconnected"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method public static getConnectedPackage(Landroid/net/IConnectivityManager;I)Ljava/lang/String;
    .locals 2
    .param p0, "service"    # Landroid/net/IConnectivityManager;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-interface {p0, p1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    .line 79
    .local v0, "config":Lcom/android/internal/net/VpnConfig;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method private static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private static getIConnectivityManager()Landroid/net/IConnectivityManager;
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getLockdownVpn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    const-string/jumbo v3, "LOCKDOWN_VPN"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, "value":[B
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static isAlwaysOnVpnSet(Lcom/android/settings/vpn2/ConnectivityManagerWrapper;I)Z
    .locals 1
    .param p0, "cm"    # Lcom/android/settings/vpn2/ConnectivityManagerWrapper;
    .param p1, "userId"    # I

    .prologue
    .line 92
    invoke-interface {p0, p1}, Lcom/android/settings/vpn2/ConnectivityManagerWrapper;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnyLockdownActive(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 64
    .local v0, "userId":I
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 65
    return v1

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 69
    const-string/jumbo v4, "always_on_vpn_lockdown"

    .line 68
    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 68
    goto :goto_0

    :cond_2
    move v1, v2

    .line 67
    goto :goto_0
.end method

.method public static isVpnActive(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getIConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVpnLockdown(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockdownKey"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string/jumbo v1, "LOCKDOWN_VPN"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 53
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 52
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 55
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    .line 56
    return-void
.end method
