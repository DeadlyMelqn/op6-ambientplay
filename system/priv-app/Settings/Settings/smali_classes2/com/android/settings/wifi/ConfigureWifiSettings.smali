.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConfigureWifiSettings$1;
    }
.end annotation


# static fields
.field public static final KEY_IP_ADDRESS:Ljava/lang/String; = "current_ip_address"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "ConfigureWifiSettings"


# instance fields
.field private mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

.field private mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>()V

    .line 116
    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "ConfigureWifiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0x152

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v1, Lcom/android/settings/network/NetworkScoreManagerWrapper;

    const-class v3, Landroid/net/NetworkScoreManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkScoreManager;

    invoke-direct {v1, v3}, Lcom/android/settings/network/NetworkScoreManagerWrapper;-><init>(Landroid/net/NetworkScoreManager;)V

    .line 84
    .local v1, "networkScoreManagerWrapper":Lcom/android/settings/network/NetworkScoreManagerWrapper;
    new-instance v3, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v4

    .line 84
    invoke-direct {v3, p1, v4}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 86
    new-instance v3, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v4

    .line 86
    invoke-direct {v3, p1, p0, v1, v4}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/network/NetworkScoreManagerWrapper;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 88
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 89
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/core/PreferenceController;>;"
    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v3, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v3, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v3, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;

    invoke-direct {v3, p1, v1}, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/network/NetworkScoreManagerWrapper;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v3, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v3, Lcom/android/settings/wifi/OPWapiCertManagePreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/OPWapiCertManagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v3, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v3, Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2}, Lcom/android/settings/wifi/WifiInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Lcom/android/settings/wifi/CellularFallbackPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v3, p1, v4, v2}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v3, Lcom/android/settings/network/WifiCallingPreferenceController;

    invoke-direct {v3, p1}, Lcom/android/settings/network/WifiCallingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v3, Lcom/android/settings/wifi/WpsPreferenceController;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    .line 103
    invoke-direct {v3, p1, v4, v2, v5}, Lcom/android/settings/wifi/WpsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Landroid/app/FragmentManager;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f0800c0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->onActivityResult(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 110
    if-eqz v0, :cond_1

    .line 112
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x1

    .line 66
    .local v0, "tileLimit":I
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const/4 v0, 0x2

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mProgressiveDisclosureMixin:Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;

    invoke-virtual {v1, v0}, Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;->setTileLimit(I)V

    .line 73
    return-void
.end method
