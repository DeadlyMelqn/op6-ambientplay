.class public abstract Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;
.super Lcom/android/settings/core/DynamicAvailabilityPreferenceController;
.source "AdminGrantedPermissionsPreferenceControllerBase.java"


# instance fields
.field private final mAsync:Z

.field private final mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mHasApps:Z

.field private final mPermissionGroup:Ljava/lang/String;

.field private final mPermissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;
    .param p3, "async"    # Z
    .param p4, "permissions"    # [Ljava/lang/String;
    .param p5, "permissionGroup"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    .line 39
    iput-object p4, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mPermissions:[Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mPermissionGroup:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 43
    iput-boolean p3, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mAsync:Z

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    .line 45
    return-void
.end method

.method static synthetic lambda$-com_android_settings_enterprise_AdminGrantedPermissionsPreferenceControllerBase_3525([Ljava/lang/Boolean;I)V
    .locals 2
    .param p0, "haveAppsWithAdminGrantedPermissions"    # [Ljava/lang/Boolean;
    .param p1, "num"    # I

    .prologue
    const/4 v1, 0x0

    .line 81
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
.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    return v2

    .line 92
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    if-nez v0, :cond_1

    .line 93
    return v2

    .line 95
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/DynamicAvailabilityPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 67
    iget-boolean v1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mAsync:Z

    if-eqz v1, :cond_0

    .line 72
    return v2

    .line 79
    :cond_0
    new-array v0, v2, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    .line 80
    .local v0, "haveAppsWithAdminGrantedPermissions":[Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mPermissions:[Ljava/lang/String;

    .line 81
    new-instance v3, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo;

    invoke-direct {v3, v4, v0}, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo;-><init>(BLjava/lang/Object;)V

    .line 80
    invoke-interface {v1, v2, v4, v3}, Lcom/android/settings/applications/ApplicationFeatureProvider;->calculateNumberOfAppsWithAdminGrantedPermissions([Ljava/lang/String;ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 82
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    .line 83
    iget-boolean v1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->notifyOnAvailabilityUpdate(Z)V

    .line 84
    iget-boolean v1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    return v1
.end method

.method synthetic lambda$-com_android_settings_enterprise_AdminGrantedPermissionsPreferenceControllerBase_2030(Landroid/support/v7/preference/Preference;I)V
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "num"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    if-nez p2, :cond_0

    .line 53
    iput-boolean v3, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    .line 60
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 61
    iget-boolean v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->notifyOnAvailabilityUpdate(Z)V

    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 56
    const v2, 0x7f130028

    .line 55
    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    iput-boolean v4, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mHasApps:Z

    goto :goto_0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->mPermissions:[Ljava/lang/String;

    .line 51
    new-instance v2, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p1}, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 50
    const/4 v3, 0x1

    .line 49
    invoke-interface {v0, v1, v3, v2}, Lcom/android/settings/applications/ApplicationFeatureProvider;->calculateNumberOfAppsWithAdminGrantedPermissions([Ljava/lang/String;ZLcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V

    .line 63
    return-void
.end method
