.class public Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;
.super Landroid/content/BroadcastReceiver;
.source "OPTimerReceiverPowerOff.java"


# static fields
.field private static final ACTION_CANCEL_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

.field private static final ACTION_SET_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.SET_ALARM"

.field private static final POWER_OFF_ALARM_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.poweroffalarm"

.field private static final TIME:Ljava/lang/String; = "time"


# instance fields
.field private mLock:Landroid/os/PowerManager$WakeLock;

.field private pm:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 24
    iput-object v0, p0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    return-void
.end method

.method private cancleNewPlanLastPowerOn(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const/4 v3, 0x2

    new-array v0, v3, [J

    .line 232
    .local v0, "nearestTime":[J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 233
    const-string/jumbo v4, "def_timepower_config"

    .line 232
    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "timeConfig":Ljava/lang/String;
    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    .line 235
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, "powerOffIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 239
    const-string/jumbo v3, "time"

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 240
    const-string/jumbo v3, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 242
    return-void
.end method

.method public static checkSwitch(Landroid/content/Context;Z)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "powerOnOrPowerOff"    # Z

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 256
    const-string/jumbo v7, "def_timepower_config"

    .line 255
    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "config":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 259
    return v9

    .line 262
    :cond_0
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v10, v10}, [I

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 263
    .local v4, "mTimeArray":[[I
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v10, v10}, [I

    move-result-object v7

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    .line 265
    .local v3, "mStateArray":[[Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/4 v6, 0x6

    if-gt v1, v6, :cond_1

    .line 266
    add-int/lit8 v6, v1, 0x6

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "tmp":Ljava/lang/String;
    aget-object v6, v4, v2

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v9

    .line 268
    aget-object v6, v4, v2

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v8

    .line 269
    aget-object v6, v3, v2

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v7

    aput-boolean v7, v6, v9

    .line 270
    aget-object v6, v3, v2

    const/4 v7, 0x6

    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->intToBool(I)Z

    move-result v7

    aput-boolean v7, v6, v8

    .line 265
    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 274
    aget-object v6, v3, v9

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_3

    .line 275
    return v8

    .line 278
    :cond_2
    aget-object v6, v3, v8

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_3

    .line 279
    return v8

    .line 283
    :cond_3
    return v9
.end method

.method static intToBool(I)Z
    .locals 1
    .param p0, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 31
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPowerOffEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPowerOnEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->checkSwitch(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 37
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "action":Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v11, v0, [J

    .line 42
    .local v11, "nearestTime":[J
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "def_timepower_config"

    .line 41
    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 43
    .local v17, "timeConfig":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v11

    .line 47
    const-string/jumbo v20, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/PowerManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    .line 57
    const-string/jumbo v20, "com.android.settings.action.REQUEST_POWER_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 58
    const-string/jumbo v20, "android.intent.action.TIME_SET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 57
    if-nez v20, :cond_0

    .line 59
    const-string/jumbo v20, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 57
    if-nez v20, :cond_0

    .line 60
    const-string/jumbo v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 57
    if-eqz v20, :cond_4

    .line 63
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOffEnable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 64
    new-instance v12, Landroid/content/Intent;

    .line 65
    const-string/jumbo v20, "com.android.settings.POWER_OP_OFF"

    .line 64
    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v12, "powerOFFIntent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    const/16 v20, 0x1

    aget-wide v20, v11, v20

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_1

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 73
    .local v6, "c":Ljava/util/Calendar;
    const/16 v20, 0x0

    aget-wide v20, v11, v20

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    const-string/jumbo v20, "boot"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Power on alarm with flag set:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 75
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v22

    .line 74
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v20, "alarm"

    .line 78
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 81
    .local v5, "am":Landroid/app/AlarmManager;
    const/16 v20, 0x0

    .line 82
    const/high16 v21, 0x8000000

    .line 80
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 84
    .local v16, "sender":Landroid/app/PendingIntent;
    const/16 v20, 0x1

    aget-wide v20, v11, v20

    const/16 v22, 0x0

    move/from16 v0, v22

    move-wide/from16 v1, v20

    move-object/from16 v3, v16

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 181
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v6    # "c":Ljava/util/Calendar;
    .end local v12    # "powerOFFIntent":Landroid/content/Intent;
    .end local v16    # "sender":Landroid/app/PendingIntent;
    :cond_1
    :goto_0
    const-string/jumbo v20, "com.android.settings.POWER_OP_ON"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 182
    const-string/jumbo v20, "android.intent.action.TIME_SET"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 181
    if-nez v20, :cond_2

    .line 183
    const-string/jumbo v20, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 181
    if-nez v20, :cond_2

    .line 184
    const-string/jumbo v20, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    .line 181
    if-eqz v20, :cond_3

    .line 187
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v20

    if-nez v20, :cond_c

    .line 188
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v20, "com.android.settings.POWER_OP_ON"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    .local v13, "powerONIntent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    const-string/jumbo v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 193
    .restart local v5    # "am":Landroid/app/AlarmManager;
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v13, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 194
    .restart local v16    # "sender":Landroid/app/PendingIntent;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 195
    const/16 v20, 0x0

    aget-wide v20, v11, v20

    const/16 v22, 0x5

    move/from16 v0, v22

    move-wide/from16 v1, v20

    move-object/from16 v3, v16

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 227
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v13    # "powerONIntent":Landroid/content/Intent;
    .end local v16    # "sender":Landroid/app/PendingIntent;
    :cond_3
    :goto_1
    return-void

    .line 88
    :cond_4
    const-string/jumbo v20, "com.android.settings.POWER_OP_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 93
    .local v8, "currentTime":J
    const/16 v20, 0x1

    aget-wide v20, v11, v20

    sub-long v20, v8, v20

    const-wide/32 v22, 0x5265c00

    sub-long v20, v20, v22

    const-wide/32 v22, 0x5265c00

    rem-long v18, v20, v22

    .line 94
    .local v18, "wrongTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-ltz v20, :cond_6

    const-wide/32 v20, 0xea60

    cmp-long v20, v18, v20

    if-lez v20, :cond_6

    .line 95
    :cond_5
    return-void

    .line 94
    :cond_6
    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-gez v20, :cond_7

    const-wide/32 v20, -0x52571a0

    cmp-long v20, v18, v20

    if-gtz v20, :cond_5

    .line 102
    :cond_7
    new-instance v10, Landroid/content/Intent;

    const-class v20, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 107
    .local v10, "it":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 123
    .end local v8    # "currentTime":J
    .end local v10    # "it":Landroid/content/Intent;
    .end local v18    # "wrongTime":J
    :cond_8
    const-string/jumbo v20, "com.android.settings.POWER_CONFIRM_OP_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 132
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 135
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->pm:Landroid/os/PowerManager;

    move-object/from16 v20, v0

    .line 138
    const-string/jumbo v21, "TimepowerWakeLock"

    .line 136
    const v22, 0x1000000a

    .line 135
    move-object/from16 v0, v20

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->mLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 141
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v20, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v7, "intet":Landroid/content/Intent;
    const-string/jumbo v20, "android.intent.extra.KEY_CONFIRM"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 146
    .end local v7    # "intet":Landroid/content/Intent;
    :cond_a
    const-string/jumbo v20, "com.android.settings.POWER_CANCEL_OP_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 160
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "com.android.settings.POWER_OP_OFF"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v14, "powerOffIntent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    const-string/jumbo v20, "alarm"

    .line 164
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 166
    .restart local v5    # "am":Landroid/app/AlarmManager;
    const/16 v20, 0x0

    .line 171
    const/high16 v21, 0x8000000

    .line 166
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 172
    .restart local v16    # "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 197
    .end local v14    # "powerOffIntent":Landroid/content/Intent;
    .restart local v13    # "powerONIntent":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 201
    .end local v5    # "am":Landroid/app/AlarmManager;
    .end local v13    # "powerONIntent":Landroid/content/Intent;
    .end local v16    # "sender":Landroid/app/PendingIntent;
    :cond_c
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v20, "com.android.settings.POWER_OP_ON"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v15, "poweron":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v20, "alarm"

    .line 205
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    .line 207
    .restart local v5    # "am":Landroid/app/AlarmManager;
    const/16 v20, 0x0

    .line 208
    const/high16 v21, 0x8000000

    .line 207
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v15, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 209
    .restart local v16    # "sender":Landroid/app/PendingIntent;
    invoke-static/range {p1 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->isPowerOnEnable(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 210
    invoke-direct/range {p0 .. p1}, Lcom/oneplus/settings/timer/OPTimerReceiverPowerOff;->cancleNewPlanLastPowerOn(Landroid/content/Context;)V

    .line 211
    const/16 v20, 0x0

    aget-wide v20, v11, v20

    const/16 v22, 0x0

    move/from16 v0, v22

    move-wide/from16 v1, v20

    move-object/from16 v3, v16

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 212
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v20, "org.codeaurora.poweroffalarm.action.SET_ALARM"

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v14    # "powerOffIntent":Landroid/content/Intent;
    const/high16 v20, 0x10000000

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    const-string/jumbo v20, "com.qualcomm.qti.poweroffalarm"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string/jumbo v20, "time"

    const/16 v21, 0x0

    aget-wide v22, v11, v21

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 218
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 220
    .end local v14    # "powerOffIntent":Landroid/content/Intent;
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1
.end method
