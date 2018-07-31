.class public Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "EnterpriseSetDefaultAppsPreferenceController.java"


# static fields
.field private static final KEY_DEFAULT_APPS:Ljava/lang/String; = "number_enterprise_set_default_apps"


# instance fields
.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private final mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    .line 38
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 39
    .local v0, "factory":Lcom/android/settings/overlay/FeatureFactory;
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 41
    return-void
.end method

.method private getNumberOfEnterpriseSetDefaultApps()I
    .locals 10

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 64
    .local v1, "num":I
    iget-object v4, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    invoke-interface {v4}, Lcom/android/settings/users/UserFeatureProvider;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 65
    .local v2, "user":Landroid/os/UserHandle;
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 66
    .local v0, "app":Lcom/android/settings/applications/EnterpriseDefaultApps;
    iget-object v7, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 67
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 68
    invoke-virtual {v0}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v9

    .line 66
    invoke-interface {v7, v8, v9}, Lcom/android/settings/applications/ApplicationFeatureProvider;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v1, v7

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "app":Lcom/android/settings/applications/EnterpriseDefaultApps;
    .end local v2    # "user":Landroid/os/UserHandle;
    :cond_1
    return v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "number_enterprise_set_default_apps"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->getNumberOfEnterpriseSetDefaultApps()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 53
    .local v0, "available":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->notifyOnAvailabilityUpdate(Z)V

    .line 54
    return v0

    .line 52
    .end local v0    # "available":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "available":Z
    goto :goto_0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->getNumberOfEnterpriseSetDefaultApps()I

    move-result v0

    .line 46
    .local v0, "num":I
    iget-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f130029

    .line 46
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
