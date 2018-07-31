.class public Lcom/ice/box/fragments/ColorsQuickSettings;
.super Landroid/preference/PreferenceFragment;
.source "ColorsQuickSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mThemeId:I

.field seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 47
    iput v0, p0, Lcom/ice/box/fragments/ColorsQuickSettings;->mThemeId:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 50
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130007

    .line 51
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsQuickSettings;->addPreferencesFromResource(I)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "isNightly"

    const/4 v1, 0x0

    .line 53
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isS8"

    .line 54
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "localStableVersion"

    const/4 v4, 0x1

    .line 55
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "localNightlyVersion"

    .line 56
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 58
    new-instance v6, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsQuickSettings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 59
    new-instance v6, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsQuickSettings;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string v6, "THEMEID"

    .line 60
    iget v7, p0, Lcom/ice/box/fragments/ColorsQuickSettings;->mThemeId:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/ColorsQuickSettings;->mThemeId:I

    const-string p1, "tweaks_unlock_qs_colors"

    .line 62
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 63
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    check-cast p1, Landroid/preference/SwitchPreference;

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_unlock_qs_colors"

    .line 64
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v1, v4

    :cond_0
    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string p1, "tweaks_qs_stock_look"

    .line 67
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    const/16 p1, 0x53

    if-ge v5, p1, :cond_3

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_thumb_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_page_indicator_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    if-ge v3, p1, :cond_3

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_thumb_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_page_indicator_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_thumb_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_qs_page_indicator_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsQuickSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tweaks_unlock_qs_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f10006e

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 102
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_unlock_qs_colors"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Successful!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "current_sec_active_themepackage"

    .line 104
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsQuickSettings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createSystemUINotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsQuickSettings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_qs_stock_look"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_background_color"

    const v2, -0x50506

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_icon_off_color"

    const v3, 0x4d252525    # 1.73167184E8f

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_icon_on_color"

    const v4, -0xdd3b01

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_icon_off_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_text_color"

    const v4, -0xdadadb

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_divider_color"

    const v5, 0x33252525

    invoke-static {p1, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_drag_handle_background_color"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_drag_handle_icon_color"

    const v2, -0x33dadadb    # -4.3291796E7f

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_color"

    const v2, -0xa93f1b

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_data_usage_text_color"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_page_indicator_color"

    const v4, -0xbbbbbc

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_icon_color"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_qs_slider_thumb_color"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsQuickSettings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsQuickSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
