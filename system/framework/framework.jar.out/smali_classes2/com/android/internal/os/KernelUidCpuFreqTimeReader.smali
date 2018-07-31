.class public Lcom/android/internal/os/KernelUidCpuFreqTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuFreqTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KernelUidCpuFreqTimeReader"

.field private static final TOTAL_READ_ERROR_COUNT:I = 0x5

.field private static final UID_TIMES_PROC_FILE:Ljava/lang/String; = "/proc/uid_time_in_state"


# instance fields
.field private mCpuFreqs:[J

.field private mCpuFreqsCount:I

.field private mLastTimeReadMs:J

.field private mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[J>;"
        }
    .end annotation
.end field

.field private mNowTimeMs:J

.field private mProcFileAvailable:Z

.field private mReadErrorCounter:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    .line 44
    return-void
.end method

.method private readCpuFreqs(Ljava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;

    .prologue
    .line 160
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    if-nez v2, :cond_0

    .line 161
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "freqStr":[Ljava/lang/String;
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    .line 164
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    .line 165
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    if-ge v1, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "freqStr":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    if-eqz p2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqs:[J

    invoke-interface {p2, v2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onCpuFreqs([J)V

    .line 172
    :cond_1
    return-void
.end method

.method private readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 16
    .param p1, "uid"    # I
    .param p2, "line"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    .line 113
    .local v10, "uidTimeMs":[J
    if-nez v10, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mCpuFreqsCount:I

    new-array v10, v11, [J

    .line 115
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v11, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    :cond_0
    const-string/jumbo v11, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "timesStr":[Ljava/lang/String;
    array-length v6, v7

    .line 119
    .local v6, "size":I
    array-length v11, v10

    if-eq v6, v11, :cond_1

    .line 120
    const-string/jumbo v11, "KernelUidCpuFreqTimeReader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "No. of readings don\'t match cpu freqs, readings: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 121
    const-string/jumbo v13, " cpuFreqsCount: "

    .line 120
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 121
    array-length v13, v10

    .line 120
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 124
    :cond_1
    new-array v3, v6, [J

    .line 125
    .local v3, "deltaUidTimeMs":[J
    new-array v2, v6, [J

    .line 126
    .local v2, "curUidTimeMs":[J
    const/4 v5, 0x0

    .line 127
    .local v5, "notify":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_6

    .line 129
    aget-object v11, v7, v4

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v12

    const-wide/16 v14, 0xa

    mul-long v8, v12, v14

    .line 130
    .local v8, "totalTimeMs":J
    aget-wide v12, v10, v4

    sub-long v12, v8, v12

    aput-wide v12, v3, v4

    .line 133
    aget-wide v12, v3, v4

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-ltz v11, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-gez v11, :cond_3

    .line 146
    :cond_2
    return-void

    .line 148
    :cond_3
    aput-wide v8, v2, v4

    .line 149
    if-nez v5, :cond_4

    aget-wide v12, v3, v4

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_5

    :cond_4
    const/4 v5, 0x1

    .line 127
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 151
    .end local v8    # "totalTimeMs":J
    :cond_6
    if-eqz v5, :cond_7

    .line 152
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v11, v10, v12, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 153
    if-eqz p3, :cond_7

    .line 154
    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;->onUidCpuFreqTime(I[J)V

    .line 157
    :cond_7
    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 9
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcFileAvailable:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    .line 69
    return-void

    .line 71
    :cond_0
    const/4 v1, 0x0

    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string/jumbo v5, "/proc/uid_time_in_state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mNowTimeMs:J

    .line 73
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readDelta(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    .line 74
    iget-wide v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mNowTimeMs:J

    iput-wide v6, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastTimeReadMs:J

    .line 75
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mProcFileAvailable:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 79
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 77
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_1
    iget v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mReadErrorCounter:I

    .line 78
    const-string/jumbo v3, "KernelUidCpuFreqTimeReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read /proc/uid_time_in_state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 79
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    goto :goto_0

    :cond_2
    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .local v1, "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .end local v1    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_5
    if-eqz v4, :cond_5

    :try_start_6
    throw v4

    .line 76
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_5

    :cond_4
    if-eq v4, v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    goto :goto_4

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v1, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public readDelta(Ljava/io/BufferedReader;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V
    .locals 5
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "callback"    # Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readCpuFreqs(Ljava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    .line 104
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 105
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 106
    .local v0, "index":I
    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 107
    .local v2, "uid":I
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->readTimesForUid(ILjava/lang/String;Lcom/android/internal/os/KernelUidCpuFreqTimeReader$Callback;)V

    goto :goto_0

    .line 109
    .end local v0    # "index":I
    .end local v2    # "uid":I
    :cond_1
    return-void
.end method

.method public removeUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 84
    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 4
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .prologue
    const/4 v3, 0x0

    .line 87
    if-ge p2, p1, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 93
    .local v0, "firstIndex":I
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 94
    .local v1, "lastIndex":I
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuFreqTimeReader;->mLastUidCpuFreqTimeMs:Landroid/util/SparseArray;

    sub-int v3, v1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->removeAtRange(II)V

    .line 95
    return-void
.end method
