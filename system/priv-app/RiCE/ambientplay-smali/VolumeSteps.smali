.class public Lcom/android/settings/aoscp/sound/VolumeSteps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VolumeSteps.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final telephony_set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final volume_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAvailableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    .line 51
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    const-string/jumbo v1, "volume_steps_alarm"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    const-string/jumbo v1, "volume_steps_dtmf"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    const-string/jumbo v1, "volume_steps_music"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    const-string/jumbo v1, "volume_steps_notification"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    const-string/jumbo v1, "volume_steps_ring"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    const-string/jumbo v1, "volume_steps_system"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    const-string/jumbo v1, "volume_steps_voice_call"

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->telephony_set:Ljava/util/Set;

    .line 63
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->telephony_set:Ljava/util/Set;

    const-string/jumbo v1, "volume_steps_dtmf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->telephony_set:Ljava/util/Set;

    const-string/jumbo v1, "volume_steps_ring"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->telephony_set:Ljava/util/Set;

    const-string/jumbo v1, "volume_steps_voice_call"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/aoscp/sound/VolumeSteps;->mAvailableKeys:Ljava/util/Set;

    .line 42
    return-void
.end method

.method private checkForFirstRun()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-direct {p0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getDefaultStepsPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "first_run"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "isFirstRun":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getDefaultStepsPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "first_run"

    const-string/jumbo v3, "first_run_initialized"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private commitVolumeSteps(Landroid/support/v7/preference/Preference;I)V
    .locals 3
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "steps"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    iget-object v1, p0, Lcom/android/settings/aoscp/sound/VolumeSteps;->mAudioManager:Landroid/media/AudioManager;

    sget-object v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/media/AudioManager;->setStreamMaxVolume(II)V

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/settings/aoscp/sound/VolumeSteps;->updateVolumeStepPrefs(Landroid/support/v7/preference/Preference;I)V

    .line 193
    const-string/jumbo v0, "VolumeSteps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Volume steps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method private getDefaultSteps(Landroid/support/v7/preference/Preference;)I
    .locals 5
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 161
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/support/v7/preference/ListPreference;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 163
    :cond_0
    return v4

    .line 165
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getDefaultStepsPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 169
    return v4

    .line 171
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getDefaultStepsPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "volume_step_defaults"

    .line 147
    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private saveDefaultSteps(Landroid/support/v7/preference/Preference;I)V
    .locals 3
    .param p1, "volPref"    # Landroid/support/v7/preference/Preference;
    .param p2, "defaultSteps"    # I

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getDefaultStepsPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method private updateVolumeStepPrefs(Landroid/support/v7/preference/Preference;I)V
    .locals 2
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "steps"    # I

    .prologue
    .line 181
    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/support/v7/preference/ListPreference;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 182
    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    .line 184
    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 185
    .local v0, "listPref":Landroid/support/v7/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x150

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v15, 0x7f15009f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/aoscp/sound/VolumeSteps;->addPreferencesFromResource(I)V

    .line 76
    const-string/jumbo v15, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v11

    .line 79
    .local v11, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    sget-object v15, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->mAvailableKeys:Ljava/util/Set;

    .line 82
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v15

    if-eqz v15, :cond_1

    const/4 v6, 0x1

    .line 84
    .local v6, "isPhone":Z
    :goto_0
    if-nez v6, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->mAvailableKeys:Ljava/util/Set;

    sget-object v16, Lcom/android/settings/aoscp/sound/VolumeSteps;->telephony_set:Ljava/util/Set;

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 87
    sget-object v15, Lcom/android/settings/aoscp/sound/VolumeSteps;->telephony_set:Ljava/util/Set;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 88
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    .line 89
    .local v13, "toRemove":Landroid/support/v7/preference/Preference;
    if-eqz v13, :cond_0

    .line 90
    invoke-virtual {v11, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 82
    .end local v6    # "isPhone":Z
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "key$iterator":Ljava/util/Iterator;
    .end local v13    # "toRemove":Landroid/support/v7/preference/Preference;
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isPhone":Z
    goto :goto_0

    .line 96
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->checkForFirstRun()Z

    move-result v4

    .line 99
    .local v4, "firstRun":Z
    const v15, 0x7f120de4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "defEntry":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->mAvailableKeys:Ljava/util/Set;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "key$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 103
    .restart local v7    # "key":Ljava/lang/String;
    invoke-virtual {v11, v7}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 104
    .local v10, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v10, :cond_3

    instance-of v15, v10, Landroid/support/v7/preference/ListPreference;

    xor-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_3

    move-object v9, v10

    .line 107
    check-cast v9, Landroid/support/v7/preference/ListPreference;

    .line 108
    .local v9, "listPref":Landroid/support/v7/preference/ListPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/aoscp/sound/VolumeSteps;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v16, v0

    sget-object v15, Lcom/android/settings/aoscp/sound/VolumeSteps;->volume_map:Ljava/util/Map;

    invoke-interface {v15, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v12

    .line 109
    .local v12, "steps":I
    if-eqz v4, :cond_4

    .line 110
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/settings/aoscp/sound/VolumeSteps;->saveDefaultSteps(Landroid/support/v7/preference/Preference;I)V

    .line 112
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/aoscp/sound/VolumeSteps;->getDefaultSteps(Landroid/support/v7/preference/Preference;)I

    move-result v2

    .line 113
    .local v2, "defSteps":I
    invoke-virtual {v9}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v15, v15, 0x1

    new-array v3, v15, [Ljava/lang/CharSequence;

    .line 114
    .local v3, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v9}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    array-length v15, v15

    add-int/lit8 v15, v15, 0x1

    new-array v14, v15, [Ljava/lang/CharSequence;

    .line 116
    .local v14, "values":[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v15, v3

    if-ge v5, v15, :cond_6

    .line 117
    if-nez v5, :cond_5

    .line 118
    aput-object v1, v3, v5

    .line 119
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    .line 116
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 122
    :cond_5
    invoke-virtual {v9}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v15

    add-int/lit8 v16, v5, -0x1

    aget-object v15, v15, v16

    aput-object v15, v3, v5

    .line 123
    invoke-virtual {v9}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    add-int/lit8 v16, v5, -0x1

    aget-object v15, v15, v16

    aput-object v15, v14, v5

    goto :goto_4

    .line 125
    :cond_6
    invoke-virtual {v9, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v9, v14}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 127
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/android/settings/aoscp/sound/VolumeSteps;->updateVolumeStepPrefs(Landroid/support/v7/preference/Preference;I)V

    .line 128
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    .line 130
    .end local v2    # "defSteps":I
    .end local v3    # "entries":[Ljava/lang/CharSequence;
    .end local v5    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "listPref":Landroid/support/v7/preference/ListPreference;
    .end local v10    # "pref":Landroid/support/v7/preference/Preference;
    .end local v12    # "steps":I
    .end local v14    # "values":[Ljava/lang/CharSequence;
    :cond_7
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/aoscp/sound/VolumeSteps;->mAvailableKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/aoscp/sound/VolumeSteps;->commitVolumeSteps(Landroid/support/v7/preference/Preference;I)V

    .line 137
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
