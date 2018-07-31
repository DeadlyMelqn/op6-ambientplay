.class public Lcom/android/settings/enterprise/EnterprisePrivacySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "EnterprisePrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final TAG:Ljava/lang/String; = "EnterprisePrivacySettings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;

    invoke-direct {v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;-><init>()V

    .line 109
    sput-object v0, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;
    .param p2, "async"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/core/lifecycle/Lifecycle;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "controllers":Ljava/util/List;
    new-instance v2, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/NetworkLogsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Lcom/android/settings/enterprise/BugReportsPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/BugReportsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "exposureChangesCategoryControllers":Ljava/util/List;
    new-instance v2, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/enterprise/AdminGrantedLocationPermissionsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)V

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)V

    .line 79
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v2, Lcom/android/settings/enterprise/AdminGrantedCameraPermissionPreferenceController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/enterprise/AdminGrantedCameraPermissionPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v2, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v2, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/AlwaysOnVpnCurrentUserPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/AlwaysOnVpnManagedProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Lcom/android/settings/enterprise/ImePreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/ImePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/GlobalHttpProxyPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v2, Lcom/android/settings/enterprise/CaCertsPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/CaCertsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    new-instance v2, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/settings/enterprise/ExposureChangesCategoryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v2, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v2, Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/enterprise/FailedPasswordWipeManagedProfilePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-object v0
.end method

.method public static isPageEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->hasDeviceOwner()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "EnterprisePrivacySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0x274

    return v0
.end method

.method protected getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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
    .line 65
    invoke-virtual {p0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->getLifecycle()Lcom/android/settings/core/lifecycle/Lifecycle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .prologue
    .line 60
    const v0, 0x7f080032

    return v0
.end method
