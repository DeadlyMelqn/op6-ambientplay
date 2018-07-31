.class public Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;,
        Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

.field private static final ACTION_SET_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.SET_ALARM"

.field private static final EXTRA_DISPLAY_TIME:Ljava/lang/String; = "display_time"

.field private static final EXTRA_HOUR:Ljava/lang/String; = "hour"

.field private static final EXTRA_IS_24HOUR:Ljava/lang/String; = "24hour"

.field private static final EXTRA_MINUTE:Ljava/lang/String; = "minute"

.field private static final EXTRA_POWER_STATE:Ljava/lang/String; = "power_state"

.field private static final EXTRA_POWER_TYPE:Ljava/lang/String; = "power_type"

.field private static final ITEM_COUNT:I = 0x2

.field private static final KEY_POWER_OFF_SETTINGS:Ljava/lang/String; = "oneplus_power_off_settings"

.field private static final KEY_POWER_ON_SETTINGS:Ljava/lang/String; = "oneplus_power_on_settings"

.field private static final POWER_OFF_ALARM_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.poweroffalarm"

.field private static final POWER_OFF_TYPE:I = 0x1

.field private static final POWER_ON_TYPE:I = 0x0

.field private static final PREFERENCE_POWER_OFF_SETTINGS:Ljava/lang/String; = "power_off_settings"

.field private static final PREFERENCE_POWER_OFF_STATE:Ljava/lang/String; = "power_off_switch"

.field private static final PREFERENCE_POWER_ON_SETTINGS:Ljava/lang/String; = "power_on_settings"

.field private static final PREFERENCE_POWER_ON_STATE:Ljava/lang/String; = "power_on_switch"

.field private static final REQUEST_CODE_POWER_OFF:I = 0x1

.field private static final REQUEST_CODE_POWER_ON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TimepowerSettingsFragment"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static misCheckedPoweroff:Z

.field private static misCheckedPoweron:Z


# instance fields
.field private mCode:I

.field private mDlgVisible:Z

.field private mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOffPreference:Landroid/support/v7/preference/Preference;

.field private mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

.field private mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOnPreference:Landroid/support/v7/preference/Preference;

.field private mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

.field private mPowerState:Z

