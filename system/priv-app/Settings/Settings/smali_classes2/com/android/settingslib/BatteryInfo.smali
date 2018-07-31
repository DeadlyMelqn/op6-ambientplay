.class public Lcom/android/settingslib/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/BatteryInfo$BatteryDataParser;,
        Lcom/android/settingslib/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public chargeLabelString:Ljava/lang/String;

.field public discharging:Z

.field private mCharging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/String;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method static synthetic -get0(Lcom/android/settingslib/BatteryInfo;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/BatteryInfo;

    .prologue
    iget-boolean v0, p0, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/BatteryInfo;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/BatteryInfo;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/settingslib/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 34
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/settingslib/BatteryInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J

    .prologue
    .line 129
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 128
    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "shortString"    # Z

    .prologue
    .line 134
    new-instance v5, Lcom/android/settingslib/BatteryInfo;

    invoke-direct {v5}, Lcom/android/settingslib/BatteryInfo;-><init>()V

    .line 135
    .local v5, "info":Lcom/android/settingslib/BatteryInfo;
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryLevel:I

    .line 137
    iget v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryLevel:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 138
    const-string/jumbo v17, "plugged"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    iput-boolean v0, v5, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 141
    .local v12, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->statusLabel:Ljava/lang/String;

    .line 142
    iget-boolean v0, v5, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 143
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v8

    .line 144
    .local v8, "drainTime":J
    const-wide/16 v18, 0x0

    cmp-long v17, v8, v18

    if-lez v17, :cond_3

    .line 145
    iput-wide v8, v5, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 146
    const-wide/16 v18, 0x3e8

    div-long v18, v8, v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v16

    .line 147
    .local v16, "timeString":Ljava/lang/CharSequence;
    if-eqz p5, :cond_1

    sget v17, Lcom/android/settingslib/R$string;->power_remaining_duration_only_short:I

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, "str1":Ljava/lang/String;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v16, v17, v18

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 149
    if-eqz p5, :cond_2

    sget v17, Lcom/android/settingslib/R$string;->power_discharging_duration_short:I

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 150
    .local v15, "str2":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, 0x1

    aput-object v16, v17, v18

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    .line 184
    .end local v8    # "drainTime":J
    .end local v14    # "str1":Ljava/lang/String;
    .end local v15    # "str2":Ljava/lang/String;
    .end local v16    # "timeString":Ljava/lang/CharSequence;
    :goto_3
    return-object v5

    .line 138
    .end local v12    # "resources":Landroid/content/res/Resources;
    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 147
    .restart local v8    # "drainTime":J
    .restart local v12    # "resources":Landroid/content/res/Resources;
    .restart local v16    # "timeString":Ljava/lang/CharSequence;
    :cond_1
    sget v17, Lcom/android/settingslib/R$string;->power_remaining_duration_only:I

    goto :goto_1

    .line 149
    .restart local v14    # "str1":Ljava/lang/String;
    :cond_2
    sget v17, Lcom/android/settingslib/R$string;->power_discharging_duration:I

    goto :goto_2

    .line 152
    .end local v14    # "str1":Ljava/lang/String;
    .end local v16    # "timeString":Ljava/lang/CharSequence;
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 153
    iget-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto :goto_3

    .line 156
    .end local v8    # "drainTime":J
    :cond_4
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v6

    .line 157
    .local v6, "chargeTime":J
    const-string/jumbo v17, "status"

    .line 158
    const/16 v18, 0x1

    .line 157
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 159
    .local v13, "status":I
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v5, Lcom/android/settingslib/BatteryInfo;->discharging:Z

    .line 160
    const-wide/16 v18, 0x0

    cmp-long v17, v6, v18

    if-lez v17, :cond_6

    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v13, v0, :cond_6

    .line 161
    iput-wide v6, v5, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 162
    const-wide/16 v18, 0x3e8

    div-long v18, v6, v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v16

    .line 163
    .restart local v16    # "timeString":Ljava/lang/CharSequence;
    if-eqz p5, :cond_5

    sget v11, Lcom/android/settingslib/R$string;->power_charging_duration_short:I

    .line 164
    .local v11, "resId":I
    :goto_4
    sget v17, Lcom/android/settingslib/R$string;->power_remaining_charging_duration_only:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 165
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const/16 v19, 0x1

    aput-object v16, v18, v19

    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto/16 :goto_3

    .line 163
    .end local v11    # "resId":I
    :cond_5
    sget v11, Lcom/android/settingslib/R$string;->power_charging_duration:I

    .restart local v11    # "resId":I
    goto :goto_4

    .line 168
    .end local v11    # "resId":I
    .end local v16    # "timeString":Ljava/lang/CharSequence;
    :cond_6
    const-string/jumbo v17, "level"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 169
    .local v10, "level":I
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 170
    const/16 v17, 0x64

    move/from16 v0, v17

    if-lt v10, v0, :cond_7

    .line 172
    sget v17, Lcom/android/settingslib/R$string;->battery_info_status_full:I

    .line 171
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "chargeStatusLabel":Ljava/lang/String;
    sget v17, Lcom/android/settingslib/R$string;->power_charging:I

    .line 173
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 174
    iget-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const/16 v19, 0x1

    aput-object v4, v18, v19

    .line 173
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto/16 :goto_3

    .line 177
    .end local v4    # "chargeStatusLabel":Ljava/lang/String;
    :cond_7
    sget v17, Lcom/android/settingslib/R$string;->battery_info_status_charging_lower:I

    .line 176
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    .restart local v4    # "chargeStatusLabel":Ljava/lang/String;
    sget v17, Lcom/android/settingslib/R$string;->power_charging:I

    .line 178
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 179
    iget-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const/16 v19, 0x1

    aput-object v4, v18, v19

    .line 178
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->chargeLabelString:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settingslib/BatteryInfo$Callback;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V

    .line 102
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settingslib/BatteryInfo$Callback;
    .param p2, "shortString"    # Z

    .prologue
    .line 106
    new-instance v0, Lcom/android/settingslib/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/BatteryInfo$2;-><init>(Landroid/content/Context;ZLcom/android/settingslib/BatteryInfo$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method

.method private static varargs parse(Landroid/os/BatteryStats;J[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
    .locals 37
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "remainingTimeUs"    # J
    .param p3, "parsers"    # [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .prologue
    .line 199
    const-wide/16 v28, 0x0

    .line 200
    .local v28, "startWalltime":J
    const-wide/16 v8, 0x0

    .line 201
    .local v8, "endDateWalltime":J
    const-wide/16 v10, 0x0

    .line 202
    .local v10, "endWalltime":J
    const-wide/16 v14, 0x0

    .line 203
    .local v14, "historyStart":J
    const-wide/16 v12, 0x0

    .line 204
    .local v12, "historyEnd":J
    const/16 v19, -0x1

    .line 199
    .local v19, "lastLevel":B
    const-wide/16 v6, 0x0

    .line 206
    .local v6, "curWalltime":J
    const-wide/16 v22, 0x0

    .line 207
    .local v22, "lastWallTime":J
    const-wide/16 v20, 0x0

    .line 208
    .local v20, "lastRealtime":J
    const/16 v18, 0x0

    .line 209
    .local v18, "lastInteresting":I
    const/16 v26, 0x0

    .line 210
    .local v26, "pos":I
    const/4 v5, 0x1

    .line 211
    .local v5, "first":Z
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 212
    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 213
    .end local v19    # "lastLevel":B
    .local v27, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 214
    add-int/lit8 v26, v26, 0x1

    .line 215
    if-eqz v5, :cond_1

    .line 216
    const/4 v5, 0x0

    .line 217
    move-object/from16 v0, v27

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 219
    :cond_1
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 220
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 229
    :cond_2
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v22

    cmp-long v32, v32, v34

    if-gtz v32, :cond_3

    .line 230
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x493e0

    add-long v34, v34, v14

    cmp-long v32, v32, v34

    if-gez v32, :cond_4

    .line 231
    :cond_3
    const-wide/16 v28, 0x0

    .line 233
    :cond_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v22, v0

    .line 234
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 235
    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-nez v32, :cond_5

    .line 236
    sub-long v32, v20, v14

    sub-long v28, v22, v32

    .line 239
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 240
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v32, 0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 241
    :cond_6
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v19, v0

    .line 243
    :cond_7
    move/from16 v18, v26

    .line 244
    move-object/from16 v0, v27

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto/16 :goto_0

    .line 248
    .end local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 249
    add-long v32, v22, v12

    sub-long v8, v32, v20

    .line 250
    const-wide/16 v32, 0x3e8

    div-long v32, p1, v32

    add-long v10, v8, v32

    .line 252
    const/16 v16, 0x0

    .line 253
    .local v16, "i":I
    move/from16 v4, v18

    .line 255
    .local v4, "N":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    .line 256
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2, v10, v11}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    .line 255
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 258
    :cond_9
    cmp-long v32, v8, v28

    if-lez v32, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 259
    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 260
    .restart local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_11

    move/from16 v0, v16

    if-ge v0, v4, :cond_11

    .line 261
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 262
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v20

    add-long v6, v6, v32

    .line 263
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 264
    sub-long v30, v6, v28

    .line 265
    .local v30, "x":J
    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-gez v32, :cond_a

    .line 266
    const-wide/16 v30, 0x0

    .line 268
    :cond_a
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 269
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    .line 268
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 272
    .end local v30    # "x":J
    :cond_b
    move-wide/from16 v24, v6

    .line 273
    .local v24, "lastWalltime":J
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    .line 274
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 275
    :cond_c
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    cmp-long v32, v32, v28

    if-ltz v32, :cond_f

    .line 276
    move-object/from16 v0, v27

    iget-wide v6, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 280
    :goto_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 283
    :cond_d
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    .line 284
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 285
    sub-long v32, v24, v6

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    const-wide/32 v34, 0x36ee80

    cmp-long v32, v32, v34

    if-lez v32, :cond_10

    .line 286
    :cond_e
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 287
    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onDataGap()V

    .line 286
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 278
    :cond_f
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v14

    add-long v6, v28, v32

    goto :goto_4

    .line 291
    .end local v24    # "lastWalltime":J
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 295
    .end local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 297
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 298
    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onParsingDone()V

    .line 297
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 300
    :cond_12
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
    .locals 12
    .param p1, "view"    # Lcom/android/settingslib/graph/UsageView;
    .param p2, "parsers"    # [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .prologue
    .line 52
    new-instance v2, Lcom/android/settingslib/BatteryInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settingslib/BatteryInfo$1;-><init>(Lcom/android/settingslib/BatteryInfo;Lcom/android/settingslib/graph/UsageView;)V

    .line 83
    .local v2, "parser":Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .line 84
    .local v3, "parserList":[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_0

    .line 85
    aget-object v6, p2, v1

    aput-object v6, v3, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    array-length v6, p2

    aput-object v2, v3, v6

    .line 88
    iget-object v6, p0, Lcom/android/settingslib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    invoke-static {v6, v8, v9, v3}, Lcom/android/settingslib/BatteryInfo;->parse(Landroid/os/BatteryStats;J[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/settingslib/graph/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    .local v0, "context":Landroid/content/Context;
    sget v6, Lcom/android/settingslib/R$string;->charge_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 91
    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->timePeriod:J

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 90
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "timeString":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 93
    .local v4, "remaining":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 94
    sget v6, Lcom/android/settingslib/R$string;->remaining_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 95
    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 94
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 97
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {p1, v6}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method
