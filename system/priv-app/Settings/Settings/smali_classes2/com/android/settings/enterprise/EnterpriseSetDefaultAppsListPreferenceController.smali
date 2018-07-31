.class public Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "EnterpriseSetDefaultAppsListPreferenceController.java"


# static fields
.field private static final synthetic -com-android-settings-applications-EnterpriseDefaultAppsSwitchesValues:[I


# instance fields
.field private final mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/settings/applications/EnterpriseDefaultApps;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private final mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-android-settings-applications-EnterpriseDefaultAppsSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->-com-android-settings-applications-EnterpriseDefaultAppsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->-com-android-settings-applications-EnterpriseDefaultAppsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->BROWSER:Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-virtual {v1}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->CALENDAR:Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-virtual {v1}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->CAMERA:Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-virtual {v1}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->CONTACTS:Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-virtual {v1}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->EMAIL:Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-virtual {v1}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->MAP:Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-virtual {v1}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/settings/applications/EnterpriseDefaultApps;->PHONE:Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-virtual {v1}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->-com-android-settings-applications-EnterpriseDefaultAppsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/pm/PackageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/settings/SettingsPreferenceFragment;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    .line 57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 56
    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    .line 62
    iput-object p3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    iput-object p2, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 64
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 65
    .local v0, "factory":Lcom/android/settings/overlay/FeatureFactory;
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->buildAppList()V

    .line 69
    return-void
.end method

.method private buildAppList()V
    .locals 15

    .prologue
    .line 75
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    .line 76
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    .line 77
    iget-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    invoke-interface {v9}, Lcom/android/settings/users/UserFeatureProvider;->getUserProfiles()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 78
    .local v4, "user":Landroid/os/UserHandle;
    const/4 v2, 0x0

    .line 79
    .local v2, "hasDefaultsForUser":Z
    const/4 v8, 0x0

    .line 81
    .local v8, "userMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/android/settings/applications/EnterpriseDefaultApps;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v11

    const/4 v9, 0x0

    array-length v12, v11

    move v10, v9

    .end local v8    # "userMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/android/settings/applications/EnterpriseDefaultApps;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v3, v11, v10

    .line 82
    .local v3, "typeOfDefault":Lcom/android/settings/applications/EnterpriseDefaultApps;
    iget-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 83
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    .line 84
    invoke-virtual {v3}, Lcom/android/settings/applications/EnterpriseDefaultApps;->getIntents()[Landroid/content/Intent;

    move-result-object v14

    .line 82
    invoke-interface {v9, v13, v14}, Lcom/android/settings/applications/ApplicationFeatureProvider;->findPersistentPreferredActivities(I[Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 85
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 81
    :goto_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    .line 88
    :cond_1
    if-nez v2, :cond_2

    .line 89
    const/4 v2, 0x1

    .line 90
    iget-object v13, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/UserAppInfo;

    iget-object v9, v9, Lcom/android/settings/applications/UserAppInfo;->userInfo:Landroid/content/pm/UserInfo;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lcom/android/settings/applications/EnterpriseDefaultApps;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 92
    .local v8, "userMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/android/settings/applications/EnterpriseDefaultApps;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    iget-object v9, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v8    # "userMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/android/settings/applications/EnterpriseDefaultApps;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "applicationInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "userAppInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/UserAppInfo;

    .line 96
    .local v6, "userAppInfo":Lcom/android/settings/applications/UserAppInfo;
    iget-object v9, v6, Lcom/android/settings/applications/UserAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 98
    .end local v6    # "userAppInfo":Lcom/android/settings/applications/UserAppInfo;
    :cond_3
    invoke-virtual {v8, v3, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 101
    .end local v0    # "applicationInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/UserAppInfo;>;"
    .end local v2    # "hasDefaultsForUser":Z
    .end local v3    # "typeOfDefault":Lcom/android/settings/applications/EnterpriseDefaultApps;
    .end local v4    # "user":Landroid/os/UserHandle;
    .end local v7    # "userAppInfo$iterator":Ljava/util/Iterator;
    :cond_4
    new-instance v9, Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v10, Lcom/android/settings/enterprise/-$Lambda$eGZaig_-l4Eu-YdJAErgi_LZKy0;

    invoke-direct {v10, p0}, Lcom/android/settings/enterprise/-$Lambda$eGZaig_-l4Eu-YdJAErgi_LZKy0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method private buildSummaryString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 159
    .local v0, "appNames":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 160
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 163
    aget-object v2, v0, v4

    return-object v2

    .line 164
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 165
    new-array v2, v6, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    .line 166
    aget-object v3, v0, v5

    aput-object v3, v2, v5

    .line 165
    const v3, 0x7f0f129e

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 168
    :cond_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    .line 169
    aget-object v3, v0, v5

    aput-object v3, v2, v5

    aget-object v3, v0, v6

    aput-object v3, v2, v6

    .line 168
    const v3, 0x7f0f129f

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V
    .locals 8
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "group"    # Landroid/support/v7/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/settings/applications/EnterpriseDefaultApps;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "apps":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/android/settings/applications/EnterpriseDefaultApps;Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;>;"
    const/4 v4, 0x0

    .line 140
    if-nez p2, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    invoke-static {}, Lcom/android/settings/applications/EnterpriseDefaultApps;->values()[Lcom/android/settings/applications/EnterpriseDefaultApps;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v2, v5, v3

    .line 144
    .local v2, "typeOfDefault":Lcom/android/settings/applications/EnterpriseDefaultApps;
    invoke-virtual {p3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 145
    .local v0, "appsForCategory":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 143
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_2
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-direct {v1, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 149
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {p0, p1, v2, v7}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->getTitle(Landroid/content/Context;Lcom/android/settings/applications/EnterpriseDefaultApps;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->buildSummaryString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v2}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 152
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 153
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 155
    .end local v0    # "appsForCategory":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "preference":Landroid/support/v7/preference/Preference;
    .end local v2    # "typeOfDefault":Lcom/android/settings/applications/EnterpriseDefaultApps;
    :cond_3
    return-void
.end method

.method private getTitle(Landroid/content/Context;Lcom/android/settings/applications/EnterpriseDefaultApps;I)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "typeOfDefault"    # Lcom/android/settings/applications/EnterpriseDefaultApps;
    .param p3, "appCount"    # I

    .prologue
    .line 174
    invoke-static {}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->-getcom-android-settings-applications-EnterpriseDefaultAppsSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/settings/applications/EnterpriseDefaultApps;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type of default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_0
    const v0, 0x7f0f105d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :pswitch_1
    const v0, 0x7f0f129b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :pswitch_2
    const v0, 0x7f0f129c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    const v1, 0x7f13002e

    .line 182
    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :pswitch_4
    const v0, 0x7f0f129d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 187
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    const v1, 0x7f13002d

    .line 187
    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :pswitch_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 191
    const v1, 0x7f13002c

    .line 190
    invoke-virtual {v0, v1, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateUi()V
    .locals 7

    .prologue
    .line 115
    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 116
    .local v2, "prefContext":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 117
    .local v3, "screen":Landroid/support/v7/preference/PreferenceScreen;
    if-nez v3, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v5}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isInCompMode()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 121
    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EnumMap;

    invoke-direct {p0, v2, v3, v5}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    .line 136
    :cond_1
    return-void

    .line 123
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 124
    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mUsers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 125
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "category":Landroid/support/v7/preference/PreferenceCategory;
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 127
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    const v5, 0x7f0f0d2f

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    .line 132
    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setOrder(I)V

    .line 133
    iget-object v5, p0, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->mApps:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/EnumMap;

    invoke-direct {p0, v2, v0, v5}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->createPreferences(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/util/EnumMap;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_3
    const v5, 0x7f0f0d2e

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_settings_enterprise_EnterpriseSetDefaultAppsListPreferenceController_4355()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/enterprise/EnterpriseSetDefaultAppsListPreferenceController;->updateUi()V

    return-void
.end method
