.class public Lcom/oneplus/settings/better/OPNightMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNightMode.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/better/OPNightMode$1;
    }
.end annotation


# static fields
.field private static final AUTO_ACTIVATE_CUSTOMIZED_VALUE:I = 0x2

.field private static final DIALOG_TURN_OFF_TIME:I = 0x1

.field private static final DIALOG_TURN_ON_TIME:I = 0x0

.field private static final KEY_AUTO_ACTIVATE:Ljava/lang/String; = "auto_activate"

.field private static final KEY_NIGHT_MODE_ENABLED_OP:Ljava/lang/String; = "night_mode_enabled"

.field private static final KEY_NIGHT_MODE_LEVEL_OP:Ljava/lang/String; = "night_mode_level_op"

.field private static final KEY_NIGHT_MODE_SUMMARY:Ljava/lang/String; = "night_mode_summary"

.field private static final KEY_SET_TIME:Ljava/lang/String; = "set_time"

.field private static final KEY_TURN_OFF_TIME:Ljava/lang/String; = "turn_off_time"

.field private static final KEY_TURN_ON_TIME:Ljava/lang/String; = "turn_on_time"

.field private static final NEVER_AUTO_VALUE:I = 0x0

.field private static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final SUNRISE_SUNSET_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPNightMode"


# instance fields
.field private isSupportReadingMode:Z

.field private mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

.field private mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

.field private mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

.field private mSetTimePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mTimeFormatter:Ljava/text/DateFormat;

.field private mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

.field private mTurnOnTimePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/NightDisplayController;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPNightMode;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPNightMode;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPNightMode;

    .prologue
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/better/OPNightMode;

    .prologue
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 305
    new-instance v0, Lcom/oneplus/settings/better/OPNightMode$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPNightMode$1;-><init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 42
    return-void
.end method

.method private convertAutoMode(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    return v0

    .line 111
    :cond_0
    if-ne p1, v1, :cond_1

    .line 112
    const/4 v0, 0x2

    return v0

    .line 114
    :cond_1
    return v1
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 4
    .param p1, "localTime"    # Ljava/time/LocalTime;

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 250
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 251
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 252
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 255
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAutoActivateModePreferenceDescription(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 166
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    .end local v0    # "entries":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 327
    const/16 v0, 0x270f

    return v0
.end method

.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 154
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3
    .param p1, "autoMode"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 161
    .local v0, "showCustomSchedule":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 163
    return-void

    .line 160
    .end local v0    # "showCustomSchedule":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "showCustomSchedule":Z
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f080060

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "oem.read_mode.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    .line 77
    new-instance v2, Lcom/android/internal/app/NightDisplayController;

    invoke-direct {v2, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 78
    const-string/jumbo v2, "night_mode_enabled"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 79
    const-string/jumbo v2, "auto_activate"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    .line 80
    const-string/jumbo v2, "set_time"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mSetTimePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 81
    const-string/jumbo v2, "turn_on_time"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    .line 82
    const-string/jumbo v2, "turn_off_time"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    .line 83
    const-string/jumbo v2, "night_mode_summary"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/WallOfTextPreference;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

    .line 84
    const-string/jumbo v2, "night_mode_level_op"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    .line 85
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    .line 97
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 98
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    .line 100
    new-instance v2, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v2, v3}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    .line 101
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "reading_mode_status"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v1, 0x1

    .line 102
    .local v1, "readingmodeEnbale":Z
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 103
    iget-boolean v2, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v2, :cond_2

    .line 104
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v4, 0x7f0f0421

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/WallOfTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    :cond_2
    return-void

    .line 101
    .end local v1    # "readingmodeEnbale":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "readingmodeEnbale":Z
    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    .line 202
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 204
    :cond_0
    if-nez p1, :cond_1

    .line 205
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v6

    .line 210
    .local v6, "initialTime":Ljava/time/LocalTime;
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 211
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 213
    .local v5, "use24HourFormat":Z
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 215
    new-instance v2, Lcom/oneplus/settings/better/OPNightMode$2;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/better/OPNightMode$2;-><init>(Lcom/oneplus/settings/better/OPNightMode;I)V

    .line 242
    invoke-virtual {v6}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {v6}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 213
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 207
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "use24HourFormat":Z
    .end local v6    # "initialTime":Ljava/time/LocalTime;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v6

    .restart local v6    # "initialTime":Ljava/time/LocalTime;
    goto :goto_0

    .line 245
    .end local v6    # "initialTime":Ljava/time/LocalTime;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "night_mode_enabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 177
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 184
    .end local v0    # "enabled":Z
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 178
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "auto_activate"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 179
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 180
    .local v2, "value":I
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/NightDisplayController;->setAutoMode(I)Z

    .line 181
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "turn_on_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    .line 192
    return v2

    .line 193
    :cond_0
    const-string/jumbo v1, "turn_off_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    .line 195
    return v2

    .line 197
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 272
    if-nez p3, :cond_0

    return-void

    .line 275
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p2, 0x84

    add-int/lit8 v1, v1, -0x5a

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 281
    const-string/jumbo v1, "oem_nightmode_progress_status"

    const/4 v2, -0x2

    .line 280
    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 283
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p2, 0x84

    add-int/lit8 v1, v1, -0x38

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 120
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onActivated(Z)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onAutoModeChanged(I)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "oem_nightmode_progress_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 130
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 133
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "reading_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 133
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 136
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    .line 136
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 139
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    .line 293
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 147
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "oem_nightmode_progress_status"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, -0x2

    .line 297
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 301
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/16 v1, -0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    .line 303
    return-void
.end method
