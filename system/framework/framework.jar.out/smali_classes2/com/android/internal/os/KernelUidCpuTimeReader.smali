.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuTimeReader"

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 58
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 40
    return-void
.end method

.method private removeUidsFromKernelModule(II)V
    .locals 8
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .prologue
    const/4 v4, 0x0

    .line 162
    const-string/jumbo v3, "KernelUidCpuTimeReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Removing uids "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    .local v1, "writer":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string/jumbo v3, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    .end local v1    # "writer":Ljava/io/FileWriter;
    .local v2, "writer":Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 169
    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 167
    .end local v2    # "writer":Ljava/io/FileWriter;
    :goto_1
    const-string/jumbo v3, "KernelUidCpuTimeReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to remove uids "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    const-string/jumbo v5, " from uid_cputime module"

    .line 167
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 169
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    goto :goto_0

    :cond_1
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v1, "writer":Ljava/io/FileWriter;
    goto :goto_2

    .local v1, "writer":Ljava/io/FileWriter;
    :catch_2
    move-exception v3

    .end local v1    # "writer":Ljava/io/FileWriter;
    :goto_3
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_4
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    if-eqz v4, :cond_4

    :try_start_6
    throw v4

    .line 166
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    if-nez v4, :cond_3

    move-object v4, v5

    goto :goto_5

    :cond_3
    if-eq v4, v5, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .restart local v1    # "writer":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    goto :goto_4

    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .local v1, "writer":Ljava/io/FileWriter;
    goto :goto_4

    .end local v1    # "writer":Ljava/io/FileWriter;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_5
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/FileWriter;
    .restart local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_3
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 31
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    .prologue
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v12, v24, v26

    .line 69
    .local v12, "nowUs":J
    const/16 v24, 0x0

    const/4 v11, 0x0

    .local v11, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v25, "/proc/uid_cputime/show_uid_stat"

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .local v14, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v16, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x20

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 72
    .local v16, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_0
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 73
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v17

    .line 75
    .local v17, "uidStr":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 76
    .local v3, "uid":I
    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    .line 77
    .local v22, "userTimeUs":J
    invoke-virtual/range {v16 .. v16}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    const/16 v25, 0xa

    move/from16 v0, v25

    invoke-static {v2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v18

    .line 80
    .local v18, "systemTimeUs":J
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v2, v26, v28

    if-eqz v2, :cond_3

    .line 81
    move-wide/from16 v4, v22

    .line 82
    .local v4, "userTimeDeltaUs":J
    move-wide/from16 v6, v18

    .line 83
    .local v6, "systemTimeDeltaUs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v9

    .line 84
    .local v9, "index":I
    if-ltz v9, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    sub-long v4, v22, v26

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    sub-long v6, v18, v26

    .line 88
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v26, v0

    sub-long v20, v12, v26

    .line 89
    .local v20, "timeDiffUs":J
    const-wide/16 v26, 0x0

    cmp-long v2, v4, v26

    if-ltz v2, :cond_0

    const-wide/16 v26, 0x0

    cmp-long v2, v6, v26

    if-gez v2, :cond_1

    .line 90
    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Malformed cpu data for UID="

    invoke-direct {v15, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .local v15, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v25, "!\n"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string/jumbo v2, "Time between reads: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-wide/16 v26, 0x3e8

    div-long v26, v20, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 94
    const-string/jumbo v2, "\n"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v2, "Previous times: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 97
    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 100
    const-string/jumbo v2, "\nCurrent times: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-wide/16 v26, 0x3e8

    div-long v26, v22, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 102
    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-wide/16 v26, 0x3e8

    div-long v26, v18, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 104
    const-string/jumbo v2, "\nDelta: u="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-wide/16 v26, 0x3e8

    div-long v26, v4, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 106
    const-string/jumbo v2, " s="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-wide/16 v26, 0x3e8

    div-long v26, v6, v26

    move-wide/from16 v0, v26

    invoke-static {v0, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 108
    const-string/jumbo v2, "KernelUidCpuTimeReader"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-wide/16 v4, 0x0

    .line 111
    const-wide/16 v6, 0x0

    .line 115
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    .end local v20    # "timeDiffUs":J
    :cond_1
    const-wide/16 v26, 0x0

    cmp-long v2, v4, v26

    if-nez v2, :cond_2

    const-wide/16 v26, 0x0

    cmp-long v2, v6, v26

    if-eqz v2, :cond_3

    :cond_2
    move-object/from16 v2, p1

    .line 116
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJ)V

    .line 119
    .end local v4    # "userTimeDeltaUs":J
    .end local v6    # "systemTimeDeltaUs":J
    .end local v9    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_0

    .line 124
    .end local v3    # "uid":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v16    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v17    # "uidStr":Ljava/lang/String;
    .end local v18    # "systemTimeUs":J
    .end local v22    # "userTimeUs":J
    :catch_0
    move-exception v2

    move-object v11, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v24

    move-object/from16 v30, v24

    move-object/from16 v24, v2

    move-object/from16 v2, v30

    :goto_2
    if-eqz v11, :cond_4

    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_3
    if-eqz v24, :cond_9

    :try_start_4
    throw v24
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 122
    :catch_1
    move-exception v8

    .line 123
    .local v8, "e":Ljava/io/IOException;
    :goto_4
    const-string/jumbo v2, "KernelUidCpuTimeReader"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failed to read uid_cputime: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v8    # "e":Ljava/io/IOException;
    :goto_5
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 126
    return-void

    .line 124
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_5
    if-eqz v14, :cond_6

    :try_start_5
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_6
    :goto_6
    if-eqz v24, :cond_7

    :try_start_6
    throw v24
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 122
    :catch_2
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    move-object v11, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .local v11, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 124
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v24

    goto :goto_6

    :cond_7
    move-object v11, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v16    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_4
    move-exception v25

    if-nez v24, :cond_8

    move-object/from16 v24, v25

    goto :goto_3

    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_4

    :try_start_7
    invoke-virtual/range {v24 .. v25}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_9
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .local v11, "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v2

    goto :goto_2

    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v2

    move-object v11, v14

    .end local v14    # "reader":Ljava/io/BufferedReader;
    .local v11, "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .local v11, "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public removeUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 134
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 136
    iget-object v1, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 138
    :cond_0
    invoke-direct {p0, p1, p1}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    .line 139
    return-void
.end method

.method public removeUidsInRange(II)V
    .locals 6
    .param p1, "startUid"    # I
    .param p2, "endUid"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 147
    if-ge p2, p1, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 151
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 152
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 153
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 155
    .local v1, "startIndex":I
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    .line 156
    .local v0, "endIndex":I
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    .line 157
    iget-object v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseLongArray;->removeAtRange(II)V

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/KernelUidCpuTimeReader;->removeUidsFromKernelModule(II)V

    .line 159
    return-void
.end method
