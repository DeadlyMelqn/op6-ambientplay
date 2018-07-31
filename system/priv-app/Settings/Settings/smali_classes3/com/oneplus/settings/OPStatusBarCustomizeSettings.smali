.class public Lcom/oneplus/settings/OPStatusBarCustomizeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPStatusBarCustomizeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;
    }
.end annotation


# static fields
.field private static final BATTERY_BAR_STYLE:I = 0x0

.field private static final BATTERY_CIRCLE_STYLE:I = 0x1

.field private static final BATTERY_HIDDEN_STYLE:I = 0x2

.field private static final KEY_BATTERY_PERCENT:Ljava/lang/String; = "enable_show_statusbar"

.field private static final KEY_BATTERY_STYLE:Ljava/lang/String; = "battery_style"

.field private static final KEY_CLOCK:Ljava/lang/String; = "clock"

.field private static final KEY_STATUSBAR_ICON_MANGER:Ljava/lang/String; = "status_bar_icon_manager"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SHOW_CUSTOM_STATUS_BAR:Z

.field private static final SHOW_POWER_PERCENT_IN_STATUSBAR_TITLE:Ljava/lang/String; = "show_power_percent_in_statusbar_title"

.field private static final TAG:Ljava/lang/String; = "OPStatusBarCustomizeSettings"


# instance fields
.field private mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

.field private mClockPreference:Landroid/support/v7/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->SHOW_CUSTOM_STATUS_BAR:Z

    .line 126
    new-instance v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;-><init>()V

    .line 125
    sput-object v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBatteryStylePreferenceDescription(Ljava/lang/String;)V
    .locals 5
    .param p1, "batteryStyle"    # Ljava/lang/String;

    .prologue
    .line 107
    iget-object v2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "index":I
    iget-object v2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    .local v0, "entries":[Ljava/lang/CharSequence;
    if-ltz v1, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 117
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0    # "entries":[Ljava/lang/CharSequence;
    .restart local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 114
    const-string/jumbo v2, "OPStatusBarCustomizeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error to set index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for battery style "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v4, 0x7f080072

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    .line 51
    const-string/jumbo v4, "battery_style"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    .line 52
    sget-boolean v4, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->SHOW_CUSTOM_STATUS_BAR:Z

    if-eqz v4, :cond_0

    .line 53
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    const v7, 0x7f0b00b1

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 54
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    const v7, 0x7f0b00b2

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 56
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 57
    const-string/jumbo v7, "status_bar_battery_style"

    .line 56
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "selectedStyle":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->updateBatteryStylePreferenceDescription(Ljava/lang/String;)V

    .line 60
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    const-string/jumbo v4, "enable_show_statusbar"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 63
    const-string/jumbo v4, "clock"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mClockPreference:Landroid/support/v7/preference/ListPreference;

    .line 64
    const-string/jumbo v4, "status_bar_icon_manager"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;

    .line 65
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    sget-boolean v4, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->SHOW_CUSTOM_STATUS_BAR:Z

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mClockPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 74
    const-string/jumbo v7, "status_bar_show_battery_percent"

    .line 73
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 75
    .local v2, "showPercetn":I
    iget-object v7, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v2, v5, :cond_3

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 76
    iget-object v4, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    .line 80
    .local v3, "showPowerPercentInStatusBar":Z
    if-eqz v0, :cond_1

    const-string/jumbo v4, "show_power_percent_in_statusbar_title"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const-string/jumbo v4, "show_power_percent_in_statusbar_title"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 82
    .local v3, "showPowerPercentInStatusBar":Z
    if-nez v3, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "showPowerPercentInStatusBar":Z
    :cond_3
    move v4, v6

    .line 75
    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "battery_style"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 93
    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 94
    .local v0, "batteryStyle":I
    iget-object v3, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 95
    const-string/jumbo v5, "status_bar_battery_style"

    .line 94
    invoke-static {v3, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->updateBatteryStylePreferenceDescription(Ljava/lang/String;)V

    .line 97
    return v4

    .line 98
    .end local v0    # "batteryStyle":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v3, "enable_show_statusbar"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 100
    .local v2, "value":Z
    iget-object v3, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "status_bar_show_battery_percent"

    if-eqz v2, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    return v4

    .line 100
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 103
    .end local v2    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    return v4
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "key":Ljava/lang/String;
    const-string/jumbo v0, "status_bar_icon_manager"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v6, Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    const-class v1, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v6, "intent":Landroid/content/Intent;
    const-class v0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    return v3
.end method
