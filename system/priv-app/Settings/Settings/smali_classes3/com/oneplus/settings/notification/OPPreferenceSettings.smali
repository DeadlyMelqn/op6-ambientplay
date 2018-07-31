.class public Lcom/oneplus/settings/notification/OPPreferenceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPPreferenceSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPPreferenceSettings$1;
    }
.end annotation


# static fields
.field private static final AM_7:I = 0x1808580

.field private static final DIALOG_TURN_OFF_TIME:I = 0x1

.field private static final DIALOG_TURN_ON_TIME:I = 0x0

.field private static final DND_MODE_ENABLED_KEY:Ljava/lang/String; = "dnd_mode_enabled"

.field private static final INVALID_TIME:I = -0x1

.field private static final KEY_PREFERENCE_SETTINGS_CUSTOM_TIME:Ljava/lang/String; = "preference_settings_custom_time"

.field private static final KEY_PREFERENCE_SETTINGS_TURN_OFF_TIME:Ljava/lang/String; = "preference_settings_turn_off_time"

.field private static final KEY_PREFERENCE_SETTINGS_TURN_ON:Ljava/lang/String; = "preference_settings_turn_on"

.field private static final KEY_PREFERENCE_SETTINGS_TURN_ON_TIME:Ljava/lang/String; = "preference_settings_turn_on_time"

.field private static final PM_10:I = 0x4b87f00

.field private static final PREFERENCE_SETTINGS_CUSTOM_TIME_ENABLED_KEY:Ljava/lang/String; = "preference_settings_custom_time_enabled"

.field private static final PREFERENCE_SETTINGS_MODE_KEY:Ljava/lang/String; = "preference_settings_mode"

.field private static final PREFERENCE_SETTINGS_TURN_OFF_TIME_VALUE:Ljava/lang/String; = "preference_settings_turn_off_time_value"

.field private static final PREFERENCE_SETTINGS_TURN_ON_TIME_VALUE:Ljava/lang/String; = "preference_settings_turn_on_time_value"

.field private static final TAG:Ljava/lang/String; = "OPPreferenceSettings"


# instance fields
.field private context:Landroid/content/Context;

.field mContentObserver:Landroid/database/ContentObserver;

.field private mPreferenceSettingsCustomTimeSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mPreferenceSettingsManualOpenSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mTimeFormatter:Ljava/text/DateFormat;

.field private mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

.field private mTurnOnTimePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsManualOpenSwitch:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/settings/notification/OPPreferenceSettings;Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;
    .param p1, "localTime"    # Ljava/time/LocalTime;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Ljava/time/LocalTime;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/oneplus/settings/notification/OPPreferenceSettings;)Ljava/time/LocalTime;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/oneplus/settings/notification/OPPreferenceSettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/notification/OPPreferenceSettings;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->isImmediatelyPreferenceSettings()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/oneplus/settings/notification/OPPreferenceSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/notification/OPPreferenceSettings$1;-><init>(Lcom/oneplus/settings/notification/OPPreferenceSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mContentObserver:Landroid/database/ContentObserver;

    .line 34
    return-void
.end method

.method private getCustomEndTime()Ljava/time/LocalTime;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 153
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preference_settings_turn_off_time_value"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 154
    .local v0, "startTimeValue":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 155
    const-wide/32 v0, 0x1808580

    .line 158
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    return-object v2
.end method

