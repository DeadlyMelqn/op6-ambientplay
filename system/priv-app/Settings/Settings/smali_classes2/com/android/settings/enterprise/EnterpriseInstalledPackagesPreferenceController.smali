.class public Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "EnterpriseInstalledPackagesPreferenceController.java"


# static fields
.field private static final KEY_NUMBER_ENTERPRISE_INSTALLED_PACKAGES:Ljava/lang/String; = "number_enterprise_installed_packages"


# instance fields
.field private final mAsync:Z

.field private final mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;
    .param p3, "async"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    .line 36
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 38
    iput-boolean p3, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mAsync:Z

    .line 39
    return-void
.end method

.method static synthetic lambda$-com_android_settings_enterprise_EnterpriseInstalledPackagesPreferenceController_3281([Ljava/lang/Boolean;I)V
    .locals 2
    .param p0, "haveEnterpriseInstalledPackages"    # [Ljava/lang/Boolean;
    .param p1, "num"    # I

    .prologue
    const/4 v1, 0x0

    .line 74
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p0, v1

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "number_enterprise_installed_packages"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    iget-boolean v2, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mAsync:Z

    if-eqz v2, :cond_0

    .line 66
    return v5

    .line 72
    :cond_0
    new-array v1, v5, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    aput-object v2, v1, v4

    .line 73
    .local v1, "haveEnterpriseInstalledPackages":[Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 74
    new-instance v3, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo;

    invoke-direct {v3, v5, v1}, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo;-><init>(BLjava/lang/Object;)V

    .line 73
    invoke-interface {v2, v4, v3}, Lcom/android/settings/applications/ApplicationFeatureProvider;->calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 75
    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    .local v0, "available":Z
    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->notifyOnAvailabilityUpdate(Z)V

    .line 77
    return v0
.end method

.method synthetic lambda$-com_android_settings_enterprise_EnterpriseInstalledPackagesPreferenceController_1838(Landroid/support/v7/preference/Preference;I)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x0

    .line 46
    if-nez p2, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 55
    .local v0, "available":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->notifyOnAvailabilityUpdate(Z)V

    return-void

    .line 49
    .end local v0    # "available":Z
    :cond_0
    const/4 v0, 0x1

    .line 50
    .restart local v0    # "available":Z
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 51
    const v3, 0x7f130028

    .line 50
    invoke-virtual {v1, v3, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-object v0, p0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 44
    new-instance v1, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;

    invoke-direct {v1, v2, p0, p1}, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 43
    invoke-interface {v0, v2, v1}, Lcom/android/settings/applications/ApplicationFeatureProvider;->calculateNumberOfPolicyInstalledApps(ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 58
    return-void
.end method
