.class public final Lcom/android/settings/overlay/FeatureFactoryImpl;
.super Lcom/android/settings/overlay/FeatureFactory;
.source "FeatureFactoryImpl.java"


# instance fields
.field private mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field private mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

.field private mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/overlay/FeatureFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    if-nez v0, :cond_0

    .line 78
    new-instance v1, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    .line 79
    new-instance v2, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    .line 80
    new-instance v3, Lcom/android/settings/applications/IPackageManagerWrapperImpl;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/settings/applications/IPackageManagerWrapperImpl;-><init>(Landroid/content/pm/IPackageManager;)V

    .line 81
    new-instance v4, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;

    .line 82
    const-string/jumbo v0, "device_policy"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v4, v0}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    .line 78
    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;-><init>(Landroid/content/Context;Lcom/android/settings/applications/PackageManagerWrapper;Lcom/android/settings/applications/IPackageManagerWrapper;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;)V

    iput-object v1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    return-object v0
.end method

.method public getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    return-object v0
.end method

.method public getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    return-object v0
.end method

.method public getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    .line 122
    new-instance v2, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;

    .line 123
    const-string/jumbo v1, "device_policy"

    .line 122
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v2, v1}, Lcom/android/settings/enterprise/DevicePolicyManagerWrapperImpl;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    .line 124
    new-instance v3, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    .line 125
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 126
    new-instance v5, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;

    .line 127
    const-string/jumbo v1, "connectivity"

    .line 126
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-direct {v5, v1}, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;-><init>(Landroid/net/ConnectivityManager;)V

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v1, p1

    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;-><init>(Landroid/content/Context;Lcom/android/settings/enterprise/DevicePolicyManagerWrapper;Lcom/android/settings/applications/PackageManagerWrapper;Landroid/os/UserManager;Lcom/android/settings/vpn2/ConnectivityManagerWrapper;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-object v0
.end method

.method public getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v0}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-object v0
.end method

.method public getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/security/SecurityFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    return-object v0
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/android/settings/users/UserFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/settings/users/UserFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    return-object v0
.end method
