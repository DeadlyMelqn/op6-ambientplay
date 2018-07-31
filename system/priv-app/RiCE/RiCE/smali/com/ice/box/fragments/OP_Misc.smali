.class public Lcom/ice/box/fragments/OP_Misc;
.super Landroid/preference/PreferenceFragment;
.source "OP_Misc.java"


# instance fields
.field private sharedPref:Landroid/content/SharedPreferences;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/OP_Misc;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/ice/box/fragments/OP_Misc;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 30
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Misc;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Misc;->sharedPref:Landroid/content/SharedPreferences;

    .line 32
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Misc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/OP_Misc;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    const p1, 0x7f130010

    .line 33
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Misc;->addPreferencesFromResource(I)V

    const-string p1, "tweaks_alternative_brightness"

    .line 36
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Misc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Misc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_alternative_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 38
    :goto_0
    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz p1, :cond_1

    .line 40
    new-instance v3, Lcom/ice/box/fragments/OP_Misc$1;

    invoke-direct {v3, p0, v0}, Lcom/ice/box/fragments/OP_Misc$1;-><init>(Lcom/ice/box/fragments/OP_Misc;Z)V

    invoke-virtual {p1, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 65
    :cond_1
    sget-boolean v0, Lcom/ice/box/MainActivity;->isICE:Z

    if-nez v0, :cond_2

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_Misc;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string p1, "apps_autorun"

    .line 68
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Misc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 69
    new-instance v0, Lcom/ice/box/fragments/OP_Misc$2;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Misc$2;-><init>(Lcom/ice/box/fragments/OP_Misc;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->isRootGranted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 77
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "Option requires root"

    .line 78
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    const-string p1, "advanced_dnd"

    .line 82
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Misc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 83
    new-instance v0, Lcom/ice/box/fragments/OP_Misc$3;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_Misc$3;-><init>(Lcom/ice/box/fragments/OP_Misc;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_avengers_clock"

    .line 93
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_Misc;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    const-string v0, ""

    .line 95
    invoke-static/range {v2 .. v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    :try_start_0
    const-string v3, "/system/priv-app/RiCE/cust_flag_clock"

    .line 97
    invoke-static/range {v3 .. v3}, Lcom/ice/box/helpers/RootUtils;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    :catch_0
    const-string v3, "ICEDEBUG"

    const-string v4, "avengers clock file not found"

    .line 99
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v3, "3"

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 105
    :cond_4
    invoke-static/range {v2 .. v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 108
    :goto_2
    invoke-virtual/range {v0 .. v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz p1, :cond_5

    .line 111
    new-instance v1, Lcom/ice/box/fragments/OP_Misc$4;

    invoke-direct {v1, p0, v0}, Lcom/ice/box/fragments/OP_Misc$4;-><init>(Lcom/ice/box/fragments/OP_Misc;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    return-void
.end method
