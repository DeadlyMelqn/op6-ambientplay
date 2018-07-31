.class public Lcom/ice/box/fragments/Settings;
.super Landroid/preference/PreferenceFragment;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private checked:Z

.field private mThemeId:I

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const v0, 0x7f110126

    .line 24
    iput v0, p0, Lcom/ice/box/fragments/Settings;->mThemeId:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 27
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "THEMEID"

    .line 29
    iget v1, p0, Lcom/ice/box/fragments/Settings;->mThemeId:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ice/box/fragments/Settings;->mThemeId:I

    const-string v0, "isICE"

    const/4 v1, 0x0

    .line 31
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "isDeviceRooted"

    .line 32
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "isSystemApp"

    .line 33
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static/range {v3 .. v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isNightly"

    .line 34
    invoke-interface {p1, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "isFreeVersion"

    .line 35
    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const v6, 0x7f130013

    .line 37
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/Settings;->addPreferencesFromResource(I)V

    .line 38
    new-instance v6, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    const-string v6, "sysapp"

    .line 41
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 42
    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 46
    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f1000e1

    .line 47
    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual/range {v3 .. v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_0
    const-string v2, "check_app_updates"

    .line 52
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 53
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "check_app_updates"

    .line 54
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    const-string v3, "check_app_updates"

    const/4 v6, 0x1

    .line 55
    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    .line 56
    iget-boolean v3, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v2, "force_english"

    .line 58
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 59
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "force_english"

    .line 60
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    const-string v3, "forceEnglish"

    .line 61
    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    .line 62
    iget-boolean v3, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v2, "switch_theme"

    .line 64
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 65
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v3, "switch_theme"

    .line 66
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    const v7, 0x7f100078

    if-eqz v5, :cond_3

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 70
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 71
    :cond_3
    iget v2, p0, Lcom/ice/box/fragments/Settings;->mThemeId:I

    const v8, 0x7f110125

    if-ne v2, v8, :cond_4

    .line 72
    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    :goto_1
    const-string v2, "romupdate_start"

    .line 75
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 76
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v3, "romupdate_start"

    .line 77
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    const-string v6, "romupdate_start"

    .line 78
    invoke-interface {p1, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    .line 79
    iget-boolean v6, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-nez v0, :cond_5

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    :goto_2
    const-string v2, "romupdate"

    .line 86
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 87
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v3, "romupdate"

    .line 88
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    const-string v6, "romupdate"

    .line 89
    invoke-interface {p1, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    .line 90
    iget-boolean v6, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-nez v0, :cond_7

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_8
    if-eqz v5, :cond_9

    .line 96
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 97
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    const-string v2, "romupdateinterval"

    .line 100
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-nez v0, :cond_a

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "romupdatescat"

    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_a
    if-eqz v4, :cond_b

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "romupdatescat"

    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    :goto_4
    const-string v2, "nightlyupdate_start"

    .line 110
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 111
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v3, "nightlyupdate_start"

    .line 112
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    const-string v6, "nightlyupdate_start"

    .line 113
    invoke-interface {p1, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    .line 114
    iget-boolean v6, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-nez v0, :cond_c

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_c
    if-nez v4, :cond_d

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    :goto_5
    const-string v2, "nightlyupdate"

    .line 121
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 122
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v3, "nightlyupdate"

    .line 123
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    const-string v6, "nightlyupdate"

    .line 124
    invoke-interface {p1, v6, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    .line 125
    iget-boolean p1, p0, Lcom/ice/box/fragments/Settings;->checked:Z

    invoke-virtual {v3, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-nez v0, :cond_e

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    :cond_e
    if-nez v4, :cond_f

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6

    :cond_f
    if-eqz v5, :cond_10

    .line 131
    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 132
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_6
    const-string p1, "nightlyupdateinterval"

    .line 136
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-nez v0, :cond_11

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "romupdatesnightlycat"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7

    :cond_11
    if-nez v4, :cond_12

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "romupdatesnightlycat"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_12
    :goto_7
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isFreeVersion"

    const/4 v2, 0x0

    .line 149
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 152
    new-instance v3, Lcom/ice/box/receivers/MyBootReceiver;

    invoke-direct/range {v3 .. v3}, Lcom/ice/box/receivers/MyBootReceiver;-><init>()V

    .line 154
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sysapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 157
    invoke-static/range {v6 .. v6}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct/range {v6 .. v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/ice/box/helpers/Constants;->BUSYBOX_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " test -d /system/priv-app/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " || "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ice/box/helpers/Constants;->BUSYBOX_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mkdir -p /system/priv-app/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " && "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ice/box/helpers/Constants;->BUSYBOX_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " /system/priv-app/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk && "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ice/box/helpers/Constants;->BUSYBOX_PATH:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " chmod -R 755 /system/priv-app/"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v6 .. v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v4 .. v4}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    invoke-static/range {v2 .. v2}, Lcom/ice/box/helpers/RootUtils;->mountSystemRW(Z)V

    .line 163
    iget-object v4, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {v4 .. v4}, Lcom/ice/box/helpers/TweaksHelper;->createRebootNotification()V

    .line 166
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "check_app_updates"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f10011d

    if-eqz v4, :cond_1

    .line 168
    :try_start_0
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "check_app_updates"

    move-object v7, p1

    check-cast v7, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v7 .. v7}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 169
    invoke-interface/range {v4 .. v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Successful!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    iget-object v4, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v6, "force_english"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v6, 0x4000000

    if-eqz v4, :cond_2

    .line 178
    :try_start_1
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v7, "forceEnglish"

    move-object v8, p1

    check-cast v8, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v8 .. v8}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface/range {v4 .. v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "Successful!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 181
    :catch_1
    iget-object v4, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 183
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {v7 .. v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 184
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v4}, Lcom/ice/box/fragments/Settings;->startActivity(Landroid/content/Intent;)V

    .line 188
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v7, "switch_theme"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 189
    move-object v4, p1

    check-cast v4, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v4 .. v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-nez v1, :cond_4

    if-eqz v4, :cond_3

    .line 193
    :try_start_2
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "THEMEID"

    const v7, 0x7f110125

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 196
    :cond_3
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "THEMEID"

    const v7, 0x7f110126

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/app/Activity;->finish()V

    .line 199
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 200
    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 201
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v1}, Lcom/ice/box/fragments/Settings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 204
    :catch_2
    iget-object v1, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 209
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "romupdate_start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 211
    :try_start_3
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "romupdate_start"

    move-object v6, p1

    check-cast v6, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v6 .. v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Successful!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 214
    :catch_3
    iget-object v1, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 217
    :cond_5
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "romupdate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 219
    :try_start_4
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "romupdate"

    move-object v6, p1

    check-cast v6, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v6 .. v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "nightlyupdate"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Successful!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/ice/box/receivers/MyBootReceiver;->scheduleAlarm(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    .line 226
    :catch_4
    iget-object v1, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 229
    :cond_6
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "nightlyupdate_start"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 231
    :try_start_5
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "nightlyupdate_start"

    move-object v6, p1

    check-cast v6, Landroid/preference/SwitchPreference;

    invoke-virtual/range {v6 .. v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 232
    invoke-interface/range {v1 .. v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Successful!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 235
    :catch_5
    iget-object v1, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    .line 238
    :cond_7
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "nightlyupdate"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 240
    :try_start_6
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "nightlyupdate"

    check-cast p1, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result p1

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "romupdate"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface/range {p1 .. p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 242
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SuccessfulXX!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/ice/box/receivers/MyBootReceiver;->scheduleNightlyAlarm(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_7

    .line 245
    :catch_6
    iget-object p1, p0, Lcom/ice/box/fragments/Settings;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    :cond_8
    :goto_7
    return v2
.end method
