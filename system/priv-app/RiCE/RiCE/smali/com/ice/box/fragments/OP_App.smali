.class public Lcom/ice/box/fragments/OP_App;
.super Landroid/preference/PreferenceFragment;
.source "OP_App.java"


# instance fields
.field checkPref:Landroid/preference/SwitchPreference;

.field checked:Z

.field pref:Landroid/preference/Preference;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/OP_App;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ice/box/fragments/OP_App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 28
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13000c

    .line 29
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->addPreferencesFromResource(I)V

    .line 30
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    const-string p1, "tweaks_scramble_pin"

    .line 32
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    const-string p1, "tweaks_scramble_pin"

    .line 33
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->checkPref:Landroid/preference/SwitchPreference;

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "tweaks_scramble_pin"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/ice/box/fragments/OP_App;->checked:Z

    .line 35
    iget-object p1, p0, Lcom/ice/box/fragments/OP_App;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_App;->checked:Z

    invoke-virtual {p1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 36
    iget-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_App$1;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_App$1;-><init>(Lcom/ice/box/fragments/OP_App;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "tweaks_qs_lock"

    .line 52
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    const-string p1, "tweaks_qs_lock"

    .line 53
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->checkPref:Landroid/preference/SwitchPreference;

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_qs_lock"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/ice/box/fragments/OP_App;->checked:Z

    .line 55
    iget-object p1, p0, Lcom/ice/box/fragments/OP_App;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_App;->checked:Z

    invoke-virtual {p1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 56
    iget-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_App$2;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_App$2;-><init>(Lcom/ice/box/fragments/OP_App;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "onePlus6"

    const/16 v2, 0x26

    const/16 v3, 0x21

    .line 72
    invoke-static {p1, v2, v3, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result p1

    if-nez p1, :cond_2

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v2, "tweaks_secure_window"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v2, "tweaks_secure_window_divider"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v2, "general_header"

    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_2
    const-string p1, "tweaks_secure_window"

    .line 78
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    const-string p1, "tweaks_secure_window"

    .line 79
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->checkPref:Landroid/preference/SwitchPreference;

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_secure_window"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/ice/box/fragments/OP_App;->checked:Z

    .line 81
    iget-object p1, p0, Lcom/ice/box/fragments/OP_App;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/ice/box/fragments/OP_App;->checked:Z

    invoke-virtual {p1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 82
    iget-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    new-instance v2, Lcom/ice/box/fragments/OP_App$3;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_App$3;-><init>(Lcom/ice/box/fragments/OP_App;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_3
    const-string p1, "onePlus6"

    const/16 v2, 0xa

    const/16 v3, 0x15

    .line 99
    invoke-static {p1, v2, v3, v1}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "tweaks_hide_lockscreen_clock"

    .line 100
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5

    :cond_4
    const-string p1, "tweaks_hide_lockscreen_clock"

    .line 103
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    const-string p1, "tweaks_hide_lockscreen_clock"

    .line 104
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_App;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/OP_App;->checkPref:Landroid/preference/SwitchPreference;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_App;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "tweaks_hide_lockscreen_clock"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/ice/box/fragments/OP_App;->checked:Z

    .line 106
    iget-object p1, p0, Lcom/ice/box/fragments/OP_App;->checkPref:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/ice/box/fragments/OP_App;->checked:Z

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 107
    iget-object p1, p0, Lcom/ice/box/fragments/OP_App;->pref:Landroid/preference/Preference;

    new-instance v0, Lcom/ice/box/fragments/OP_App$4;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_App$4;-><init>(Lcom/ice/box/fragments/OP_App;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_5
    return-void
.end method
