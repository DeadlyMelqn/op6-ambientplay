.class public Lcom/android/settings/display/NightDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NightDisplaySettings.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DIALOG_END_TIME:I = 0x1

.field private static final DIALOG_START_TIME:I = 0x0

.field private static final KEY_NIGHT_DISPLAY_ACTIVATED:Ljava/lang/String; = "night_display_activated"

.field private static final KEY_NIGHT_DISPLAY_AUTO_MODE:Ljava/lang/String; = "night_display_auto_mode"

.field private static final KEY_NIGHT_DISPLAY_END_TIME:Ljava/lang/String; = "night_display_end_time"

.field private static final KEY_NIGHT_DISPLAY_START_TIME:Ljava/lang/String; = "night_display_start_time"

.field private static final KEY_NIGHT_DISPLAY_TEMPERATURE:Ljava/lang/String; = "night_display_temperature"


# instance fields
.field private mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

.field private mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mEndTimePreference:Landroid/support/v7/preference/Preference;

.field private mStartTimePreference:Landroid/support/v7/preference/Preference;

.field private mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method static synthetic -get0(Lcom/android/settings/display/NightDisplaySettings;)Lcom/android/internal/app/NightDisplayController;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/display/NightDisplaySettings;

    .prologue
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private convertTemperature(I)I
    .locals 1
    .param p1, "temperature"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getMaximumColorTemperature()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 4
    .param p1, "localTime"    # Ljava/time/LocalTime;

    .prologue
    const/4 v3, 0x0

    .line 206
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 207
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 208
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 209
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 212
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 248
    const/16 v0, 0x1e8

    return v0
.end method

.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/SeekBarPreference;->setEnabled(Z)V

    .line 189
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3
    .param p1, "autoMode"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    .line 196
    .local v0, "showCustomSchedule":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 197
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 198
    return-void

    .line 195
    .end local v0    # "showCustomSchedule":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "showCustomSchedule":Z
    goto :goto_0
.end method

.method public onColorTemperatureChanged(I)V
    .locals 2
    .param p1, "colorTemperature"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplaySettings;->convertTemperature(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 203
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/android/internal/app/NightDisplayController;

    invoke-direct {v1, v0}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 70
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    .line 71
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    iget-object v2, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/NightDisplayController;->getMinimumColorTemperature()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/display/NightDisplaySettings;->convertTemperature(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 75
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    .line 148
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 150
    :cond_0
    if-nez p1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v6

    .line 156
    .local v6, "initialTime":Ljava/time/LocalTime;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplaySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 157
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 158
    .local v5, "use24HourFormat":Z
    new-instance v0, Landroid/app/TimePickerDialog;

    new-instance v2, Lcom/android/settings/display/NightDisplaySettings$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/display/NightDisplaySettings$1;-><init>(Lcom/android/settings/display/NightDisplaySettings;I)V

    .line 168
    invoke-virtual {v6}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {v6}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 158
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 153
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "use24HourFormat":Z
    .end local v6    # "initialTime":Ljava/time/LocalTime;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v6

    .restart local v6    # "initialTime":Ljava/time/LocalTime;
    goto :goto_0

    .line 170
    .end local v6    # "initialTime":Ljava/time/LocalTime;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 87
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->addPreferencesFromResource(I)V

    .line 89
    const-string/jumbo v0, "night_display_auto_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    .line 90
    const-string/jumbo v0, "night_display_start_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    .line 91
    const-string/jumbo v0, "night_display_end_time"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    .line 92
    const-string/jumbo v0, "night_display_activated"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    .line 93
    const-string/jumbo v0, "night_display_temperature"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    .line 95
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 96
    const v2, 0x7f0f0928

    invoke-virtual {p0, v2}, Lcom/android/settings/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 97
    const v2, 0x7f0f0929

    invoke-virtual {p0, v2}, Lcom/android/settings/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 98
    const v2, 0x7f0f092a

    invoke-virtual {p0, v2}, Lcom/android/settings/display/NightDisplaySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 95
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 101
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 102
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 103
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 100
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplaySettings;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 2
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplaySettings;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mAutoModePreference:Landroid/support/v7/preference/DropDownPreference;

    if-ne p1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setAutoMode(I)Z

    move-result v0

    return v0

    .line 238
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mActivatedPreference:Landroid/support/v7/preference/TwoStatePreference;

    if-ne p1, v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    move-result v0

    return v0

    .line 240
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mTemperaturePreference:Lcom/android/settings/SeekBarPreference;

    if-ne p1, v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/display/NightDisplaySettings;->convertTemperature(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setColorTemperature(I)Z

    move-result v0

    return v0

    .line 243
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 136
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mStartTimePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    .line 138
    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mEndTimePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/settings/display/NightDisplaySettings;->showDialog(I)V

    .line 141
    return v1

    .line 143
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onActivated(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onAutoModeChanged(I)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onColorTemperatureChanged(I)V

    .line 123
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getColorMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/NightDisplaySettings;->onDisplayColorModeChanged(I)V

    .line 124
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 131
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 132
    return-void
.end method
