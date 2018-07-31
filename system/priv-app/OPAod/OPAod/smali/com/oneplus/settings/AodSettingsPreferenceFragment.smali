.class public Lcom/oneplus/settings/AodSettingsPreferenceFragment;
.super Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;
.source "AodSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DISPLAY_MODE:Ljava/lang/String; = "aod_mode"

.field private static final KEY_AUTO_WAKE_SCREEN:Ljava/lang/String; = "aod_auto_wake_screen"

.field private static final KEY_CLOCK_STYLE:Ljava/lang/String; = "aod_clock_style"

.field private static final KEY_DISPLAY_MODE:Ljava/lang/String; = "aod_display_mode"

.field private static final KEY_DISPLAY_PERIOD:Ljava/lang/String; = "aod_display_period"

.field private static final KEY_DISPLAY_TEXT:Ljava/lang/String; = "aod_display_text"

.field private static final KEY_MAIN_SCREEN:Ljava/lang/String; = "main_screen"

.field private static final KEY_SHOW_CLOCK_SWITCH_PREFERENCE:Ljava/lang/String; = "aod_display_mode_switch"


# instance fields
.field private final KEY_AOD_ENABLED:Ljava/lang/String;

.field private final KEY_NOTIFICATION_WAKE_ENABLED:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAodEnabled:Z

.field private mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

.field private mClockStyle:I

.field private mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDisplayMode:I

.field private mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

.field private mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mDozeEnalbe:Z

.field private mNotificationWakeEnabled:Z

.field private mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

.field private mSign:Z

.field private mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;-><init>()V

    .line 38
    const-string/jumbo v0, "AodSettingsPreferenceFragment"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "prox_wake_enabled"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->KEY_AOD_ENABLED:Ljava/lang/String;

    .line 51
    const-string/jumbo v0, "notification_wake_enabled"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->KEY_NOTIFICATION_WAKE_ENABLED:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    .line 54
    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    .line 55
    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    .line 56
    iput v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    .line 73
    return-void
.end method

.method private setClockStyleSummary()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 255
    .local v0, "clockStyle":I
    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    if-ne v1, v0, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    const-string/jumbo v1, "AOD"

    const-string/jumbo v2, "Clock"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setClockStyleSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez v0, :cond_2

    .line 261
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 269
    :cond_1
    :goto_0
    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    .line 270
    return-void

    .line 262
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 263
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 264
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 265
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setDisplayModeSummary()V
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_display_mode"

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplayModeSummary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v0, :cond_0

    .line 243
    iget v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setValue(Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setDisplayPeriodSummary()V
    .locals 8

    .prologue
    .line 273
    new-instance v1, Lcom/oneplus/settings/TextTime;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display_from"

    invoke-direct {v1, v4, v5}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    .local v1, "fromTime":Lcom/oneplus/settings/TextTime;
    new-instance v3, Lcom/oneplus/settings/TextTime;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "display_to"

    invoke-direct {v3, v4, v5}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    .local v3, "toTime":Lcom/oneplus/settings/TextTime;
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "display_time_start"

    iget v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "from":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "display_time_end"

    iget v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 278
    .local v2, "to":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v3, v2}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0031

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 283
    const-string/jumbo v6, " "

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 284
    const-string/jumbo v6, " "

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 285
    iget-object v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 286
    const-string/jumbo v6, " "

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 288
    return-void
.end method

.method private updateDozeSettings()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    if-eqz v0, :cond_2

    .line 292
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    .line 296
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDozeSettings: dozeEnalbed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", displayModeEnalbed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", autoWakeupEnalbed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "doze_enabled"

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iget v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "prox_wake_enabled"

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    iget v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "notification_wake_enabled"

    iget-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    if-eqz v4, :cond_5

    :goto_3
    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 300
    return-void

    .line 293
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 294
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 297
    goto :goto_1

    :cond_4
    move v0, v2

    .line 298
    goto :goto_2

    :cond_5
    move v1, v2

    .line 299
    goto :goto_3