.method private getCustomStartTime()Ljava/time/LocalTime;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 143
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "preference_settings_turn_on_time_value"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 144
    .local v0, "startTimeValue":J
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 145
    const-wide/32 v0, 0x4b87f00

    .line 148
    :cond_0
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    return-object v2
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 4
    .param p1, "localTime"    # Ljava/time/LocalTime;

    .prologue
    const/4 v3, 0x0

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 269
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 270
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 271
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 272
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 273
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 274
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isImmediatelyPreferenceSettings()V
    .locals 15

    .prologue
    .line 163
    iget-object v12, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/oneplus/settings/utils/OPUtils;->getPreferenceSettingsCustomTimeEnable(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 164
    iget-object v12, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/oneplus/settings/utils/OPUtils;->getPreferenceSettingsCustomStartTime(Landroid/content/Context;)J

    move-result-wide v10

    .line 165
    .local v10, "startTime":J
    iget-object v12, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    invoke-static {v12}, Lcom/oneplus/settings/utils/OPUtils;->getPreferenceSettingsCustomEndTime(Landroid/content/Context;)J

    move-result-wide v4

    .line 166
    .local v4, "endTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, "c":Ljava/util/Calendar;
    const/16 v12, 0xb

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 168
    .local v6, "mHour":I
    const/16 v12, 0xc

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 169
    .local v8, "mMinute":I
    const/16 v12, 0xd

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 170
    .local v9, "mSecond":I
    const/16 v12, 0xe

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 171
    .local v7, "mMillisecond":I
    mul-int/lit8 v12, v6, 0x3c

    add-int/2addr v12, v8

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v12, v9

    mul-int/lit16 v12, v12, 0x3e8

    add-int/2addr v12, v7

    int-to-long v2, v12

    .line 172
    .local v2, "currentTime":J
    const-string/jumbo v12, "OPPreferenceSettings isImmediatelyPreferenceSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Settings Receiver startTime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string/jumbo v12, "OPPreferenceSettings isImmediatelyPreferenceSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Settings Receiver endTime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string/jumbo v12, "OPPreferenceSettings isImmediatelyPreferenceSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Settings Receiver currentTime = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, "isNextDay":Z
    cmp-long v12, v10, v4

    if-lez v12, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 179
    :cond_0
    if-nez v1, :cond_3

    .line 180
    cmp-long v12, v10, v2

    if-gez v12, :cond_2

    cmp-long v12, v2, v4

    if-gez v12, :cond_2

    .line 181
    iget-object v12, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "dnd_mode_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "isNextDay":Z
    .end local v2    # "currentTime":J
    .end local v4    # "endTime":J
    .end local v6    # "mHour":I
    .end local v7    # "mMillisecond":I
    .end local v8    # "mMinute":I
    .end local v9    # "mSecond":I
    .end local v10    # "startTime":J
    :cond_1
    :goto_0
    return-void

    .line 183
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v1    # "isNextDay":Z
    .restart local v2    # "currentTime":J
    .restart local v4    # "endTime":J
    .restart local v6    # "mHour":I
    .restart local v7    # "mMillisecond":I
    .restart local v8    # "mMinute":I
    .restart local v9    # "mSecond":I
    .restart local v10    # "startTime":J
    :cond_2
    iget-object v12, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "dnd_mode_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 186
    :cond_3
    cmp-long v12, v4, v2

    if-gez v12, :cond_4

    cmp-long v12, v2, v10

    if-ltz v12, :cond_5

    .line 187
    :cond_4
    iget-object v12, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "dnd_mode_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 189
    :cond_5
    iget-object v12, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "dnd_mode_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 308
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->finish()V

    .line 71
    :cond_0
    const v0, 0x7f080066

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    .line 73
    const-string/jumbo v0, "preference_settings_turn_on"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsManualOpenSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsManualOpenSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    const-string/jumbo v0, "preference_settings_custom_time"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsCustomTimeSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsCustomTimeSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    const-string/jumbo v0, "preference_settings_turn_on_time"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    .line 78
    const-string/jumbo v0, "preference_settings_turn_off_time"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTimeFormatter:Ljava/text/DateFormat;

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 81
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    .line 197
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 199
    :cond_0
    if-nez p1, :cond_1

    .line 200
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v6

    .line 205
    .local v6, "initialTime":Ljava/time/LocalTime;
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 206
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 208
    .local v5, "use24HourFormat":Z
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 210
    new-instance v2, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/notification/OPPreferenceSettings$2;-><init>(Lcom/oneplus/settings/notification/OPPreferenceSettings;I)V

    .line 261
    invoke-virtual {v6}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {v6}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 208
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 202
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "use24HourFormat":Z
    .end local v6    # "initialTime":Ljava/time/LocalTime;
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v6

    .restart local v6    # "initialTime":Ljava/time/LocalTime;
    goto :goto_0

    .line 264
    .end local v6    # "initialTime":Ljava/time/LocalTime;
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 279
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 280
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "preference_settings_turn_on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 281
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 282
    .local v1, "enabled":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dnd_mode_enabled"

    if-eqz v1, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "preference_settings_custom_time_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 284
    .local v0, "customTimeEnabled":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->setPreferenceSettingsCustomCancel(Landroid/content/Context;Z)V

    .line 286
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/oneplus/settings/utils/OPUtils;->setPreferenceSettingsCustomCancel(Landroid/content/Context;Z)V

    .line 287
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->setEnablePreferenceSettingsCustom(Landroid/content/Context;)V

    .line 302
    .end local v0    # "customTimeEnabled":Z
    .end local v1    # "enabled":Z
    :cond_0
    :goto_2
    return v4

    .restart local v1    # "enabled":Z
    :cond_1
    move v3, v5

    .line 282
    goto :goto_0

    .line 283
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "customTimeEnabled":Z
    goto :goto_1

    .line 289
    .end local v0    # "customTimeEnabled":Z
    .end local v1    # "enabled":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v3, "preference_settings_custom_time"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 291
    .restart local v1    # "enabled":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "preference_settings_custom_time_enabled"

    if-eqz v1, :cond_4

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 292
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 293
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 294
    if-eqz v1, :cond_5

    .line 295
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->setEnablePreferenceSettingsCustom(Landroid/content/Context;)V

    .line 296
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->isImmediatelyPreferenceSettings()V

    goto :goto_2

    :cond_4
    move v3, v5

    .line 291
    goto :goto_3

    .line 298
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->setPreferenceSettingsCustomCancel(Landroid/content/Context;Z)V

    .line 299
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/oneplus/settings/utils/OPUtils;->setPreferenceSettingsCustomCancel(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 130
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "preference_settings_turn_on_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->showDialog(I)V

    .line 133
    return v2

    .line 134
    :cond_0
    const-string/jumbo v1, "preference_settings_turn_off_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->showDialog(I)V

    .line 136
    return v2

    .line 138
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "dnd_mode_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 107
    .local v2, "value":I
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsManualOpenSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 108
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsManualOpenSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "preference_settings_custom_time_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 111
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsCustomTimeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_1

    .line 112
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mPreferenceSettingsCustomTimeSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    iget-object v6, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 114
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    if-eqz v2, :cond_5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 116
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    .line 117
    .local v1, "startTime":Ljava/time/LocalTime;
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 119
    .local v0, "endTime":Ljava/time/LocalTime;
    iget-object v3, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    return-void

    .end local v0    # "endTime":Ljava/time/LocalTime;
    .end local v1    # "startTime":Ljava/time/LocalTime;
    :cond_2
    move v3, v5

    .line 108
    goto :goto_0

    :cond_3
    move v3, v5

    .line 112
    goto :goto_1

    :cond_4
    move v3, v5

    .line 113
    goto :goto_2

    :cond_5
    move v4, v5

    .line 114
    goto :goto_3
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dnd_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 125
    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPPreferenceSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPPreferenceSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 126
    return-void
.end method
