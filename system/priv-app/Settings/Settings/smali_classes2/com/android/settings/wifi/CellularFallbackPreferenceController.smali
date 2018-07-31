.class public Lcom/android/settings/wifi/CellularFallbackPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "CellularFallbackPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_CELLULAR_FALLBACK:Ljava/lang/String; = "wifi_cellular_data_fallback"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method private avoidBadWifiConfig()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 80
    iget-object v1, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 81
    const v2, 0x10e005f

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private avoidBadWifiCurrentSettings()Z
    .locals 3

    .prologue
    .line 85
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "network_avoid_bad_wifi"

    .line 85
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "wifi_cellular_data_fallback"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wifi_cellular_data_fallback"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    return v3

    .line 58
    :cond_0
    instance-of v1, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v1, :cond_1

    .line 59
    return v3

    .line 62
    :cond_1
    const-string/jumbo v0, "network_avoid_bad_wifi"

    .line 63
    .local v0, "settingName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 64
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .end local p1    # "preference":Landroid/support/v7/preference/Preference;
    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    .line 63
    :goto_0
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    const/4 v1, 0x1

    return v1

    .line 64
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->avoidBadWifiConfig()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->avoidBadWifiCurrentSettings()Z

    move-result v0

    .line 73
    .local v0, "currentSetting":Z
    if-eqz p1, :cond_0

    move-object v1, p1

    .line 74
    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    .line 75
    .local v1, "pref":Landroid/support/v14/preference/SwitchPreference;
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    .end local v1    # "pref":Landroid/support/v14/preference/SwitchPreference;
    :cond_0
    return-void
.end method
