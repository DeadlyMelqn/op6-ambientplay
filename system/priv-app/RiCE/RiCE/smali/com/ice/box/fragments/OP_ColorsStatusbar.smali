.class public Lcom/ice/box/fragments/OP_ColorsStatusbar;
.super Landroid/preference/PreferenceFragment;
.source "OP_ColorsStatusbar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mThemeId:I

.field sharedPref:Landroid/content/SharedPreferences;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 61
    iput v0, p0, Lcom/ice/box/fragments/OP_ColorsStatusbar;->mThemeId:I

    return-void
.end method

.method private disablePrefs()V
    .locals 0

    return-void
.end method

.method private populateFragment(Ljava/lang/Boolean;)V
    .locals 19

    move-object/from16 v0, p0

    .line 151
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const v2, 0x7f13000d

    if-nez v1, :cond_0

    .line 152
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->addPreferencesFromResource(I)V

    goto :goto_1

    .line 155
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/preference/PreferenceScreen;->removeAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Failed"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->addPreferencesFromResource(I)V

    :goto_1
    const-string v1, "tweaks_link_statusbar_colors"

    .line 161
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_stock_statusbar_colors"

    .line 162
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_global_statusbar_icon_color"

    .line 164
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_statusbar_clock_color"

    .line 165
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "tweaks_notification_icon_color"

    .line 166
    invoke-virtual {v0, v3}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "tweaks_battery_color"

    .line 167
    invoke-virtual {v0, v4}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v5, "tweaks_statusbar_battery_percent_color"

    .line 168
    invoke-virtual {v0, v5}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "tweaks_bluetooth_icon_color"

    .line 169
    invoke-virtual {v0, v6}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    const-string v7, "tweaks_location_icon_color"

    .line 170
    invoke-virtual {v0, v7}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const-string v8, "tweaks_volume_icon_color"

    .line 171
    invoke-virtual {v0, v8}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    const-string v9, "tweaks_wifi_signal_color"

    .line 172
    invoke-virtual {v0, v9}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const-string v10, "tweaks_wifi_activity_color"

    .line 173
    invoke-virtual {v0, v10}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "tweaks_mobile_signal_color"

    .line 174
    invoke-virtual {v0, v11}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    const-string v12, "tweaks_mobile_type_color"

    .line 175
    invoke-virtual {v0, v12}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const-string v13, "tweaks_statusbar_icon_color"

    .line 176
    invoke-virtual {v0, v13}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    const-string v14, "tweaks_carrier_text_color"

    .line 177
    invoke-virtual {v0, v14}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    const-string v15, "tweaks_netspeed_color"

    .line 178
    invoke-virtual {v0, v15}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    move-object/from16 v16, v1

    .line 180
    sget v1, Lcom/ice/box/MainActivity;->licenseRating:I

    move-object/from16 v17, v15

    const/16 v15, 0x10

    move-object/from16 v18, v14

    const/4 v14, 0x0

    if-ge v1, v15, :cond_1

    .line 181
    invoke-virtual {v2, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    const v1, 0x7f1000e7

    .line 182
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v3, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {v4, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 186
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v5, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v6, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 190
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v7, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 194
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {v10, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 198
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v11, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v12, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 204
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v2, v18

    .line 205
    invoke-virtual {v2, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 206
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v2, v17

    .line 207
    invoke-virtual {v2, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rice_type"

    invoke-static {v0, v1, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const-string v0, "ICEDEBUG"

    const-string v1, "Fail to set rice type 1 via settings, attempting as root"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "settings put global rice_type 0"

    .line 213
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object/from16 v1, v16

    .line 216
    invoke-virtual {v1, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 219
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rice_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v0, "ICEDEBUG"

    const-string v1, "Fail to set rice type 1 via settings, attempting as root"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "settings put global rice_type 1"

    .line 222
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_ColorsStatusbar;->sharedPref:Landroid/content/SharedPreferences;

    .line 67
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/OP_ColorsStatusbar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 68
    iget-object p1, p0, Lcom/ice/box/fragments/OP_ColorsStatusbar;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "THEMEID"

    iget v1, p0, Lcom/ice/box/fragments/OP_ColorsStatusbar;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/OP_ColorsStatusbar;->mThemeId:I

    const/4 p1, 0x0

    .line 70
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->populateFragment(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tweaks_link_statusbar_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f10006e

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "tweaks_statusbar_clock_color"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 78
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_statusbar_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_notification_icon_color"

    .line 80
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 79
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_statusbar_battery_percent_color"

    .line 82
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 81
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_wifi_signal_color"

    .line 84
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 83
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_wifi_activity_color"

    .line 86
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 85
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_mobile_signal_color"

    .line 88
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 87
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_mobile_type_color"

    .line 90
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 89
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_mobile_roaming_color"

    .line 92
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 91
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_airplane_mode_color"

    .line 94
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 93
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_battery_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_bluetooth_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_volume_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_location_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_alarm_icon_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tweaks_netspeed_color"

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Successful!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/OP_ColorsStatusbar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 105
    :goto_0
    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->populateFragment(Ljava/lang/Boolean;)V

    const-string v0, "ICEDEBUG"

    const-string v4, "LINK REFRESH"

    .line 106
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_stock_statusbar_colors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_statusbar_clock_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_statusbar_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_notification_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_statusbar_battery_percent_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_wifi_signal_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_wifi_activity_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_mobile_signal_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_mobile_type_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_mobile_roaming_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_airplane_mode_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_battery_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_bluetooth_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_volume_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_location_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_alarm_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_netspeed_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_dark_icon_color"

    const/high16 v4, -0x67000000

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_carrier_text_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 142
    :catch_1
    iget-object p1, p0, Lcom/ice/box/fragments/OP_ColorsStatusbar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 144
    :goto_1
    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ice/box/fragments/OP_ColorsStatusbar;->populateFragment(Ljava/lang/Boolean;)V

    const-string p0, "ICEDEBUG"

    const-string p1, "STOCK REFRESH"

    .line 145
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
