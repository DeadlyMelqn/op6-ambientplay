.class public Lcom/ice/box/fragments/Buttons;
.super Landroid/preference/PreferenceFragment;
.source "Buttons.java"


# instance fields
.field backRemapValue:I

.field backSavedValue:Ljava/lang/String;

.field bixbyRemapValue:I

.field bixbySavedValue:Ljava/lang/String;

.field bixbyScreenOffRemapValue:I

.field bixbyScreenOffValue:Ljava/lang/String;

.field fpDownRemapValue:I

.field fpDownSavedValue:Ljava/lang/String;

.field fpUpRemapValue:I

.field fpUpSavedValue:Ljava/lang/String;

.field homeRemapValue:I

.field homeSavedValue:Ljava/lang/String;

.field homeScreenOffRemapValue:I

.field homeScreenOffSavedValue:Ljava/lang/String;

.field private isFreeVersion:Z

.field private mBackCustomApp:Landroid/preference/ListPreference;

.field private mBackHeader:Landroid/preference/PreferenceCategory;

.field private mBackRemap:Landroid/preference/ListPreference;

.field private mBixbyCustomApp:Landroid/preference/ListPreference;

.field private mBixbyHeader:Landroid/preference/PreferenceCategory;

.field private mBixbyRemap:Landroid/preference/ListPreference;

.field private mBixbyScreenOffRemap:Landroid/preference/ListPreference;

.field private mFpDownCustomApp:Landroid/preference/ListPreference;

.field private mFpDownRemap:Landroid/preference/ListPreference;

.field private mFpHeader:Landroid/preference/PreferenceCategory;

.field private mFpUpCustomApp:Landroid/preference/ListPreference;

.field private mFpUpRemap:Landroid/preference/ListPreference;

.field private mHomeCustomApp:Landroid/preference/ListPreference;

.field private mHomeHeader:Landroid/preference/PreferenceCategory;

.field private mHomeRemap:Landroid/preference/ListPreference;

.field private mHomeScreenOffRemap:Landroid/preference/ListPreference;

.field private mRecentsCustomApp:Landroid/preference/ListPreference;

.field private mRecentsHeader:Landroid/preference/PreferenceCategory;

.field private mRecentsRemap:Landroid/preference/ListPreference;

.field recentsRemapValue:I

.field recentsSavedValue:Ljava/lang/String;

