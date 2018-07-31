.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private mForceStop:Z

.field private final mUid:I

.field private final mUsageHint:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/VibratorService;
    .param p2, "waveform"    # Landroid/os/VibrationEffect$Waveform;
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .prologue
    .line 897
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 898
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 899
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 900
    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    .line 901
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get6(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    .line 902
    invoke-static {p1}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get6(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 903
    return-void
.end method

.method private delayLocked(J)J
    .locals 11
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v8, 0x0

    .line 906
    move-wide v2, p1

    .line 907
    .local v2, "durationRemaining":J
    cmp-long v5, p1, v8

    if-lez v5, :cond_2

    .line 908
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long v0, p1, v6

    .line 911
    .local v0, "bedtime":J
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v5, :cond_1

    .line 919
    :cond_0
    sub-long v6, p1, v2

    return-wide v6

    .line 913
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 917
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    .line 918
    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    goto :goto_0

    .line 921
    .end local v0    # "bedtime":J
    :cond_2
    return-wide v8
.end method

.method private getTotalOnDuration([J[III)J
    .locals 6
    .param p1, "timings"    # [J
    .param p2, "amplitudes"    # [I
    .param p3, "startIndex"    # I
    .param p4, "repeatIndex"    # I

    .prologue
    .line 1001
    move v0, p3

    .line 1002
    .local v0, "i":I
    const-wide/16 v2, 0x0

    .line 1003
    .local v2, "timing":J
    :cond_0
    aget v4, p2, v0

    if-eqz v4, :cond_2

    .line 1004
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    .line 1005
    array-length v4, p1

    if-lt v1, v4, :cond_3

    .line 1006
    if-ltz p4, :cond_1

    .line 1007
    move v0, p4

    .line 1012
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_0
    if-ne v0, p3, :cond_0

    .line 1013
    const-wide/16 v4, 0x3e8

    return-wide v4

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_1
    move v0, v1

    .line 1016
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_2
    return-wide v2

    .end local v0    # "i":I
    .restart local v1    # "i":I
    :cond_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 989
    monitor-enter p0

    .line 990
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 991
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 993
    return-void

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playWaveform()Z
    .locals 20

    .prologue
    .line 943
    monitor-enter p0

    .line 944
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v15

    .line 945
    .local v15, "timings":[J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v2

    .line 946
    .local v2, "amplitudes":[I
    array-length v13, v15

    .line 947
    .local v13, "len":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v14

    .line 949
    .local v14, "repeat":I
    const/4 v9, 0x0

    .line 950
    .local v9, "index":I
    const-wide/16 v4, 0x0

    .local v4, "onDuration":J
    move v12, v9

    .line 951
    .end local v9    # "index":I
    .local v12, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v3, :cond_5

    .line 952
    if-ge v12, v13, :cond_4

    .line 953
    aget v6, v2, v12

    .line 954
    .local v6, "amplitude":I
    add-int/lit8 v9, v12, 0x1

    .end local v12    # "index":I
    .restart local v9    # "index":I
    aget-wide v10, v15, v12

    .line 955
    .local v10, "duration":J
    const-wide/16 v18, 0x0

    cmp-long v3, v10, v18

    if-gtz v3, :cond_0

    move v12, v9

    .line 956
    .end local v9    # "index":I
    .restart local v12    # "index":I
    goto :goto_0

    .line 958
    .end local v12    # "index":I
    .restart local v9    # "index":I
    :cond_0
    if-eqz v6, :cond_1

    .line 959
    const-wide/16 v18, 0x0

    cmp-long v3, v4, v18

    if-gtz v3, :cond_3

    .line 967
    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v14}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v4

    .line 968
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JIII)V

    .line 974
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v16

    .line 975
    .local v16, "waitTime":J
    if-eqz v6, :cond_2

    .line 976
    sub-long v4, v4, v16

    .end local v6    # "amplitude":I
    .end local v10    # "duration":J
    .end local v16    # "waitTime":J
    :cond_2
    :goto_2
    move v12, v9

    .end local v9    # "index":I
    .restart local v12    # "index":I
    goto :goto_0

    .line 970
    .end local v12    # "index":I
    .restart local v6    # "amplitude":I
    .restart local v9    # "index":I
    .restart local v10    # "duration":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3, v6}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 943
    .end local v2    # "amplitudes":[I
    .end local v4    # "onDuration":J
    .end local v6    # "amplitude":I
    .end local v9    # "index":I
    .end local v10    # "duration":J
    .end local v13    # "len":I
    .end local v14    # "repeat":I
    .end local v15    # "timings":[J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 978
    .restart local v2    # "amplitudes":[I
    .restart local v4    # "onDuration":J
    .restart local v12    # "index":I
    .restart local v13    # "len":I
    .restart local v14    # "repeat":I
    .restart local v15    # "timings":[J
    :cond_4
    if-gez v14, :cond_6

    .line 984
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v3, v3, 0x1

    monitor-exit p0

    return v3

    .line 981
    :cond_6
    move v9, v14

    .end local v12    # "index":I
    .restart local v9    # "index":I
    goto :goto_2
.end method

.method public run()V
    .locals 3

    .prologue
    .line 925
    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 926
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 928
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 929
    .local v0, "finished":Z
    if-eqz v0, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 935
    return-void

    .line 932
    .end local v0    # "finished":Z
    :catchall_0
    move-exception v1

    .line 933
    iget-object v2, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get7(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 932
    throw v1
.end method
