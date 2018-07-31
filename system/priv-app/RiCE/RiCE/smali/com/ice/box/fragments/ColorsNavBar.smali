.class public Lcom/ice/box/fragments/ColorsNavBar;
.super Landroid/preference/PreferenceFragment;
.source "ColorsNavBar.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mThemeId:I

.field seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 39
    iput v0, p0, Lcom/ice/box/fragments/ColorsNavBar;->mThemeId:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 42
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130004

    .line 43
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNavBar;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "isNightly"

    const/4 v1, 0x0

    .line 45
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isS8"

    .line 46
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "localStableVersion"

    const/4 v4, 0x1

    .line 47
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "localNightlyVersion"

    .line 48
    invoke-interface {p1, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 50
    new-instance v6, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsNavBar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 51
    new-instance v6, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/ColorsNavBar;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string v6, "THEMEID"

    .line 52
    iget v7, p0, Lcom/ice/box/fragments/ColorsNavBar;->mThemeId:I

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/fragments/ColorsNavBar;->mThemeId:I

    .line 54
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt p1, v6, :cond_3

    if-eqz v2, :cond_5

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v2, "tweaks_dynamic_navbar"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v2, "tweaks_navbar_icon_color"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    if-eqz v0, :cond_1

    const/16 p1, 0x3b

    if-ge v5, p1, :cond_0

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_pin_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_recents_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_home_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_back_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_menu_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_ime_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_ime_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_link_navbar_colors"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_0
    const-string p1, "tweaks_link_navbar_colors"

    .line 69
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1

    :cond_1
    const/16 p1, 0x5c

    if-ge v3, p1, :cond_2

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_pin_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_recents_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_home_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_back_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_menu_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_ime_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_link_navbar_colors"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_2
    const-string p1, "tweaks_link_navbar_colors"

    .line 81
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1

    .line 87
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_pin_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_recents_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_home_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_back_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_menu_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_navbar_ime_icon_color"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "tweaks_link_navbar_colors"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string p1, "tweaks_dynamic_navbar"

    .line 95
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 97
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_dynamic_navbar"

    .line 97
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    :goto_1
    const-string p1, "tweaks_unlock_navbar_colors"

    .line 101
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/ColorsNavBar;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "tweaks_unlock_navbar_colors"

    .line 103
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_6

    move v1, v4

    :cond_6
    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tweaks_unlock_navbar_colors"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f10006e

    if-eqz v0, :cond_0

    .line 109
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 112
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_unlock_navbar_colors"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNavBar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNavBar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tweaks_dynamic_navbar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v0 .. v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 124
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tweaks_dynamic_navbar"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Successful!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 127
    :catch_1
    iget-object v0, p0, Lcom/ice/box/fragments/ColorsNavBar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 130
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tweaks_link_navbar_colors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_navbar_pin_icon_color"

    const v2, -0x50506

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 134
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_navbar_pin_icon_color"

    .line 135
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 134
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_navbar_recents_icon_color"

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 136
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_navbar_home_icon_color"

    .line 139
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 138
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_navbar_back_icon_color"

    .line 141
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 140
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_navbar_menu_icon_color"

    .line 143
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 142
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tweaks_navbar_ime_icon_color"

    .line 145
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 144
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Successful!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 148
    :catch_2
    iget-object p1, p0, Lcom/ice/box/fragments/ColorsNavBar;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/ColorsNavBar;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 p0, 0x0

    return p0
.end method
