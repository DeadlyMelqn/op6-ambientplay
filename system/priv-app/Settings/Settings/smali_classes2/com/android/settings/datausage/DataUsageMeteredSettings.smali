.class public Lcom/android/settings/datausage/DataUsageMeteredSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageMeteredSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageMeteredSettings$1;,
        Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SHOW_MOBILE_CATEGORY:Z


# instance fields
.field private mMobileCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mWifiDisabled:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageMeteredSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/datausage/DataUsageMeteredSettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lcom/android/settings/datausage/DataUsageMeteredSettings$1;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$1;-><init>()V

    .line 202
    sput-object v0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateNetworks(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mMobileCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 97
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 98
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 100
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v2, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings$MeteredPreference;-><init>(Lcom/android/settings/datausage/DataUsageMeteredSettings;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 101
    .local v2, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 106
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config$iterator":Ljava/util/Iterator;
    .end local v2    # "pref":Landroid/support/v7/preference/Preference;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiDisabled:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 108
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x44

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 76
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 78
    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 79
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v1}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    .line 81
    const v1, 0x7f080026

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->addPreferencesFromResource(I)V

    .line 82
    const-string/jumbo v1, "mobile"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mMobileCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 83
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 84
    const-string/jumbo v1, "wifi_disabled"

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageMeteredSettings;->mWifiDisabled:Landroid/support/v7/preference/Preference;

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/DataUsageMeteredSettings;->updateNetworks(Landroid/content/Context;)V

    .line 87
    return-void
.end method
