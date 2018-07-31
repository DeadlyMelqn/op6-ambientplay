.class public Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiSleepPolicyPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .param p1, "sleepPolicyPref"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p2, :cond_2

    .line 84
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b005b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "values":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const v2, 0x7f0b005a

    .line 89
    .local v2, "summaryArrayResId":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "summaries":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 91
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 93
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    return-void

    .line 88
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    :cond_0
    const v2, 0x7f0b0059

    .restart local v2    # "summaryArrayResId":I
    goto :goto_0

    .line 90
    .restart local v0    # "i":I
    .restart local v1    # "summaries":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "i":I
    .end local v1    # "summaries":[Ljava/lang/String;
    .end local v2    # "summaryArrayResId":I
    .end local v3    # "values":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 101
    const-string/jumbo v4, "MemoryPowerCalculator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "sleep_policy"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 70
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 71
    .local v2, "stringValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_sleep_policy"

    .line 72
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 71
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    invoke-direct {p0, p1, v2}, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v3, 0x1

    return v3

    .line 74
    .end local v2    # "stringValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f0f082b

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 77
    return v6
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    move-object v0, p1

    .line 53
    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 54
    .local v0, "sleepPolicyPref":Landroid/support/v7/preference/ListPreference;
    if-eqz v0, :cond_1

    .line 55
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    const v3, 0x7f0b005a

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 59
    const-string/jumbo v4, "wifi_sleep_policy"

    .line 60
    const/4 v5, 0x2

    .line 58
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 61
    .local v2, "value":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "stringValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 65
    .end local v1    # "stringValue":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_1
    return-void
.end method
