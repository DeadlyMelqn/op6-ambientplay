.class public abstract Lcom/android/settings/applications/DefaultAppPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "DefaultAppPreferenceController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultAppPrefControl"


# instance fields
.field protected final mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

.field protected mUserId:I

.field protected final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/settings/applications/PackageManagerWrapperImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/PackageManagerWrapperImpl;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAppPreferenceController;->mPackageManager:Lcom/android/settings/applications/PackageManagerWrapper;

    .line 45
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 46
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/DefaultAppPreferenceController;->mUserId:I

    .line 47
    return-void
.end method

.method private mayUpdateGearIcon(Lcom/android/settings/applications/DefaultAppInfo;Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "app"    # Lcom/android/settings/applications/DefaultAppInfo;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 63
    instance-of v1, p2, Lcom/android/settings/GearPreference;

    if-nez v1, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DefaultAppPreferenceController;->getSettingIntent(Lcom/android/settings/applications/DefaultAppInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "settingIntent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 68
    check-cast p2, Lcom/android/settings/GearPreference;

    .line 69
    .end local p2    # "preference":Landroid/support/v7/preference/Preference;
    new-instance v1, Lcom/android/settings/applications/-$Lambda$3w2R4wBUFcP5__32TDzviQMKj2I;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/-$Lambda$3w2R4wBUFcP5__32TDzviQMKj2I;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p2, v1}, Lcom/android/settings/GearPreference;->setOnGearClickListener(Lcom/android/settings/GearPreference$OnGearClickListener;)V

    .line 73
    :goto_0
    return-void

    .line 71
    .restart local p2    # "preference":Landroid/support/v7/preference/Preference;
    :cond_1
    check-cast p2, Lcom/android/settings/GearPreference;

    .end local p2    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p2, v2}, Lcom/android/settings/GearPreference;->setOnGearClickListener(Lcom/android/settings/GearPreference$OnGearClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract getDefaultAppInfo()Lcom/android/settings/applications/DefaultAppInfo;
.end method

.method public getDefaultAppLabel()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    return-object v2

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settings/applications/DefaultAppInfo;

    move-result-object v0

    .line 90
    .local v0, "app":Lcom/android/settings/applications/DefaultAppInfo;
    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 93
    :cond_1
    return-object v2
.end method

.method protected getSettingIntent(Lcom/android/settings/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 1
    .param p1, "info"    # Lcom/android/settings/applications/DefaultAppInfo;

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$-com_android_settings_applications_DefaultAppPreferenceController_2570(Landroid/content/Intent;Lcom/android/settings/GearPreference;)V
    .locals 1
    .param p1, "settingIntent"    # Landroid/content/Intent;
    .param p2, "p"    # Lcom/android/settings/GearPreference;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPreferenceController;->getDefaultAppInfo()Lcom/android/settings/applications/DefaultAppInfo;

    move-result-object v0

    .line 52
    .local v0, "app":Lcom/android/settings/applications/DefaultAppInfo;
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAppPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 53
    .local v1, "defaultAppLabel":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/DefaultAppPreferenceController;->mayUpdateGearIcon(Lcom/android/settings/applications/DefaultAppInfo;Landroid/support/v7/preference/Preference;)V

    .line 60
    return-void

    .line 56
    :cond_0
    const-string/jumbo v2, "DefaultAppPrefControl"

    const-string/jumbo v3, "No default app"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const v2, 0x7f0f10b8

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
