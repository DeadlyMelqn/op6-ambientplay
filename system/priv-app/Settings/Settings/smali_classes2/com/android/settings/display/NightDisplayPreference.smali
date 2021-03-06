.class public Lcom/android/settings/display/NightDisplayPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "NightDisplayPreference.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# instance fields
.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    .line 39
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    .line 40
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    return-void
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 4
    .param p1, "localTime"    # Ljava/time/LocalTime;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "c":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 65
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 67
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 68
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 69
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayPreference;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateSummary()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    .local v2, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v3

    .line 76
    .local v3, "isActivated":Z
    iget-object v5, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    .line 79
    .local v0, "autoMode":I
    packed-switch v0, :pswitch_data_0

    .line 82
    :pswitch_0
    if-eqz v3, :cond_0

    .line 83
    const v5, 0x7f0f0932

    .line 82
    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "autoModeSummary":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_3

    const v4, 0x7f0f0931

    .line 106
    .local v4, "summaryFormatResId":I
    :goto_2
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/display/NightDisplayPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    return-void

    .line 84
    .end local v1    # "autoModeSummary":Ljava/lang/String;
    .end local v4    # "summaryFormatResId":I
    :cond_0
    const v5, 0x7f0f092e

    goto :goto_0

    .line 87
    :pswitch_1
    if-eqz v3, :cond_1

    .line 88
    new-array v5, v8, [Ljava/lang/Object;

    .line 90
    iget-object v6, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/NightDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/display/NightDisplayPreference;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 89
    const v6, 0x7f0f0933

    .line 88
    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "autoModeSummary":Ljava/lang/String;
    goto :goto_1

    .line 92
    .end local v1    # "autoModeSummary":Ljava/lang/String;
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    .line 94
    iget-object v6, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/NightDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/display/NightDisplayPreference;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 93
    const v6, 0x7f0f092f

    .line 92
    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "autoModeSummary":Ljava/lang/String;
    goto :goto_1

    .line 98
    .end local v1    # "autoModeSummary":Ljava/lang/String;
    :pswitch_2
    if-eqz v3, :cond_2

    .line 99
    const v5, 0x7f0f0934

    .line 98
    :goto_3
    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "autoModeSummary":Ljava/lang/String;
    goto :goto_1

    .line 100
    .end local v1    # "autoModeSummary":Ljava/lang/String;
    :cond_2
    const v5, 0x7f0f0930

    goto :goto_3

    .line 105
    .restart local v1    # "autoModeSummary":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0f092d

    .restart local v4    # "summaryFormatResId":I
    goto :goto_2

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 112
    return-void
.end method

.method public onAttached()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    .line 48
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 51
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 52
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0
    .param p1, "autoMode"    # I

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 117
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 127
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayPreference;->updateSummary()V

    .line 122
    return-void
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayPreference;->mController:Lcom/android/internal/app/NightDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    .line 60
    return-void
.end method
