.class public Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WifiNetworkDetailsFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiNetworkDetailsFrg"


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mWifiDetailActionBarObserver:Lcom/android/settings/wifi/details/WifiDetailActionBarObserver;

.field private mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "WifiNetworkDetailsFrg"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x351

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 10
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
    .line 81
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/ConnectivityManager;

    .line 82
    .local v9, "cm":Landroid/net/ConnectivityManager;
    new-instance v0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 83
    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 84
    new-instance v2, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;

    invoke-direct {v2, v9}, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;-><init>(Landroid/net/ConnectivityManager;)V

    .line 87
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v6

    .line 89
    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 90
    iget-object v8, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-object v3, p1

    move-object v4, p0

    .line 82
    invoke-direct/range {v0 .. v8}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settings/vpn2/ConnectivityManagerWrapper;Landroid/content/Context;Landroid/app/Fragment;Landroid/os/Handler;Lcom/android/settings/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mWifiDetailPreferenceController:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f0800c3

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 62
    return-void
.end method