.field private mStateArray:[[Z

.field private mTimeArray:[[I

.field private mTimePicker:Landroid/widget/TimePicker;

.field onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;

    .prologue
    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getTimeSettingsIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->startDialogForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 88
    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 106
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 78
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    .line 79
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    .line 636
    new-instance v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 107
    return-void
.end method

.method private ReturnData(II)V
    .locals 4
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    .line 672
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 673
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "power_state"

    iget-boolean v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    const-string/jumbo v2, "hour"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 675
    const-string/jumbo v2, "minute"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 676
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 678
    iget v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->returnNewTimeSetResult(ILandroid/content/Intent;)V

    .line 679
    return-void
.end method

.method private static boolToInt(Z)I
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 682
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancleNewPlanLastPowerOn()V
    .locals 6

    .prologue
    .line 459
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 460
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [J

    .line 461
    .local v0, "nearestTime":[J
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 462
    const-string/jumbo v4, "def_timepower_config"

    .line 461
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "timeConfig":Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    .line 464
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, "powerOffIntent":Landroid/content/Intent;
    const-string/jumbo v3, "time"

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 466
    const-string/jumbo v3, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    return-void
.end method

.method private formatTime(II)Ljava/lang/String;
    .locals 8
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/16 v3, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 233
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "%1$02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    const-string/jumbo v3, "%1$02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 237
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    const v2, 0x7f0f034d

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "halfday":Ljava/lang/String;
    if-lt p1, v3, :cond_2

    .line 239
    const v2, 0x7f0f034e

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    if-le p1, v3, :cond_1

    .line 241
    add-int/lit8 p1, p1, -0xc

    .line 246
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%1$02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    const-string/jumbo v3, "%1$02d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    if-nez p1, :cond_1

    .line 244
    const/16 p1, 0xc

    goto :goto_1
.end method

.method private getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p1, "type"    # I
    .param p2, "hour"    # I
    .param p3, "minute"    # I
    .param p4, "powerstate"    # Z
    .param p5, "currenttime"    # Ljava/lang/String;

    .prologue
    .line 298
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    .line 299
    const/4 v2, 0x0

    return-object v2

    .line 302
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "24hour"

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    const-string/jumbo v2, "power_state"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    const-string/jumbo v2, "display_time"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string/jumbo v2, "hour"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    const-string/jumbo v2, "minute"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string/jumbo v2, "power_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 313
    return-object v1
.end method

.method public static getPowerOnOffStatus(Ljava/lang/String;)Z
    .locals 1
    .param p0, "OnOff"    # Ljava/lang/String;

    .prologue
    .line 336
    const-string/jumbo v0, "PowerOnFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    sget-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    return v0

    .line 338
    :cond_0
    const-string/jumbo v0, "PowerOffFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    sget-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    return v0

    .line 341
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getTimeSettingsIntent(I)Landroid/content/Intent;
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 257
    if-eqz p1, :cond_0

    if-eq p1, v7, :cond_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v0, v0, v6

    aget-boolean v4, v0, v6

    .line 269
    .local v4, "powerstate":Z
    const-string/jumbo v0, "TIMER"

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "currenttime":Ljava/lang/String;
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v6

    aget v2, v0, v6

    .line 275
    .local v2, "hour":I
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v6

    aget v3, v0, v7

    .line 277
    .local v3, "minute":I
    if-ne p1, v7, :cond_1

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v0, v0, v7

    aget-boolean v4, v0, v6

    .line 282
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 284
    const-string/jumbo v0, "TIMER"

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 289
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v7

    aget v2, v0, v6

    .line 290
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v7

    aget v3, v0, v7

    :cond_1
    move-object v0, p0

    move v1, p1

    .line 293
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 120
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->readData()V

    .line 121
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v7

    aget-boolean v2, v4, v6

    .line 122
    .local v2, "powerOnState":Z
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v7

    aget v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "powerOnTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v6

    aget-boolean v0, v4, v6

    .line 125
    .local v0, "powerOffState":Z
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v6

    aget v4, v4, v7

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v6

    aget v5, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "powerOffTime":Ljava/lang/String;
    const-string/jumbo v4, "power_on_switch"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

    .line 128
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 131
    const-string/jumbo v4, "power_off_switch"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

    .line 132
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 133
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    const-string/jumbo v4, "power_on_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    .line 136
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v4, v3}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const-string/jumbo v4, "oneplus_power_on_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    .line 151
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    .line 153
    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    .line 152
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 172
    const-string/jumbo v4, "power_off_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    .line 173
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v4, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const-string/jumbo v4, "oneplus_power_off_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    .line 189
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    .line 192
    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$5;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$5;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    .line 191
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 208
    const-string/jumbo v4, "power_on_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->removePreference(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v4, "power_off_settings"

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->removePreference(Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method private static intToBool(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 686
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private readData()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 216
    const-string/jumbo v5, "def_timepower_config"

    .line 215
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 219
    return-void

    .line 222
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v4, 0x6

    if-gt v1, v4, :cond_1

    .line 223
    add-int/lit8 v4, v1, 0x6

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "tmp":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v2

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v6

    .line 225
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v2

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v7

    .line 226
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v2

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v5

    aput-boolean v5, v4, v6

    .line 227
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v2

    const/4 v5, 0x6

    invoke-virtual {v3, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v5

    aput-boolean v5, v4, v7

    .line 222
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private returnNewTimeSetResult(ILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 506
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 507
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 508
    const-string/jumbo v7, "hour"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 509
    .local v2, "hour":I
    const-string/jumbo v7, "minute"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 511
    .local v4, "minute":I
    const/4 v3, 0x0

    .line 512
    .local v3, "index":I
    const/4 v0, 0x1

    .line 513
    .local v0, "anotherindex":I
    if-ne p1, v9, :cond_0

    .line 514
    const/4 v3, 0x1

    .line 515
    const/4 v0, 0x0

    .line 518
    :cond_0
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v10

    if-ne v2, v7, :cond_1

    .line 519
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v9

    if-ne v4, v7, :cond_1

    .line 520
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 521
    const v8, 0x7f0f034a

    invoke-virtual {p0, v8}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 520
    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 523
    return-void

    .line 526
    :cond_1
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    const-string/jumbo v8, "hour"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v10

    .line 527
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    const-string/jumbo v8, "minute"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v9

    .line 528
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v3

    aget v7, v7, v10

    .line 529
    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v8, v8, v3

    aget v8, v8, v9

    .line 528
    invoke-direct {p0, v7, v8}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "timeDisplay":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v3

    const-string/jumbo v8, "power_state"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    aput-boolean v8, v7, v10

    .line 532
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v3

    aget-boolean v5, v7, v9

    .line 533
    .local v5, "sendMsgOut":Z
    if-nez p1, :cond_4

    .line 534
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v7, v6}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 551
    :cond_2
    :goto_0
    if-nez v5, :cond_6

    .line 552
    if-nez p1, :cond_5

    .line 553
    invoke-direct {p0, v10, v9}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 554
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 600
    .end local v0    # "anotherindex":I
    .end local v2    # "hour":I
    .end local v3    # "index":I
    .end local v4    # "minute":I
    .end local v5    # "sendMsgOut":Z
    .end local v6    # "timeDisplay":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 545
    .restart local v0    # "anotherindex":I
    .restart local v2    # "hour":I
    .restart local v3    # "index":I
    .restart local v4    # "minute":I
    .restart local v5    # "sendMsgOut":Z
    .restart local v6    # "timeDisplay":Ljava/lang/String;
    :cond_4
    if-ne p1, v9, :cond_2

    .line 546
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v7, v6}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 556
    :cond_5
    invoke-direct {p0, v9, v9}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 557
    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 569
    :cond_6
    iget v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    if-nez v7, :cond_7

    .line 570
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->cancleNewPlanLastPowerOn()V

    .line 571
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 578
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 579
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.android.settings.POWER_OP_ON"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v7, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 580
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    goto :goto_1

    .line 581
    :cond_7
    iget v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    if-ne v7, v9, :cond_8

    .line 582
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 588
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 590
    new-instance v8, Landroid/content/Intent;

    .line 591
    const-string/jumbo v9, "com.android.settings.action.REQUEST_POWER_OFF"

    .line 590
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v7, v8}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 595
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    goto :goto_1
.end method

.method private setPowerOn()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 479
    const/4 v5, 0x2

    new-array v1, v5, [J

    .line 481
    .local v1, "nearestTime":[J
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 482
    const-string/jumbo v6, "def_timepower_config"

    .line 481
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 483
    .local v4, "timeConfig":Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v1

    .line 485
    const-string/jumbo v5, "TimepowerSettingsFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPowerOn writeData: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v8, v1, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "com.android.settings.POWER_OP_ON"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 490
    .local v2, "poweron":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 491
    const-string/jumbo v6, "alarm"

    .line 490
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 492
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 493
    const/high16 v6, 0x8000000

    .line 492
    invoke-static {v5, v10, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 494
    .local v3, "sender":Landroid/app/PendingIntent;
    aget-wide v6, v1, v10

    invoke-virtual {v0, v10, v6, v7, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 496
    return-void
.end method

.method private startDialogForResult(Landroid/content/Intent;I)V
    .locals 13
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "code"    # I

    .prologue
    const/4 v12, 0x1

    .line 604
    if-nez p1, :cond_0

    .line 605
    return-void

    .line 607
    :cond_0
    iput p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    .line 608
    new-instance v1, Landroid/widget/TimePicker;

    new-instance v2, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f1003b6

    invoke-direct {v2, v10, v11}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    .line 609
    const v8, 0x7f0f0347

    .line 610
    .local v8, "resId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 611
    .local v6, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "power_state"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    .line 613
    const-string/jumbo v1, "24hour"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 614
    .local v5, "mIs24Hour":Z
    const-string/jumbo v1, "hour"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 615
    .local v3, "mDlgHour":I
    const-string/jumbo v1, "minute"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 617
    .local v4, "mDlgMinute":I
    const-string/jumbo v1, "power_type"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 618
    .local v9, "type":I
    if-nez v9, :cond_2

    .line 619
    const v8, 0x7f0f034b

    .line 623
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 624
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 625
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 627
    new-instance v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;

    invoke-direct {v7, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    .line 628
    .local v7, "listener":Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    new-instance v0, Landroid/app/TimePickerDialog;

    .line 629
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, p0

    .line 628
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 631
    .local v0, "timePickerDialog":Landroid/app/TimePickerDialog;
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 632
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 633
    iput-boolean v12, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    .line 634
    return-void

    .line 620
    .end local v0    # "timePickerDialog":Landroid/app/TimePickerDialog;
    .end local v7    # "listener":Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    :cond_2
    if-ne v9, v12, :cond_1

    .line 621
    const v8, 0x7f0f034c

    goto :goto_0
.end method

.method private updateState(IZ)V
    .locals 9
    .param p1, "powerType"    # I
    .param p2, "checked"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 346
    if-eqz p1, :cond_0

    if-eq p1, v5, :cond_0

    .line 347
    return-void

    .line 350
    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, p1

    aput-boolean p2, v4, v5

    .line 352
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->cancleNewPlanLastPowerOn()V

    .line 354
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 355
    sput-boolean v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 360
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings.POWER_OP_ON"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 361
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    if-ne p1, v5, :cond_3

    if-eqz p2, :cond_3

    .line 367
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 368
    new-array v1, v8, [J

    .line 369
    .local v1, "nearestTime":[J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "trigger_time"

    aget-wide v6, v1, v5

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 371
    sput-boolean v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    .line 375
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 377
    new-instance v5, Landroid/content/Intent;

    .line 378
    const-string/jumbo v6, "com.android.settings.action.REQUEST_POWER_OFF"

    .line 377
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 381
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "nearestTime":[J
    :cond_3
    if-ne p1, v5, :cond_4

    if-nez p2, :cond_4

    .line 382
    sput-boolean v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    .line 384
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 386
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 388
    new-instance v5, Landroid/content/Intent;

    .line 389
    const-string/jumbo v6, "com.android.settings.POWER_CANCEL_OP_OFF"

    .line 388
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 393
    :cond_4
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 395
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 397
    sput-boolean v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    .line 399
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 400
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.settings.POWER_OP_ON"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v4, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    new-array v1, v8, [J

    .line 403
    .restart local v1    # "nearestTime":[J
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 404
    const-string/jumbo v5, "def_timepower_config"

    .line 403
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "timeConfig":Ljava/lang/String;
    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v1

    .line 406
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v2, "powerOffIntent":Landroid/content/Intent;
    const-string/jumbo v4, "time"

    aget-wide v6, v1, v7

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 408
    const-string/jumbo v4, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private writeData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 443
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 444
    .local v0, "Config":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%1$02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v1

    aget v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 446
    const-string/jumbo v4, "%1$02d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v1

    aget v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 447
    const-string/jumbo v4, "%1$01d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v7

    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 448
    const-string/jumbo v4, "%1$01d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v1

    aget-boolean v6, v6, v8

    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "tmp":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 451
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "TimepowerSettingsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeData: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 454
    const-string/jumbo v4, "def_timepower_config"

    .line 453
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 692
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v0, 0x7f080074

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->addPreferencesFromResource(I)V

    .line 114
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->init()V

    .line 115
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "isChecked":Z
    instance-of v2, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 319
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 322
    .end local v0    # "isChecked":Z
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "power_on_switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 324
    invoke-direct {p0, v4, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 325
    return v3

    .line 326
    :cond_1
    const-string/jumbo v2, "power_off_switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 327
    invoke-direct {p0, v3, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 328
    return v3

    .line 330
    :cond_2
    return v4
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 645
    invoke-direct {p0, p2, p3}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->ReturnData(II)V

    .line 646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    .line 647
    return-void
.end method
