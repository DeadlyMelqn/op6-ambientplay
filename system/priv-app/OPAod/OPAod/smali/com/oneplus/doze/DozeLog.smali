.class public Lcom/oneplus/doze/DozeLog;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/doze/DozeLog$SummaryStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z = true

.field static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final PULSE_REASONS:I = 0x7

.field public static final PULSE_REASON_DISPLAY_ALWAYS_ON:I = 0x6

.field public static final PULSE_REASON_INTENT:I = 0x0

.field public static final PULSE_REASON_NOTIFICATION:I = 0x1

.field public static final PULSE_REASON_SENSOR_DOUBLE_TAP:I = 0x4

.field public static final PULSE_REASON_SENSOR_PICKUP:I = 0x3

.field public static final PULSE_REASON_SENSOR_SIGMOTION:I = 0x2

.field public static final PULSE_REASON_THREE_KEY_STATE_CHANGED:I = 0x5

.field private static final SIZE:I

.field private static final TAG:Ljava/lang/String; = "DozeLog"

.field private static sCount:I

.field private static sEmergencyCallStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sMessages:[Ljava/lang/String;

.field private static sNotificationPulseStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNotNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sPosition:I

.field private static sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sPulsing:Z

.field private static sScreenOnNotPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sScreenOnPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

.field private static sSince:J

.field private static sTimes:[J


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/oneplus/doze/DozeLog;->sSince:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "DozeLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->DEBUG:Z

    .line 31
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/oneplus/doze/DozeLog;->SIZE:I

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 27
    return-void

    .line 31
    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 178
    const-class v5, Lcom/oneplus/doze/DozeLog;

    monitor-enter v5

    .line 179
    :try_start_0
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit v5

    return-void

    .line 180
    :cond_0
    :try_start_1
    const-string/jumbo v4, "  Doze log:"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    sget v4, Lcom/oneplus/doze/DozeLog;->sPosition:I

    sget v6, Lcom/oneplus/doze/DozeLog;->sCount:I

    sub-int/2addr v4, v6

    sget v6, Lcom/oneplus/doze/DozeLog;->SIZE:I

    add-int/2addr v4, v6

    sget v6, Lcom/oneplus/doze/DozeLog;->SIZE:I

    rem-int v3, v4, v6

    .line 182
    .local v3, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/oneplus/doze/DozeLog;->sCount:I

    if-ge v0, v4, :cond_1

    .line 183
    add-int v4, v3, v0

    sget v6, Lcom/oneplus/doze/DozeLog;->SIZE:I

    rem-int v1, v4, v6

    .line 184
    .local v1, "j":I
    const-string/jumbo v4, "    "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    sget-object v4, Lcom/oneplus/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    sget-object v7, Lcom/oneplus/doze/DozeLog;->sTimes:[J

    aget-wide v8, v7, v1

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 186
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 187
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "j":I
    :cond_1
    const-string/jumbo v4, "  Doze summary stats (for "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/oneplus/doze/DozeLog;->sSince:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 191
    const-string/jumbo v4, "):"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string/jumbo v6, "Pickup pulse (near vibration)"

    invoke-virtual {v4, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 193
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string/jumbo v6, "Pickup pulse (not near vibration)"

    invoke-virtual {v4, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 194
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sNotificationPulseStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string/jumbo v6, "Notification pulse"

    invoke-virtual {v4, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 195
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sScreenOnPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string/jumbo v6, "Screen on (pulsing)"

    invoke-virtual {v4, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 196
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string/jumbo v6, "Screen on (not pulsing)"

    invoke-virtual {v4, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 197
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sEmergencyCallStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    const-string/jumbo v6, "Emergency call"

    invoke-virtual {v4, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x7

    if-ge v0, v4, :cond_2

    .line 199
    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "reason":Ljava/lang/String;
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v4, v4, v0

    const/4 v6, 0x0

    aget-object v4, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Proximity near ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 201
    sget-object v4, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v4, v4, v0

    const/4 v6, 0x1

    aget-object v4, v4, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Proximity far ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Lcom/oneplus/doze/DozeLog$SummaryStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "reason":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .line 204
    return-void

    .line 178
    .end local v0    # "i":I
    .end local v3    # "start":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static init(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x7

    .line 87
    const-class v2, Lcom/oneplus/doze/DozeLog;

    monitor-enter v2

    .line 88
    :try_start_0
    sget-object v1, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 89
    sget v1, Lcom/oneplus/doze/DozeLog;->SIZE:I

    new-array v1, v1, [J

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sTimes:[J

    .line 90
    sget v1, Lcom/oneplus/doze/DozeLog;->SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/oneplus/doze/DozeLog;->sSince:J

    .line 92
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 93
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 94
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sNotificationPulseStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 95
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sScreenOnPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 96
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 97
    new-instance v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sEmergencyCallStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 98
    const-class v1, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v3, 0x7

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/oneplus/doze/DozeLog$SummaryStats;

    sput-object v1, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    .line 99
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 100
    sget-object v1, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v0

    new-instance v3, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$SummaryStats;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 101
    sget-object v1, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v0

    new-instance v3, Lcom/oneplus/doze/DozeLog$SummaryStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/oneplus/doze/DozeLog$SummaryStats;-><init>(Lcom/oneplus/doze/DozeLog$SummaryStats;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    const-string/jumbo v1, "init"

    invoke-static {v1}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    :cond_1
    monitor-exit v2

    .line 106
    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 207
    const-class v1, Lcom/oneplus/doze/DozeLog;

    monitor-enter v1

    .line 208
    :try_start_0
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    .line 209
    :cond_0
    :try_start_1
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sTimes:[J

    sget v2, Lcom/oneplus/doze/DozeLog;->sPosition:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 210
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sMessages:[Ljava/lang/String;

    sget v2, Lcom/oneplus/doze/DozeLog;->sPosition:I

    aput-object p0, v0, v2

    .line 211
    sget v0, Lcom/oneplus/doze/DozeLog;->sPosition:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/oneplus/doze/DozeLog;->SIZE:I

    rem-int/2addr v0, v2

    sput v0, Lcom/oneplus/doze/DozeLog;->sPosition:I

    .line 212
    sget v0, Lcom/oneplus/doze/DozeLog;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/oneplus/doze/DozeLog;->SIZE:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/oneplus/doze/DozeLog;->sCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 214
    sget-boolean v0, Lcom/oneplus/doze/DozeLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DozeLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static pulseReasonToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "pulseReason"    # I

    .prologue
    .line 163
    packed-switch p0, :pswitch_data_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :pswitch_0
    const-string/jumbo v0, "intent"

    return-object v0

    .line 165
    :pswitch_1
    const-string/jumbo v0, "notification"

    return-object v0

    .line 166
    :pswitch_2
    const-string/jumbo v0, "sigmotion"

    return-object v0

    .line 167
    :pswitch_3
    const-string/jumbo v0, "pickup"

    return-object v0

    .line 168
    :pswitch_4
    const-string/jumbo v0, "doubletap"

    return-object v0

    .line 169
    :pswitch_5
    const-string/jumbo v0, "threeKey"

    return-object v0

    .line 171
    :pswitch_6
    const-string/jumbo v0, "alwaysOn"

    return-object v0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static traceDozing(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dozing"    # Z

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 111
    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dozing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static traceEmergencyCall()V
    .locals 1

    .prologue
    .line 124
    const-string/jumbo v0, "emergencyCall"

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sEmergencyCallStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 126
    return-void
.end method

.method public static traceFling(ZZZZ)V
    .locals 2
    .param p0, "expand"    # Z
    .param p1, "aboveThreshold"    # Z
    .param p2, "thresholdNeeded"    # Z
    .param p3, "screenOnFromTouch"    # Z

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fling expand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " aboveThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " thresholdNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string/jumbo v1, " screenOnFromTouch="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static traceKeyguard(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "keyguard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 151
    :cond_0
    return-void
.end method

.method public static traceKeyguardBouncerChanged(Z)V
    .locals 2
    .param p0, "showing"    # Z

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bouncer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static traceNotificationPulse(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "instance"    # J

    .prologue
    .line 81
    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notificationPulse instance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sNotificationPulseStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 84
    return-void
.end method

.method public static tracePickupPulse(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "withinVibrationThreshold"    # Z

    .prologue
    .line 61
    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pickupPulse withinVibrationThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 65
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    goto :goto_0
.end method

.method public static traceProximityResult(Landroid/content/Context;ZJI)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "near"    # Z
    .param p2, "millis"    # J
    .param p4, "pulseReason"    # I

    .prologue
    .line 156
    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->init(Landroid/content/Context;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proximityResult reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/oneplus/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " near="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    const-string/jumbo v1, " millis="

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sProxStats:[[Lcom/oneplus/doze/DozeLog$SummaryStats;

    aget-object v1, v0, p4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 160
    return-void

    .line 159
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static tracePulseFinish()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 76
    const-string/jumbo v0, "pulseFinish"

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static tracePulseStart(I)V
    .locals 2
    .param p0, "reason"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pulseStart reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/oneplus/doze/DozeLog;->pulseReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static traceScreenOff(I)V
    .locals 2
    .param p0, "why"    # I

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screenOff why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static traceScreenOn()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screenOn pulsing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/doze/DozeLog;->log(Ljava/lang/String;)V

    .line 136
    sget-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/doze/DozeLog;->sScreenOnPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/doze/DozeLog$SummaryStats;->append()V

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/doze/DozeLog;->sPulsing:Z

    .line 138
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/oneplus/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/oneplus/doze/DozeLog$SummaryStats;

    goto :goto_0
.end method
