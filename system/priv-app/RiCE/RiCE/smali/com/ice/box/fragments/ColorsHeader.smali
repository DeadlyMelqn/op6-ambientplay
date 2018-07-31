.class public Lcom/ice/box/fragments/ColorsHeader;
.super Landroid/preference/PreferenceFragment;
.source "ColorsHeader.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mThemeId:I

.field seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 44
    iput v0, p0, Lcom/ice/box/fragments/ColorsHeader;->mThemeId:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 47
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130003

    .line 48
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsHeader;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "isNightly"

    const/4 v1, 0x0

    .line 50
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isS8"

    .line 51
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "isS9"

    .line 52
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    const-string v3, "localStableVersion"

    const/4 v4, 0x1

    .line 53
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "localNightlyVersion"

    .line 54
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 56
    new-instance v6, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsHeader;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 57
    new-instance v6, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsHeader;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string v6, "THEMEID"

    .line 58
    iget v7, p0, Lcom/ice/box/fragments/ColorsHeader;->mThemeId:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/ColorsHeader;->mThemeId:I

    const-string p1, "tweaks_unlock_header_colors"

    .line 60
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 62
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 63
    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_unlock_header_colors"

    .line 62
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_header_stock_look"

    .line 65
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 67
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_4

    if-eqz v2, :cond_5

    if-eqz v0, :cond_2

    const/16 p1, 0x53

    if-ge v5, p1, :cond_1

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_settings_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_menu_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_clock_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_divider_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_date_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 77
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_text_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x64

    if-ge v3, p1, :cond_3

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_settings_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_menu_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_clock_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_divider_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_date_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_text_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_settings_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_menu_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_clock_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_divider_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_header_date_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsHeader;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tweaks_unlock_header_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f10006e

    if-eqz v0, :cond_0

    .line 106
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 109
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_unlock_header_colors"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Successful!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "current_sec_active_themepackage"

    .line 111
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsHeader;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createSystemUINotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsHeader;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_header_stock_look"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_text_color"

    const v2, -0xdadadb

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_icon_color"

    const v3, -0x4cdadadb

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_settings_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_menu_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_clock_color"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_divider_color"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_header_date_color"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 138
    :catch_1
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsHeader;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsHeader;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
