.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field private final mEffect:Landroid/os/VibrationEffect;

.field private final mOpPkg:Ljava/lang/String;

.field private final mStartTime:J

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field private final mUsageHint:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method static synthetic -get0(Lcom/android/server/VibratorService$Vibration;)Landroid/os/VibrationEffect;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/VibratorService$Vibration;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/VibratorService$Vibration;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    iget-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/VibratorService$Vibration;)Landroid/os/IBinder;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    return v0
.end method

.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "usageHint"    # I
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    .line 139
    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    .line 141
    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->mUsageHint:I

    .line 142
    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    .line 143
    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$Vibration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "usageHint"    # I
    .param p5, "uid"    # I
    .param p6, "opPkg"    # Ljava/lang/String;
    .param p7, "-this6"    # Lcom/android/server/VibratorService$Vibration;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get4(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get0(Lcom/android/server/VibratorService;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get2(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap0(Lcom/android/server/VibratorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 157
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hasLongerTimeout(J)Z
    .locals 7
    .param p1, "millis"    # J

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    instance-of v2, v2, Landroid/os/VibrationEffect$OneShot;

    if-eqz v2, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 165
    .local v0, "oneShot":Landroid/os/VibrationEffect$OneShot;
    iget-wide v2, p0, Lcom/android/server/VibratorService$Vibration;->mStartTime:J

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getTiming()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 167
    .end local v0    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    :cond_1
    return v1
.end method

.method public isSystemHapticFeedback()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "repeating":Z
    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    instance-of v3, v3, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->mEffect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$Waveform;

    .line 174
    .local v1, "waveform":Landroid/os/VibrationEffect$Waveform;
    invoke-virtual {v1}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v3

    if-gez v3, :cond_3

    const/4 v0, 0x1

    .line 176
    .end local v1    # "waveform":Landroid/os/VibrationEffect$Waveform;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/server/VibratorService$Vibration;->mUid:I

    if-nez v3, :cond_4

    .line 177
    :cond_1
    :goto_1
    xor-int/lit8 v2, v0, 0x1

    .line 176
    :cond_2
    return v2

    .line 174
    .restart local v1    # "waveform":Landroid/os/VibrationEffect$Waveform;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    .end local v1    # "waveform":Landroid/os/VibrationEffect$Waveform;
    :cond_4
    const-string/jumbo v3, "com.android.systemui"

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->mOpPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1
.end method
