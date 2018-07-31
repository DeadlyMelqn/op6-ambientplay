.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final mDeltaSpeedTimesMs:[J

.field private final mJiffyMillis:J

.field private final mLastSpeedTimesMs:[J

.field private final mProcFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 6
    .param p1, "cpuNumber"    # I
    .param p2, "numSpeedSteps"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string/jumbo v2, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 52
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    .line 54
    new-array v2, p2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    .line 55
    new-array v2, p2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    .line 56
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-interface {v2, v3}, Llibcore/io/Os;->sysconf(I)J

    move-result-wide v0

    .line 57
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    .line 58
    return-void
.end method


# virtual methods
.method public readDelta()[J
    .locals 19

    .prologue
    .line 66
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v5

    .line 67
    .local v5, "policy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v13, 0x0

    const/4 v6, 0x0

    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v12, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 68
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v12, 0x20

    invoke-direct {v9, v12}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 70
    .local v9, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v8, 0x0

    .line 71
    .local v8, "speedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    array-length v12, v12

    if-ge v8, v12, :cond_2

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 72
    invoke-virtual {v9, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 75
    invoke-virtual {v9}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    move-wide/from16 v16, v0

    mul-long v10, v14, v16

    .line 76
    .local v10, "time":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v14, v12, v8

    cmp-long v12, v10, v14

    if-gez v12, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    aput-wide v10, v12, v8

    .line 83
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aput-wide v10, v12, v8

    .line 84
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 81
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v14, v14, v8

    sub-long v14, v10, v14

    aput-wide v14, v12, v8
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_1

    .line 97
    .end local v4    # "line":Ljava/lang/String;
    .end local v8    # "speedIndex":I
    .end local v9    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v10    # "time":J
    :catch_0
    move-exception v12

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v13

    move-object/from16 v18, v13

    move-object v13, v12

    move-object/from16 v12, v18

    :goto_3
    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_4
    if-eqz v13, :cond_5

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    :catch_1
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_5
    const-string/jumbo v12, "KernelCpuSpeedReader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to read cpu-freq: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 98
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    return-object v12

    .line 97
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "speedIndex":I
    .restart local v9    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_2
    if-eqz v7, :cond_3

    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_3
    :goto_7
    if-eqz v13, :cond_6

    :try_start_7
    throw v13
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 88
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 97
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v13

    goto :goto_7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "speedIndex":I
    .end local v9    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_4
    move-exception v14

    if-nez v13, :cond_4

    move-object v13, v14

    goto :goto_4

    :cond_4
    if-eq v13, v14, :cond_1

    :try_start_8
    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 92
    :catch_5
    move-exception v2

    .line 93
    .local v2, "e":Ljava/io/IOException;
    :goto_8
    :try_start_9
    const-string/jumbo v12, "KernelCpuSpeedReader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to read cpu-freq: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 96
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_6

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_a
    throw v12
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 95
    :catchall_1
    move-exception v12

    .line 96
    :goto_9
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 95
    throw v12

    .line 96
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "speedIndex":I
    .restart local v9    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_6
    invoke-static {v5}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 95
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v12

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_9

    .line 92
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "speedIndex":I
    .end local v9    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .local v6, "reader":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v12

    goto/16 :goto_3

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_4
    move-exception v12

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .local v6, "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v12

    goto/16 :goto_2
.end method
