.class public Lcom/android/settings/wifi/UseOpenWifiPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "UseOpenWifiPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_USE_OPEN_WIFI_AUTOMATICALLY:Ljava/lang/String; = "use_open_wifi_automatically"

.field static final REQUEST_CODE_OPEN_WIFI_AUTOMATICALLY:I = 0x190
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mDoFeatureSupportedScorersExist:Z

.field private mEnableUseWifiComponentName:Landroid/content/ComponentName;

.field private final mFragment:Landroid/app/Fragment;

.field private final mNetworkScoreManagerWrapper:Lcom/android/settings/network/NetworkScoreManagerWrapper;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateEnableUseWifiComponentName()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/network/NetworkScoreManagerWrapper;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "networkScoreManagerWrapper"    # Lcom/android/settings/network/NetworkScoreManagerWrapper;
    .param p4, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    iput-object p2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 58
    iput-object p3, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManagerWrapper:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    .line 59
    new-instance v0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/UseOpenWifiPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->updateEnableUseWifiComponentName()V

    .line 61
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->checkForFeatureSupportedScorers()V

    .line 62
    invoke-virtual {p4, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    .line 63
    return-void
.end method

.method private checkForFeatureSupportedScorers()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    iget-object v3, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    .line 73
    iput-boolean v4, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    .line 74
    return-void

    .line 76
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManagerWrapper:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v3}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getAllValidScorers()Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, "scorers":Ljava/util/List;, "Ljava/util/List<Landroid/net/NetworkScorerAppData;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "scorer$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScorerAppData;

    .line 78
    .local v0, "scorer":Landroid/net/NetworkScorerAppData;
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 79
    iput-boolean v4, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    .line 80
    return-void

    .line 83
    .end local v0    # "scorer":Landroid/net/NetworkScorerAppData;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    .line 84
    return-void
.end method

.method private isSettingEnabled()Z
    .locals 4

    .prologue
    .line 157
    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 158
    const-string/jumbo v3, "use_open_wifi_package"

    .line 157
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "enabledUseOpenWifiPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 161
    :goto_0
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentUseOpenWifiPackage":Ljava/lang/String;
    goto :goto_0
.end method

.method private updateEnableUseWifiComponentName()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManagerWrapper:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v2}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 68
    .local v0, "appData":Landroid/net/NetworkScorerAppData;
    if-nez v0, :cond_0

    .line 67
    :goto_0
    iput-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    .line 69
    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getEnableUseOpenWifiActivity()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 89
    const-string/jumbo v0, "use_open_wifi_automatically"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 90
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "use_open_wifi_automatically"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mDoFeatureSupportedScorersExist:Z

    return v0
.end method

.method public onActivityResult(II)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I

    .prologue
    .line 165
    const/16 v0, 0x190

    if-eq p1, v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "use_open_wifi_package"

    .line 171
    iget-object v2, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 173
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 100
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "use_open_wifi_automatically"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 139
    if-eqz v1, :cond_1

    .line 141
    :cond_0
    return v3

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 146
    const-string/jumbo v2, "use_open_wifi_package"

    const-string/jumbo v3, ""

    .line 145
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    const/4 v1, 0x1

    return v1

    .line 150
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.scoring.CUSTOM_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x190

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    return v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mSettingObserver:Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 95
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 114
    instance-of v3, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v3, :cond_0

    .line 115
    return-void

    :cond_0
    move-object v2, p1

    .line 117
    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    .line 119
    .local v2, "useOpenWifiPreference":Landroid/support/v14/preference/SwitchPreference;
    iget-object v3, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mNetworkScoreManagerWrapper:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v3}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 120
    .local v1, "isScorerSet":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->mEnableUseWifiComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 122
    .local v0, "doesActiveScorerSupportFeature":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isSettingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 124
    if-eqz v1, :cond_3

    move v3, v0

    :goto_2
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 126
    if-nez v1, :cond_4

    .line 128
    const v3, 0x7f0f12ae

    .line 127
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 135
    :goto_3
    return-void

    .line 119
    .end local v0    # "doesActiveScorerSupportFeature":Z
    .end local v1    # "isScorerSet":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isScorerSet":Z
    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "doesActiveScorerSupportFeature":Z
    goto :goto_1

    .line 124
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 129
    :cond_4
    if-nez v0, :cond_5

    .line 131
    const v3, 0x7f0f12af

    .line 130
    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    .line 133
    :cond_5
    const v3, 0x7f0f126f

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3
.end method
