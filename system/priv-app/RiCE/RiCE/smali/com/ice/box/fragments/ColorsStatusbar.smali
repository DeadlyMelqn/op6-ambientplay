.class public Lcom/ice/box/fragments/ColorsStatusbar;
.super Landroid/preference/PreferenceFragment;
.source "ColorsStatusbar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private filterPref:Landroid/preference/Preference;

.field private mSignalHeader:Landroid/preference/PreferenceCategory;

.field private mThemeId:I

.field private seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 62
    iput v0, p0, Lcom/ice/box/fragments/ColorsStatusbar;->mThemeId:I

    return-void
.end method

.method private populateFragment(Ljava/lang/Boolean;)V
    .locals 9

    .line 159
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const v0, 0x7f130008

    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsStatusbar;->addPreferencesFromResource(I)V

    goto :goto_1

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceScreen;->removeAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Failed"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsStatusbar;->addPreferencesFromResource(I)V

    .line 169
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 172
    new-instance v0, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsStatusbar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 173
    new-instance v0, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsStatusbar;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string v0, "THEMEID"

    .line 174
    iget v1, p0, Lcom/ice/box/fragments/ColorsStatusbar;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ice/box/fragments/ColorsStatusbar;->mThemeId:I

    const-string v0, "signal_header"

    .line 175
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/ice/box/fragments/ColorsStatusbar;->mSignalHeader:Landroid/preference/PreferenceCategory;

    const-string v0, "isS8"

    const/4 v1, 0x0

    .line 176
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isS9"

    .line 177
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "isNightly"

    .line 178
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "localStableVersion"

    const/4 v5, 0x1

    .line 179
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "localNightlyVersion"

    .line 180
    invoke-interface {p1, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string v6, "tweaks_link_statusbar_colors"

    .line 182
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_stock_statusbar_colors"

    .line 184
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_colorable_battery_icon"

    .line 186
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsStatusbar;->filterPref:Landroid/preference/Preference;

    .line 187
    iget-object v6, p0, Lcom/ice/box/fragments/ColorsStatusbar;->filterPref:Landroid/preference/Preference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v6, "tweaks_colorable_battery_icon"

    .line 188
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "tweaks_colorable_battery_icon"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v1, v5

    .line 191
    :cond_1
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 193
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v1, v5, :cond_5

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v5, "tweaks_colorable_battery_icon"

    invoke-virtual {p0, v5}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v5, "tweaks_mobile_roaming_color"

    invoke-virtual {p0, v5}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v5, "tweaks_airplane_mode_color"

    invoke-virtual {p0, v5}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    const/16 v0, 0x7c

    if-ge p1, v0, :cond_3

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "tweaks_carrier_text_color"

    invoke-virtual {p0, v1}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_2
    const/16 v0, 0x6e

    if-ge v4, v0, :cond_3

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "tweaks_carrier_text_color"

    invoke-virtual {p0, v1}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_2
    if-eqz v2, :cond_5

    if-eqz v3, :cond_4

    const/16 v0, 0x3b

    if-ge p1, v0, :cond_5

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_carrier_text_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_4
    const/16 p1, 0xb

    if-ge v4, p1, :cond_5

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_carrier_text_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 67
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ice/box/fragments/ColorsStatusbar;->populateFragment(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tweaks_link_statusbar_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f10006e

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "tweaks_statusbar_clock_color"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 75
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_statusbar_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_notification_icon_color"

    .line 77
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 76
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_statusbar_battery_percent_color"

    .line 79
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 78
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_wifi_signal_color"

    .line 81
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 80
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_wifi_activity_color"

    .line 83
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 82
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_mobile_signal_color"

    .line 85
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 84
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_mobile_type_color"

    .line 87
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 86
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_mobile_roaming_color"

    .line 89
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 88
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_airplane_mode_color"

    .line 91
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 90
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_battery_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_bluetooth_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_volume_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_location_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_alarm_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_powersaver_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_netspeed_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Successful!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsStatusbar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 103
    :goto_0
    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ice/box/fragments/ColorsStatusbar;->populateFragment(Ljava/lang/Boolean;)V

    const-string v0, "ICEDEBUG"

    const-string v4, "LINK REFRESH"

    .line 104
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "tweaks_colorable_battery_icon"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 110
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_colorable_battery_icon"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Successful!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsStatusbar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 114
    :catch_1
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsStatusbar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_stock_statusbar_colors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 119
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_statusbar_clock_color"

    const v4, -0x42000001    # -0.12499999f

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_statusbar_icon_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_icon_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_statusbar_battery_percent_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_wifi_signal_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_wifi_activity_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_mobile_signal_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_mobile_type_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_mobile_roaming_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_airplane_mode_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_battery_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_bluetooth_icon_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_volume_icon_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_location_icon_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_alarm_icon_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_powersaver_icon_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_netspeed_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_dark_icon_color"

    const/high16 v3, -0x67000000

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_carrier_text_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 151
    :catch_2
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsStatusbar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsStatusbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 153
    :goto_2
    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ice/box/fragments/ColorsStatusbar;->populateFragment(Ljava/lang/Boolean;)V

    const-string p0, "ICEDEBUG"

    const-string p1, "STOCK REFRESH"

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
