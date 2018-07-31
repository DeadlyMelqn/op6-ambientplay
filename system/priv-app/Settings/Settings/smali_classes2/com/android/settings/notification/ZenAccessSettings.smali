.class public Lcom/android/settings/notification/ZenAccessSettings;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;,
        Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;,
        Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

.field private mPkgMan:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0, p1}, Lcom/android/settings/notification/ZenAccessSettings;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ZenAccessSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ZenAccessSettings;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "access"    # Z

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/ZenAccessSettings;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    .line 64
    const-string/jumbo v0, "ZenAccessSettings"

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;-><init>(Lcom/android/settings/notification/ZenAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    .line 63
    return-void
.end method

.method private static deleteRules(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/ZenAccessSettings$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method private getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 170
    .local v6, "requestingPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v7, 0x1

    :try_start_0
    new-array v0, v7, [Ljava/lang/String;

    .line 171
    const-string/jumbo v7, "android.permission.ACCESS_NOTIFICATION_POLICY"

    const/4 v8, 0x0

    aput-object v7, v0, v8

    .line 173
    .local v0, "PERM":[Ljava/lang/String;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 175
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 174
    const/4 v9, 0x0

    .line 173
    invoke-interface {v7, v0, v9, v8}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 176
    .local v4, "list":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 177
    .local v5, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v5, :cond_0

    .line 178
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 179
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v0    # "PERM":[Ljava/lang/String;
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "info$iterator":Ljava/util/Iterator;
    .end local v4    # "list":Landroid/content/pm/ParceledListSlice;
    .end local v5    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "ZenAccessSettings"

    const-string/jumbo v8, "Cannot reach packagemanager"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v6
.end method

.method private hasAccess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "enable"    # Z
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    if-eqz p0, :cond_0

    const/16 v0, 0x300

    .line 207
    .local v0, "logCategory":I
    :goto_0
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v1, p2, v0, p1, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 209
    return-void

    .line 206
    .end local v0    # "logCategory":I
    :cond_0
    const/16 v0, 0x301

    .restart local v0    # "logCategory":I
    goto :goto_0
.end method

.method private reloadList()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    .line 118
    .local v9, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPackagesRequestingNotificationPolicyAccess()Landroid/util/ArraySet;

    move-result-object v8

    .line 121
    .local v8, "requesting":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 122
    iget-object v10, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 123
    .local v4, "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v4, :cond_1

    .line 124
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 125
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 126
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "installed":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_1
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 132
    .local v3, "autoApproved":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 134
    new-instance v10, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v11, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-direct {v10, v11}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "app$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 136
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 137
    .local v6, "pkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 138
    .local v5, "label":Ljava/lang/CharSequence;
    new-instance v7, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 139
    .local v7, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v7, v12}, Landroid/support/v14/preference/SwitchPreference;->setPersistent(Z)V

    .line 140
    iget-object v10, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {v7, v5}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0, v6}, Lcom/android/settings/notification/ZenAccessSettings;->hasAccess(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 143
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 144
    invoke-virtual {v7, v12}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 145
    const v10, 0x7f0f10b0

    invoke-virtual {p0, v10}, Lcom/android/settings/notification/ZenAccessSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    :cond_2
    new-instance v10, Lcom/android/settings/notification/ZenAccessSettings$1;

    invoke-direct {v10, p0, v6, v5}, Lcom/android/settings/notification/ZenAccessSettings$1;-><init>(Lcom/android/settings/notification/ZenAccessSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    invoke-virtual {v9, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 165
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "label":Ljava/lang/CharSequence;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_3
    return-void
.end method

.method private static setAccess(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "access"    # Z

    .prologue
    .line 193
    invoke-static {p2, p1, p0}, Lcom/android/settings/notification/ZenAccessSettings;->logSpecialPermissionChange(ZLjava/lang/String;Landroid/content/Context;)V

    .line 194
    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/notification/ZenAccessSettings$2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0xb4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    .line 82
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 84
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onPause()V

    .line 111
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    .line 95
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/settings/notification/ZenAccessSettings;->reloadList()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    .line 97
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "enabled_notification_listeners"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/android/settings/notification/ZenAccessSettings;->mObserver:Lcom/android/settings/notification/ZenAccessSettings$SettingObserver;

    .line 100
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const v0, 0x7f0f12a9

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings;->setEmptyText(I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f0f0fa4

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings;->setEmptyText(I)V

    .line 90
    return-void
.end method
