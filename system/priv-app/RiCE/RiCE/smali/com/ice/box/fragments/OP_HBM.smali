.class public Lcom/ice/box/fragments/OP_HBM;
.super Landroid/preference/PreferenceFragment;
.source "OP_HBM.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field checked:Z

.field filterPref:Landroid/preference/Preference;

.field private hbmOnReceiver:Landroid/content/BroadcastReceiver;

.field private lightThresholdDialog:Landroid/app/AlertDialog;

.field private lightThresholdProgress:I

.field private lightThresholdSeek:Landroid/widget/SeekBar;

.field private final lightThresholdSeekMax:I

.field private lightThresholdValue:Landroid/widget/TextView;

.field private seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field private sharedPref:Landroid/content/SharedPreferences;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/16 v0, 0x4e20

    .line 42
    iput v0, p0, Lcom/ice/box/fragments/OP_HBM;->lightThresholdSeekMax:I

    .line 205
    new-instance v0, Lcom/ice/box/fragments/OP_HBM$4;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/OP_HBM$4;-><init>(Lcom/ice/box/fragments/OP_HBM;)V

    iput-object v0, p0, Lcom/ice/box/fragments/OP_HBM;->hbmOnReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/OP_HBM;)Landroid/content/SharedPreferences;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 46
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const p1, 0x7f13000e

    .line 48
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_HBM;->addPreferencesFromResource(I)V

    .line 50
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/OP_HBM;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 51
    new-instance p1, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/OP_HBM;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string p1, "current_lux_reading"

    .line 54
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v1, "hbm_turnon"

    .line 57
    invoke-virtual {p0, v1}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 58
    iget-object v2, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "hbm_turnon"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v1, :cond_0

    .line 60
    new-instance v2, Lcom/ice/box/fragments/OP_HBM$1;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_HBM$1;-><init>(Lcom/ice/box/fragments/OP_HBM;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v1, "hbm_autostart"

    .line 77
    invoke-virtual {p0, v1}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 78
    iget-object v2, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "hbm_autostart"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v1, :cond_1

    .line 80
    new-instance v2, Lcom/ice/box/fragments/OP_HBM$2;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/OP_HBM$2;-><init>(Lcom/ice/box/fragments/OP_HBM;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string v2, "hbm_bootstart"

    .line 101
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 102
    iget-object v3, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v4, "hbm_bootstart"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v2, :cond_2

    .line 104
    new-instance v3, Lcom/ice/box/fragments/OP_HBM$3;

    invoke-direct {v3, p0}, Lcom/ice/box/fragments/OP_HBM$3;-><init>(Lcom/ice/box/fragments/OP_HBM;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string v3, "onePlus6"

    const/4 v4, 0x1

    .line 116
    invoke-static {v3, v0, v0, v4}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v3

    if-nez v3, :cond_3

    const v3, 0x7f1000e6

    .line 118
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/OP_HBM;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 121
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/OP_HBM;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    const-string v1, "hbm_threshold"

    .line 124
    invoke-virtual {p0, v1}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 125
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/OP_HBM;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 129
    :cond_3
    invoke-static {}, Lcom/ice/box/helpers/RootUtils;->isRootGranted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "High Brightness Mode Requires ROOT"

    .line 131
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "Please Grant ROOT Permissions"

    .line 132
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "hbm_turnon"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "hbm_autostart"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "hbm_bootstart"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "hbm_threshold"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "divider3"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "divider4"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "divider5"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "divider6"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 198
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/ice/box/fragments/OP_HBM;->hbmOnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 190
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcom/ice/box/fragments/OP_HBM;->hbmOnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "dataForHbmFragment"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    const-string p1, "hbm_turnon"

    .line 148
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "hbm_turnon"

    .line 149
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 150
    iget-object v1, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "hbm_turnon"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    const-string p1, "hbm_autostart"

    .line 152
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string p1, "hbm_autostart"

    .line 153
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 154
    iget-object v2, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "hbm_autostart"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 156
    new-instance p1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/ice/box/services/LightSensorService;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "enabled"

    .line 157
    iget-object v3, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v4, "hbm_autostart"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    iget-object v2, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "hbm_autostart"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "sticky"

    .line 159
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    const-string v2, "sticky"

    const/4 v3, 0x2

    .line 162
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    const-string p1, "hbm_bootstart"

    .line 166
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "hbm_autostart"

    .line 167
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 168
    iget-object v2, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "hbm_autostart"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v2, "hbm_autostart"

    .line 169
    invoke-virtual {p0, v2}, Lcom/ice/box/fragments/OP_HBM;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 170
    iget-object v2, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "hbm_bootstart"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    const-string p1, "hbm_threshold"

    .line 172
    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 174
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    const-string p2, "hbm_threshold"

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/ice/box/services/LightSensorService;->thresholdValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-class v0, Lcom/ice/box/services/LightSensorService;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "enabled"

    .line 178
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "sticky"

    .line 179
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "luxthreshold"

    .line 180
    sget v0, Lcom/ice/box/services/LightSensorService;->thresholdValue:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/OP_HBM;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    iget-object p0, p0, Lcom/ice/box/fragments/OP_HBM;->sharedPref:Landroid/content/SharedPreferences;

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "hbm_autostart"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "ICEDEBUG"

    .line 183
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "hbm threshold: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/ice/box/services/LightSensorService;->thresholdValue:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
