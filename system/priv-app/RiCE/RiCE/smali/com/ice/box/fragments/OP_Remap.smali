.class public Lcom/ice/box/fragments/OP_Remap;
.super Landroid/preference/PreferenceFragment;
.source "OP_Remap.java"


# instance fields
.field sharedPref:Landroid/content/SharedPreferences;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/OP_Remap;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ice/box/fragments/OP_Remap;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 25
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Remap;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Remap;->sharedPref:Landroid/content/SharedPreferences;

    const p1, 0x7f130011

    .line 28
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Remap;->addPreferencesFromResource(I)V

    const-string p1, "tweaks_custom_home_long_app"

    .line 32
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Remap;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 33
    sget-object v0, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 34
    sget-object v0, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "onePlus6"

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 36
    invoke-static {v0, v2, v2, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    const v3, 0x7f100060

    const/16 v4, 0x11

    const v5, 0x7f1000de

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 38
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "key_home_long_press_action"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 42
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Lcom/ice/box/fragments/OP_Remap$1;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Remap$1;-><init>(Lcom/ice/box/fragments/OP_Remap;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    const-string p1, "tweaks_custom_home_double_app"

    .line 63
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Remap;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 64
    sget-object v0, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 65
    sget-object v0, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "onePlus6"

    .line 67
    invoke-static {v0, v2, v2, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 69
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "key_home_double_tap_action"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 73
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 76
    :cond_3
    new-instance v0, Lcom/ice/box/fragments/OP_Remap$2;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Remap$2;-><init>(Lcom/ice/box/fragments/OP_Remap;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    const-string p1, "tweaks_custom_recent_long_app"

    .line 96
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Remap;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 97
    sget-object v0, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 98
    sget-object v0, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "onePlus6"

    .line 100
    invoke-static {v0, v2, v2, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 102
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 105
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "key_app_switch_long_press_action"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 106
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 109
    :cond_5
    new-instance v0, Lcom/ice/box/fragments/OP_Remap$3;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Remap$3;-><init>(Lcom/ice/box/fragments/OP_Remap;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    const-string p1, "tweaks_custom_recent_double_app"

    .line 127
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Remap;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 128
    sget-object v0, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 129
    sget-object v0, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "onePlus6"

    .line 131
    invoke-static {v0, v2, v2, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_6

    .line 132
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 133
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 136
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "key_app_switch_double_tap_action"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_7

    .line 137
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 140
    :cond_7
    new-instance v0, Lcom/ice/box/fragments/OP_Remap$4;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Remap$4;-><init>(Lcom/ice/box/fragments/OP_Remap;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    const-string p1, "tweaks_custom_back_long_app"

    .line 160
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Remap;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 161
    sget-object v0, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 162
    sget-object v0, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "onePlus6"

    .line 164
    invoke-static {v0, v2, v2, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 165
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 166
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 169
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "key_back_long_press_action"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_9

    .line 170
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 173
    :cond_9
    new-instance v0, Lcom/ice/box/fragments/OP_Remap$5;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Remap$5;-><init>(Lcom/ice/box/fragments/OP_Remap;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_4
    const-string p1, "tweaks_custom_back_double_app"

    .line 191
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Remap;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 192
    sget-object v0, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 193
    sget-object v0, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "onePlus6"

    .line 195
    invoke-static {v0, v2, v2, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_a

    .line 196
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 197
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 200
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "key_back_double_tap_action"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_b

    .line 201
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 204
    :cond_b
    new-instance v0, Lcom/ice/box/fragments/OP_Remap$6;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Remap$6;-><init>(Lcom/ice/box/fragments/OP_Remap;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_5
    const-string p1, "tweaks_custom_fingerprint_long_app"

    .line 223
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Remap;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 224
    sget-object v0, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 225
    sget-object v0, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const-string v0, "onePlus6"

    .line 227
    invoke-static {v0, v2, v2, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_c

    .line 228
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 229
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 232
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_fingerprint_long_press_action"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v4, :cond_d

    .line 233
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Remap;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 236
    :cond_d
    new-instance v0, Lcom/ice/box/fragments/OP_Remap$7;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Remap$7;-><init>(Lcom/ice/box/fragments/OP_Remap;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_6
    return-void
.end method
