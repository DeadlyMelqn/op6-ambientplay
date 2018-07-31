.class public Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;
.super Ljava/lang/Object;
.source "PowerUsageFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# static fields
.field private static final PACKAGES_SYSTEM:[Ljava/lang/String;

.field private static final PACKAGE_CALENDAR_PROVIDER:Ljava/lang/String; = "com.android.providers.calendar"

.field private static final PACKAGE_MEDIA_PROVIDER:Ljava/lang/String; = "com.android.providers.media"

.field private static final PACKAGE_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.providers.media"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "com.android.providers.calendar"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 31
    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 38
    return-void
.end method


# virtual methods
.method public getAdditionalBatteryInfoIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdditionalBatteryInfoEnabled()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isAdvancedUiEnabled()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public isLocationSettingEnabled([Ljava/lang/String;)Z
    .locals 1
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public isPowerAccountingToggleEnabled()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .locals 1
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
    .locals 8
    .param p1, "sipper"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 47
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v2, :cond_0

    const/4 v1, -0x1

    .line 48
    .local v1, "uid":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 50
    if-ltz v1, :cond_1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 51
    return v7

    .line 47
    .end local v1    # "uid":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    .restart local v1    # "uid":I
    goto :goto_0

    .line 52
    :cond_1
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 53
    iget-object v4, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v0, v4, v2

    .line 54
    .local v0, "packageName":Ljava/lang/String;
    sget-object v6, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 55
    return v7

    .line 53
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_3
    return v3
.end method