.end method

.method private updatePreference()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEnabled(Z)V

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    if-ne v3, v0, :cond_4

    :goto_0
    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    .line 236
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 226
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 80
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    .line 82
    const-string/jumbo v4, "main_screen"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 83
    const-string/jumbo v4, "aod_display_mode_switch"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    .line 84
    const-string/jumbo v4, "aod_display_mode"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/preference/OPListPreference;

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    .line 85
    const-string/jumbo v4, "aod_display_period"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    .line 86
    const-string/jumbo v4, "aod_clock_style"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    .line 87
    const-string/jumbo v4, "aod_display_text"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    .line 88
    const-string/jumbo v4, "aod_auto_wake_screen"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    .line 89
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    iput v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    .line 90
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 92
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 94
    const v4, 0x7f0d0025

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 95
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 98
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "doze_enabled"

    iget v8, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v4, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v5, v4, :cond_8

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    .line 99
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "prox_wake_enabled"

    iget v8, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v5, v4, :cond_9

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    .line 100
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "notification_wake_enabled"

    iget v8, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v5, v4, :cond_a

    :goto_2
    iput-boolean v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    .line 101
    iput v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    .line 103
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 105
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v4, :cond_2

    .line 109
    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "entriesvalue":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 113
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 114
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setValueIndex(I)V

    .line 120
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "entriesvalue":[Ljava/lang/CharSequence;
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v4, :cond_3

    .line 121
    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 122
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    :cond_3
    :goto_4
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v4, :cond_4

    .line 129
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    :cond_4
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v4, :cond_5

    .line 133
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    :cond_5
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v4, :cond_6

    .line 137
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    .line 138
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oneplus/settings/AodDisplayTextSettings;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    iget v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "text":Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 140
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    .end local v3    # "text":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v4, :cond_7

    .line 145
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 149
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    .line 150
    return-void

    :cond_8
    move v4, v6

    .line 98
    goto/16 :goto_0

    :cond_9
    move v4, v6

    .line 99
    goto/16 :goto_1

    :cond_a
    move v5, v6

    .line 100
    goto/16 :goto_2

    .line 116
    :cond_b
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    goto :goto_3

    .line 124
    :cond_c
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 173
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPreferenceChange: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "aod_display_mode_switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 181
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 182
    .local v0, "value":Z
    const-string/jumbo v3, "AOD"

    const-string/jumbo v4, "AOD"

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 184
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    .line 185
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    .line 186
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    .line 201
    .end local v0    # "value":Z
    :cond_0
    :goto_1
    return v2

    .restart local v0    # "value":Z
    :cond_1
    move v1, v2

    .line 182
    goto :goto_0

    .line 187
    .end local v0    # "value":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "aod_display_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    .line 189
    const-string/jumbo v1, "AOD"

    const-string/jumbo v3, "When"

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "aod_display_mode"

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    .line 192
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayModeSummary()V

    goto :goto_1

    .line 193
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "aod_auto_wake_screen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 195
    .restart local v0    # "value":Z
    const-string/jumbo v3, "AOD"

    const-string/jumbo v4, "Notification"

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 197
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    .line 198
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 195
    goto :goto_2
.end method

.method public onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "aod_clock_style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/AodChooseClockStyleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 216
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "aod_display_text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-static {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "aod_display_period"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/AodDisplayDurationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onResume()V

    .line 162
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    .line 163
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setClockStyleSummary()V

    .line 164
    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayModeSummary()V

    .line 166
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayPeriodSummary()V

    .line 168
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 156
    .local v0, "list":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 157
    return-void
.end method

.method public updateDisplayText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const-string/jumbo v0, "AOD"

    const-string/jumbo v1, "Sign"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string/jumbo v0, "AOD"

    const-string/jumbo v1, "Sign"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
