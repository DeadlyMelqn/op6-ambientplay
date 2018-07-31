.class public Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;,
        Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"

.field static final KEY_IPV6_CATEGORY:Ljava/lang/String; = "ipv6_category"

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"

.field static final KEY_LINK_SPEED:Ljava/lang/String; = "link_speed"

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"

.field private static final TAG:Ljava/lang/String; = "WifiDetailsPrefCtrl"


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityManagerWrapper:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

.field private mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetButton:Landroid/widget/Button;

.field private final mFragment:Landroid/app/Fragment;

.field private mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mIpv6AddressPref:Landroid/support/v7/preference/Preference;

.field private mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private final mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRssi:I

.field private mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mSignInButton:Landroid/widget/Button;

.field private mSignalStr:[Ljava/lang/String;

.field private mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

.field private final mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -com_android_settings_wifi_details_WifiDetailPreferenceController-mthref-0(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -get0(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/Network;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/NetworkCapabilities;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .param p1, "-value"    # Landroid/net/LinkProperties;

    .prologue
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;
    .param p1, "-value"    # Landroid/net/NetworkCapabilities;

    .prologue
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitActivity()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshNetworkState()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateInfo()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateIpLayerInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 87
    const-string/jumbo v0, "WifiDetailsPrefCtrl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->DEBUG:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settings/vpn2/ConnectivityManagerWrapper;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "connectivityManagerWrapper"    # Lcom/android/settings/vpn2/ConnectivityManagerWrapper;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "fragment"    # Landroid/app/Fragment;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;
    .param p7, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p8, "metricsFeatureProvider"    # Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .prologue
    .line 214
    invoke-direct {p0, p3}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$1;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 162
    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 165
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$2;-><init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 216
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 217
    invoke-interface {p2}, Lcom/android/settings/vpn2/ConnectivityManagerWrapper;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 218
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManagerWrapper:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    .line 219
    iput-object p4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 220
    iput-object p5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    .line 221
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStr:[Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 223
    iput-object p7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 224
    iput-object p8, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p6, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 231
    return-void
.end method

.method private canForgetNetwork()Z
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-nez v0, :cond_1

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 470
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 471
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSignIntoNetwork()Z
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 479
    const/16 v1, 0x11

    .line 478
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private exitActivity()V
    .locals 2

    .prologue
    .line 359
    sget-boolean v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 360
    const-string/jumbo v0, "WifiDetailsPrefCtrl"

    const-string/jumbo v1, "Exiting the WifiNetworkDetailsPage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 363
    return-void
.end method

.method private forgetNetwork()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 495
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 496
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 495
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    .line 496
    const/16 v3, 0x89

    .line 495
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 498
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 3
    .param p0, "prefixLength"    # I

    .prologue
    .line 458
    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 457
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 459
    .local v0, "all":Ljava/net/InetAddress;
    invoke-static {v0, p0}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 460
    .end local v0    # "all":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    return-object v2

    .line 458
    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method private refreshNetworkState()V
    .locals 4

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->update(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z

    .line 367
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    .line 367
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 369
    return-void
.end method

.method private refreshRssiViews()V
    .locals 7

    .prologue
    .line 373
    iget v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssi:I

    const/4 v5, 0x5

    .line 372
    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 375
    .local v0, "iconSignalLevel":I
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x0

    .line 374
    invoke-static {v0, v5, v4}, Landroid/net/NetworkBadging;->getWifiIcon(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 377
    .local v2, "wifiIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 378
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v4, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 380
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 381
    .local v3, "wifiIconDark":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 382
    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f0c035e

    .line 381
    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 383
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/wifi/WifiDetailPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 385
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 386
    .local v1, "summarySignalLevel":I
    iget-object v4, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v5, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStr:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method private setupEntityHeader(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 275
    const-string/jumbo v2, "connection_header"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 278
    .local v0, "headerPref":Lcom/android/settings/applications/LayoutPreference;
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 279
    const v4, 0x7f0a0321

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 277
    invoke-static {v2, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    .line 276
    iput-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 281
    const v2, 0x7f0a0323

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 283
    .local v1, "iconView":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f020256

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 282
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 284
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 286
    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 287
    return-void
.end method

.method private signIntoNetwork()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 505
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 504
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    .line 505
    const/16 v3, 0x3f0

    .line 504
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 506
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManagerWrapper:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/android/settings/vpn2/ConnectivityManagerWrapper;->startCaptivePortalApp(Landroid/net/Network;)V

    .line 507
    return-void
.end method

.method private updateInfo()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 316
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 317
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 318
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v3, :cond_1

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->exitActivity()V

    .line 320
    return-void

    .line 318
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    .line 324
    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mForgetButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canForgetNetwork()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshNetworkState()V

    .line 329
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mRssi:I

    .line 330
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->refreshRssiViews()V

    .line 333
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 336
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    .line 337
    .local v2, "linkSpeedMbps":I
    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    if-ltz v2, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 338
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v6, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    .line 339
    iget-object v7, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v4

    const v4, 0x7f0f0805

    .line 338
    invoke-virtual {v6, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    .line 343
    .local v1, "frequency":I
    const/4 v0, 0x0

    .line 344
    .local v0, "band":Ljava/lang/String;
    const/16 v3, 0x960

    if-lt v1, v3, :cond_4

    .line 345
    const/16 v3, 0x9c4

    if-ge v1, v3, :cond_4

    .line 346
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0803

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .end local v0    # "band":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateIpLayerInfo()V

    .line 356
    return-void

    .line 324
    .end local v1    # "frequency":I
    .end local v2    # "linkSpeedMbps":I
    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    .restart local v2    # "linkSpeedMbps":I
    :cond_3
    move v3, v4

    .line 337
    goto :goto_1

    .line 347
    .restart local v0    # "band":Ljava/lang/String;
    .restart local v1    # "frequency":I
    :cond_4
    const/16 v3, 0x1324

    if-lt v1, v3, :cond_5

    .line 348
    const/16 v3, 0x170c

    if-ge v1, v3, :cond_5

    .line 349
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0804

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "band":Ljava/lang/String;
    goto :goto_2

    .line 351
    .local v0, "band":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "WifiDetailsPrefCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected frequency "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateIpLayerInfo()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 399
    iget-object v12, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignInButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->canSignIntoNetwork()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    :goto_0
    invoke-virtual {v12, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 400
    iget-object v12, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mForgetButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_2

    .line 401
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignInButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    move v9, v11

    .line 400
    :goto_1
    invoke-virtual {v12, v9}, Lcom/android/settings/applications/LayoutPreference;->setVisible(Z)V

    .line 403
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v9, :cond_4

    .line 404
    :cond_0
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 405
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 406
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 407
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-virtual {v9, v10}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 408
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 409
    return-void

    .line 399
    :cond_1
    const/4 v9, 0x4

    goto :goto_0

    :cond_2
    move v9, v11

    .line 400
    goto :goto_1

    :cond_3
    move v9, v10

    .line 401
    goto :goto_1

    .line 413
    :cond_4
    const/4 v4, 0x0

    .line 414
    .local v4, "ipv4Address":Ljava/lang/String;
    const/4 v8, 0x0

    .line 415
    .local v8, "subnet":Ljava/lang/String;
    new-instance v5, Ljava/util/StringJoiner;

    const-string/jumbo v9, "\n"

    invoke-direct {v5, v9}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 417
    .local v5, "ipv6Addresses":Ljava/util/StringJoiner;
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "ipv4Address":Ljava/lang/String;
    .end local v8    # "subnet":Ljava/lang/String;
    .local v1, "addr$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 418
    .local v0, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet4Address;

    if-eqz v9, :cond_6

    .line 419
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, "ipv4Address":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "subnet":Ljava/lang/String;
    goto :goto_2

    .line 421
    .end local v4    # "ipv4Address":Ljava/lang/String;
    .end local v8    # "subnet":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    instance-of v9, v9, Ljava/net/Inet6Address;

    if-eqz v9, :cond_5

    .line 422
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    .line 427
    .end local v0    # "addr":Landroid/net/LinkAddress;
    :cond_7
    const/4 v3, 0x0

    .line 428
    .local v3, "gateway":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "routeInfo$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 429
    .local v6, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 430
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 436
    .end local v3    # "gateway":Ljava/lang/String;
    .end local v6    # "routeInfo":Landroid/net/RouteInfo;
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    sget-object v12, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;->$INST$0:Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU;

    invoke-interface {v9, v12}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v9

    .line 438
    const-string/jumbo v12, ","

    invoke-static {v12}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v12

    .line 436
    invoke-interface {v9, v12}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 441
    .local v2, "dnsServers":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v9, v4}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 442
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v9, v8}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 443
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v9, v3}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 444
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    invoke-direct {p0, v9, v2}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V

    .line 446
    invoke-virtual {v5}, Ljava/util/StringJoiner;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 447
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6AddressPref:Landroid/support/v7/preference/Preference;

    .line 448
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 447
    invoke-virtual {v9, v10}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v11}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 453
    :goto_3
    return-void

    .line 451
    :cond_a
    iget-object v9, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    goto :goto_3
.end method

.method private updatePreference(Lcom/android/settings/wifi/WifiDetailPreference;Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Lcom/android/settings/wifi/WifiDetailPreference;
    .param p2, "detailText"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 392
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/WifiDetailPreference;->setVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 248
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->setupEntityHeader(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 250
    const-string/jumbo v0, "buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

    .line 251
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0415

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignInButton:Landroid/widget/Button;

    .line 252
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignInButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU$1;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU$1;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const-string/jumbo v0, "signal_strength"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    .line 254
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSignalStrengthPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 256
    const-string/jumbo v0, "link_speed"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkSpeedPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 257
    const-string/jumbo v0, "frequency"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFrequencyPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 258
    const-string/jumbo v0, "security"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 260
    const-string/jumbo v0, "mac_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 261
    const-string/jumbo v0, "ip_address"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 262
    const-string/jumbo v0, "gateway"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mGatewayPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 263
    const-string/jumbo v0, "subnet_mask"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSubnetPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 264
    const-string/jumbo v0, "dns"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiDetailPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mDnsPref:Lcom/android/settings/wifi/WifiDetailPreference;

    .line 266
    const-string/jumbo v0, "ipv6_category"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6Category:Landroid/support/v7/preference/PreferenceCategory;

    .line 267
    const-string/jumbo v0, "ipv6_addresses"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mIpv6AddressPref:Landroid/support/v7/preference/Preference;

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Lcom/android/settings/wifi/WifiDetailPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiDetailPreference;->setDetailText(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mButtonsPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0414

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mForgetButton:Landroid/widget/Button;

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mForgetButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/settings/wifi/details/-$Lambda$3zojHSum8E5cTrmCLDNrUHaBNAU$1;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_settings_wifi_details_WifiDetailPreferenceController_10127(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->signIntoNetwork()V

    return-void
.end method

.method synthetic lambda$-com_android_settings_wifi_details_WifiDetailPreferenceController_11358(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->forgetNetwork()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 305
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 306
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 307
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 308
    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 309
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 311
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    .line 294
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 295
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 296
    invoke-direct {p0}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->updateInfo()V

    .line 297
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mConnectivityManagerWrapper:Lcom/android/settings/vpn2/ConnectivityManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 299
    iget-object v3, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->mHandler:Landroid/os/Handler;

    .line 298
    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings/vpn2/ConnectivityManagerWrapper;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 300
    return-void
.end method
