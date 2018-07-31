.class public Lcom/android/settings/applications/ExternalSourcesDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ExternalSourcesDetails.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_EXTERNAL_SOURCE_SWITCH:Ljava/lang/String; = "external_sources_settings_switch"


# instance fields
.field private mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

.field private mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v5, 0x0

    .line 83
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 85
    .local v1, "um":Landroid/os/UserManager;
    const-string/jumbo v3, "no_install_unknown_sources"

    .line 86
    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 84
    invoke-virtual {v1, v3, v4}, Landroid/os/UserManager;->getUserRestrictionSource(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    .line 87
    .local v2, "userRestrictionSource":I
    packed-switch v2, :pswitch_data_0

    .line 96
    :pswitch_0
    iget-object v3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz v3, :cond_0

    .line 97
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 102
    .local v0, "appsState":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0f0189

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 90
    .end local v0    # "appsState":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    :pswitch_1
    const v3, 0x7f0f0187

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 92
    :pswitch_2
    const v3, 0x7f0f0188

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 99
    :cond_0
    new-instance v3, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    invoke-direct {v3, p0, v5, v5}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 100
    iget-object v4, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 99
    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    .restart local v0    # "appsState":Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;
    goto :goto_0

    .line 103
    :cond_1
    const v3, 0x7f0f018a

    goto :goto_1

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCanInstallApps(Z)V
    .locals 9
    .param p1, "newState"    # Z

    .prologue
    const/16 v8, 0x3e7

    const/16 v7, 0x49

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 111
    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 112
    invoke-static {v8, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 114
    .local v1, "parellelAppUId":I
    iget-object v5, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 115
    iget-object v6, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 116
    if-eqz p1, :cond_2

    move v2, v3

    .line 114
    :goto_0
    invoke-virtual {v5, v7, v1, v6, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 119
    .end local v1    # "parellelAppUId":I
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, v8, :cond_1

    .line 121
    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 120
    invoke-static {v3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 122
    .local v0, "ownerAppUId":I
    iget-object v5, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 123
    iget-object v6, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 124
    if-eqz p1, :cond_3

    move v2, v3

    .line 122
    :goto_1
    invoke-virtual {v5, v7, v0, v6, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 127
    .end local v0    # "ownerAppUId":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 128
    iget-object v5, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 129
    if-eqz p1, :cond_4

    .line 127
    :goto_2
    invoke-virtual {v2, v7, v5, v6, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 132
    return-void

    .restart local v1    # "parellelAppUId":I
    :cond_2
    move v2, v4

    .line 116
    goto :goto_0

    .end local v1    # "parellelAppUId":I
    .restart local v0    # "ownerAppUId":I
    :cond_3
    move v2, v4

    .line 124
    goto :goto_1

    .end local v0    # "ownerAppUId":I
    :cond_4
    move v3, v4

    .line 129
    goto :goto_2
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1
    .param p1, "id"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x328

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/applications/ExternalSourcesDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    .line 57
    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 58
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    .line 60
    const v1, 0x7f080034

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ExternalSourcesDetails;->addPreferencesFromResource(I)V

    .line 61
    const-string/jumbo v1, "external_sources_settings_switch"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ExternalSourcesDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v1, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 62
    iget-object v1, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    .local v0, "checked":Z
    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v2, :cond_3

    .line 69
    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v2

    if-eq v0, v2, :cond_2

    .line 70
    const-class v2, Lcom/android/settings/Settings$ManageAppExternalSourcesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/applications/ExternalSourcesDetails;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ExternalSourcesDetails;->setResult(I)V

    .line 74
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/applications/ExternalSourcesDetails;->setCanInstallApps(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/ExternalSourcesDetails;->refreshUi()Z

    .line 77
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 79
    :cond_3
    return v1
.end method

.method protected refreshUi()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 136
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_install_unknown_sources"

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v1, 0x7f0f0188

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 141
    return v3

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    return v3

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mAppBridge:Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object v1, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageName:Ljava/lang/String;

    .line 150
    iget-object v2, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 154
    return v3

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mSwitchPref:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/ExternalSourcesDetails;->mInstallAppsState:Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->canInstallApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 159
    :cond_3
    return v3
.end method