.field sharedPref:Landroid/content/SharedPreferences;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ice/box/fragments/Buttons;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/Buttons;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/Buttons;->mBackCustomApp:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/Buttons;->mHomeCustomApp:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/Buttons;->mRecentsCustomApp:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/Buttons;->mFpUpCustomApp:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ice/box/fragments/Buttons;)Landroid/preference/ListPreference;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/ice/box/fragments/Buttons;->mFpDownCustomApp:Landroid/preference/ListPreference;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    .line 86
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130001

    .line 87
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->addPreferencesFromResource(I)V

    .line 89
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 90
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isFreeVersion"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/Buttons;->isFreeVersion:Z

    .line 91
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isMonthly"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 92
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isYearly"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 93
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isException"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 94
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "localStableVersion"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "localNightlyVersion"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v3, "isNightly"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 97
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v4, "isS8"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 98
    iget-object v4, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v5, "isICE"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 100
    iget-object v5, p0, Lcom/ice/box/fragments/Buttons;->sharedPref:Landroid/content/SharedPreferences;

    const-string v6, "licenseRating"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_bixby"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ice/box/fragments/Buttons;->bixbyRemapValue:I

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_bixby_app"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->bixbySavedValue:Ljava/lang/String;

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_back"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ice/box/fragments/Buttons;->backRemapValue:I

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_back_app"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->backSavedValue:Ljava/lang/String;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_home"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ice/box/fragments/Buttons;->homeRemapValue:I

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_home_app"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->homeSavedValue:Ljava/lang/String;

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_recents"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ice/box/fragments/Buttons;->recentsRemapValue:I

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_recents_app"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->recentsSavedValue:Ljava/lang/String;

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_home_screen_off"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ice/box/fragments/Buttons;->homeScreenOffRemapValue:I

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_fp_down_action"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ice/box/fragments/Buttons;->fpDownRemapValue:I

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_fp_down_app"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->fpDownSavedValue:Ljava/lang/String;

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_fp_up_action"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ice/box/fragments/Buttons;->fpUpRemapValue:I

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_fp_up_app"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->fpUpSavedValue:Ljava/lang/String;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tweaks_custom_bixby_screen_off"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/ice/box/fragments/Buttons;->bixbyScreenOffRemapValue:I

    const-string v6, "tweaks_custom_bixby"

    .line 128
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->mBixbyRemap:Landroid/preference/ListPreference;

    const-string v6, "tweaks_custom_bixby_screen_off"

    .line 129
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->mBixbyScreenOffRemap:Landroid/preference/ListPreference;

    const-string v6, "tweaks_custom_bixby_app"

    .line 130
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    const-string v6, "bixby_header"

    .line 131
    invoke-virtual {p0, v6}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/ice/box/fragments/Buttons;->mBixbyHeader:Landroid/preference/PreferenceCategory;

    .line 134
    iget-object v6, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    sget-object v7, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 135
    iget-object v6, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    sget-object v7, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz v4, :cond_c

    const/4 v4, 0x3

    if-eqz v3, :cond_1

    const v3, 0x7f1001dd

    const v6, 0x7f100037

    if-eqz v1, :cond_0

    const/16 p1, 0xd

    if-ge v0, p1, :cond_1

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/ice/box/fragments/Buttons;->mBixbyRemap:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyHeader:Landroid/preference/PreferenceCategory;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ge p1, v4, :cond_1

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/ice/box/fragments/Buttons;->mBixbyRemap:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyHeader:Landroid/preference/PreferenceCategory;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const p1, 0x7f1000de

    const/16 v0, 0x10

    if-ge v5, v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyRemap:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyRemap:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 161
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyRemap:Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 163
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 164
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 166
    :cond_2
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyRemap:Landroid/preference/ListPreference;

    new-instance v3, Lcom/ice/box/fragments/Buttons$1;

    invoke-direct {v3, p0}, Lcom/ice/box/fragments/Buttons$1;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    :goto_1
    iget v1, p0, Lcom/ice/box/fragments/Buttons;->bixbyRemapValue:I

    if-eq v1, v4, :cond_3

    .line 200
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 201
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 203
    :cond_3
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyCustomApp:Landroid/preference/ListPreference;

    new-instance v3, Lcom/ice/box/fragments/Buttons$2;

    invoke-direct {v3, p0}, Lcom/ice/box/fragments/Buttons$2;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    if-ge v5, v0, :cond_4

    .line 220
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyScreenOffRemap:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 221
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyScreenOffRemap:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 222
    iget-object v1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyScreenOffRemap:Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 224
    :cond_4
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBixbyScreenOffRemap:Landroid/preference/ListPreference;

    new-instance v1, Lcom/ice/box/fragments/Buttons$3;

    invoke-direct {v1, p0}, Lcom/ice/box/fragments/Buttons$3;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_2
    const-string p1, "tweaks_custom_back"

    .line 251
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackRemap:Landroid/preference/ListPreference;

    const-string p1, "tweaks_custom_back_app"

    .line 252
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackCustomApp:Landroid/preference/ListPreference;

    const-string p1, "back_header"

    .line 253
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackHeader:Landroid/preference/PreferenceCategory;

    .line 256
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackCustomApp:Landroid/preference/ListPreference;

    sget-object v1, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 257
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackCustomApp:Landroid/preference/ListPreference;

    sget-object v1, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 259
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackRemap:Landroid/preference/ListPreference;

    new-instance v1, Lcom/ice/box/fragments/Buttons$4;

    invoke-direct {v1, p0}, Lcom/ice/box/fragments/Buttons$4;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 289
    iget p1, p0, Lcom/ice/box/fragments/Buttons;->backRemapValue:I

    if-eq p1, v4, :cond_5

    .line 290
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 291
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 294
    :cond_5
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mBackCustomApp:Landroid/preference/ListPreference;

    new-instance v1, Lcom/ice/box/fragments/Buttons$5;

    invoke-direct {v1, p0}, Lcom/ice/box/fragments/Buttons$5;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "tweaks_custom_home"

    .line 312
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeRemap:Landroid/preference/ListPreference;

    const-string p1, "tweaks_custom_home_app"

    .line 313
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeCustomApp:Landroid/preference/ListPreference;

    const-string p1, "home_header"

    .line 314
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeHeader:Landroid/preference/PreferenceCategory;

    .line 317
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeCustomApp:Landroid/preference/ListPreference;

    sget-object v1, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeCustomApp:Landroid/preference/ListPreference;

    sget-object v1, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 321
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeRemap:Landroid/preference/ListPreference;

    new-instance v1, Lcom/ice/box/fragments/Buttons$6;

    invoke-direct {v1, p0}, Lcom/ice/box/fragments/Buttons$6;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 351
    iget p1, p0, Lcom/ice/box/fragments/Buttons;->homeRemapValue:I

    if-eq p1, v4, :cond_6

    .line 352
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 353
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 356
    :cond_6
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeCustomApp:Landroid/preference/ListPreference;

    new-instance v1, Lcom/ice/box/fragments/Buttons$7;

    invoke-direct {v1, p0}, Lcom/ice/box/fragments/Buttons$7;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "tweaks_custom_recents"

    .line 373
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsRemap:Landroid/preference/ListPreference;

    const-string p1, "tweaks_custom_recents_app"

    .line 374
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsCustomApp:Landroid/preference/ListPreference;

    const-string p1, "recents_header"

    .line 375
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsHeader:Landroid/preference/PreferenceCategory;

    .line 378
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsCustomApp:Landroid/preference/ListPreference;

    sget-object v1, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 379
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsCustomApp:Landroid/preference/ListPreference;

    sget-object v1, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 382
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsRemap:Landroid/preference/ListPreference;

    new-instance v1, Lcom/ice/box/fragments/Buttons$8;

    invoke-direct {v1, p0}, Lcom/ice/box/fragments/Buttons$8;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 413
    iget p1, p0, Lcom/ice/box/fragments/Buttons;->recentsRemapValue:I

    if-eq p1, v4, :cond_7

    .line 414
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 415
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 418
    :cond_7
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mRecentsCustomApp:Landroid/preference/ListPreference;

    new-instance v1, Lcom/ice/box/fragments/Buttons$9;

    invoke-direct {v1, p0}, Lcom/ice/box/fragments/Buttons$9;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "tweaks_custom_fp_up_action"

    .line 437
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpUpRemap:Landroid/preference/ListPreference;

    const-string p1, "tweaks_custom_fp_up_app"

    .line 438
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpUpCustomApp:Landroid/preference/ListPreference;

    const-string p1, "fp_header"

    .line 439
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpHeader:Landroid/preference/PreferenceCategory;

    .line 442
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpUpCustomApp:Landroid/preference/ListPreference;

    sget-object v1, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 443
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpUpCustomApp:Landroid/preference/ListPreference;

    sget-object v1, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const p1, 0x7f030030

    const v1, 0x7f03002f

    if-ge v5, v0, :cond_8

    .line 449
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpUpRemap:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 450
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpUpRemap:Landroid/preference/ListPreference;

    invoke-virtual {v3, p1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 452
    :cond_8
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpUpRemap:Landroid/preference/ListPreference;

    new-instance v6, Lcom/ice/box/fragments/Buttons$10;

    invoke-direct {v6, p0}, Lcom/ice/box/fragments/Buttons$10;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 482
    iget v3, p0, Lcom/ice/box/fragments/Buttons;->fpUpRemapValue:I

    if-eq v3, v4, :cond_9

    .line 483
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpUpCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 484
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpUpCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 487
    :cond_9
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpUpCustomApp:Landroid/preference/ListPreference;

    new-instance v6, Lcom/ice/box/fragments/Buttons$11;

    invoke-direct {v6, p0}, Lcom/ice/box/fragments/Buttons$11;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v3, "tweaks_custom_fp_down_action"

    .line 504
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpDownRemap:Landroid/preference/ListPreference;

    const-string v3, "tweaks_custom_fp_down_app"

    .line 505
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpDownCustomApp:Landroid/preference/ListPreference;

    const-string v3, "fp_header"

    .line 506
    invoke-virtual {p0, v3}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpHeader:Landroid/preference/PreferenceCategory;

    .line 509
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpDownCustomApp:Landroid/preference/ListPreference;

    sget-object v6, Lcom/ice/box/SplashActivity;->entries:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 510
    iget-object v3, p0, Lcom/ice/box/fragments/Buttons;->mFpDownCustomApp:Landroid/preference/ListPreference;

    sget-object v6, Lcom/ice/box/SplashActivity;->entryValues:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-ge v5, v0, :cond_a

    .line 515
    iget-object v0, p0, Lcom/ice/box/fragments/Buttons;->mFpDownRemap:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 516
    iget-object v0, p0, Lcom/ice/box/fragments/Buttons;->mFpDownRemap:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 518
    :cond_a
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpDownRemap:Landroid/preference/ListPreference;

    new-instance v0, Lcom/ice/box/fragments/Buttons$12;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/Buttons$12;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 549
    iget p1, p0, Lcom/ice/box/fragments/Buttons;->fpDownRemapValue:I

    if-eq p1, v4, :cond_b

    .line 550
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpDownCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 551
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpDownCustomApp:Landroid/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setSelectable(Z)V

    .line 554
    :cond_b
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mFpDownCustomApp:Landroid/preference/ListPreference;

    new-instance v0, Lcom/ice/box/fragments/Buttons$13;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/Buttons$13;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "tweaks_custom_home_screen_off"

    .line 571
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/Buttons;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeScreenOffRemap:Landroid/preference/ListPreference;

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/Buttons;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/ice/box/fragments/Buttons;->mHomeScreenOffRemap:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 575
    iget-object p1, p0, Lcom/ice/box/fragments/Buttons;->mHomeScreenOffRemap:Landroid/preference/ListPreference;

    new-instance v0, Lcom/ice/box/fragments/Buttons$14;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/Buttons$14;-><init>(Lcom/ice/box/fragments/Buttons;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_c
    return-void
.end method
