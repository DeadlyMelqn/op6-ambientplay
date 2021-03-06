.class public Lcom/android/internal/os/KernelWakelockReader;
.super Ljava/lang/Object;
.source "KernelWakelockReader.java"


# static fields
.field private static final PROC_WAKELOCKS_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "KernelWakelockReader"

.field private static final WAKEUP_SOURCES_FORMAT:[I

.field private static sKernelWakelockUpdateVersion:I = 0x0

.field private static final sWakelockFile:Ljava/lang/String; = "/proc/wakelocks"

.field private static final sWakeupSourceFile:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private final mProcWakelocksData:[J

.field private final mProcWakelocksName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 30
    return-void

    .line 36
    :array_0
    .array-data 4
        0x1409
        0x2009
        0x9
        0x9
        0x9
        0x2009
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x1009
        0x2109
        0x109
        0x109
        0x109
        0x109
        0x2109
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 59
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 30
    return-void
.end method


# virtual methods
.method public parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 24
    .param p1, "wlBuffer"    # [B
    .param p2, "len"    # I
    .param p3, "wakeup_sources"    # Z
    .param p4, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .prologue
    .line 129
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_0

    aget-byte v2, p1, v11

    const/16 v5, 0xa

    if-eq v2, v5, :cond_0

    aget-byte v2, p1, v11

    if-eqz v2, :cond_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 130
    :cond_0
    add-int/lit8 v4, v11, 0x1

    .local v4, "endIndex":I
    move v3, v4

    .line 132
    .local v3, "startIndex":I
    monitor-enter p0

    .line 133
    :try_start_0
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 134
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_2

    .line 135
    move v4, v3

    .line 136
    :goto_2
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    aget-byte v2, p1, v4

    const/16 v5, 0xa

    if-eq v2, v5, :cond_1

    aget-byte v2, p1, v4

    if-eqz v2, :cond_1

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 140
    :cond_1
    add-int/lit8 v2, p2, -0x1

    if-le v4, v2, :cond_4

    .line 199
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/os/KernelWakelockStats;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 200
    .local v12, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_3
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 201
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    iget v2, v2, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-eq v2, v5, :cond_3

    .line 202
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 132
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 144
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksName:[Ljava/lang/String;

    .line 145
    .local v6, "nameStringArray":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/KernelWakelockReader;->mProcWakelocksData:[J

    .line 149
    .local v7, "wlData":[J
    move v13, v3

    .local v13, "j":I
    :goto_4
    if-ge v13, v4, :cond_6

    .line 150
    aget-byte v2, p1, v13

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_5

    const/16 v2, 0x3f

    aput-byte v2, p1, v13

    .line 149
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 153
    :cond_6
    if-eqz p3, :cond_8

    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->WAKEUP_SOURCES_FORMAT:[I

    .line 155
    :goto_5
    const/4 v8, 0x0

    move-object/from16 v2, p1

    .line 152
    invoke-static/range {v2 .. v8}, Landroid/os/Process;->parseProcLine([BII[I[Ljava/lang/String;[J[F)Z

    move-result v16

    .line 157
    .local v16, "parsed":Z
    const/4 v2, 0x0

    aget-object v15, v6, v2

    .line 160
    .local v15, "name":Ljava/lang/String;
    const/16 v2, 0x2c

    const/16 v5, 0x3b

    invoke-virtual {v15, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    .line 162
    const/4 v2, 0x1

    aget-wide v20, v7, v2

    move-wide/from16 v0, v20

    long-to-int v9, v0

    .line 164
    .local v9, "count":I
    if-eqz p3, :cond_9

    .line 166
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x3e8

    mul-long v18, v20, v22

    .line 172
    .local v18, "totalTime":J
    :goto_6
    if-eqz v16, :cond_c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 173
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 174
    new-instance v2, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 175
    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    .line 174
    move-wide/from16 v0, v18

    invoke-direct {v2, v9, v0, v1, v5}, Lcom/android/internal/os/KernelWakelockStats$Entry;-><init>(IJI)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v15, v2}, Lcom/android/internal/os/KernelWakelockStats;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_7
    :goto_7
    add-int/lit8 v3, v4, 0x1

    goto/16 :goto_1

    .line 154
    .end local v9    # "count":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsed":Z
    .end local v18    # "totalTime":J
    :cond_8
    sget-object v5, Lcom/android/internal/os/KernelWakelockReader;->PROC_WAKELOCKS_FORMAT:[I

    goto :goto_5

    .line 169
    .restart local v9    # "count":I
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "parsed":Z
    :cond_9
    const/4 v2, 0x2

    aget-wide v20, v7, v2

    const-wide/16 v22, 0x1f4

    add-long v20, v20, v22

    const-wide/16 v22, 0x3e8

    div-long v18, v20, v22

    .restart local v18    # "totalTime":J
    goto :goto_6

    .line 177
    :cond_a
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/android/internal/os/KernelWakelockStats;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/KernelWakelockStats$Entry;

    .line 178
    .local v14, "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I

    sget v5, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    if-ne v2, v5, :cond_b

    .line 179
    iget v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    add-int/2addr v2, v9

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 180
    iget-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    move-wide/from16 v20, v0

    add-long v20, v20, v18

    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    goto :goto_7

    .line 182
    :cond_b
    iput v9, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mCount:I

    .line 183
    move-wide/from16 v0, v18

    iput-wide v0, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mTotalTime:J

    .line 184
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    iput v2, v14, Lcom/android/internal/os/KernelWakelockStats$Entry;->mVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 187
    .end local v14    # "kwlStats":Lcom/android/internal/os/KernelWakelockStats$Entry;
    :cond_c
    if-nez v16, :cond_7

    .line 189
    :try_start_2
    const-string/jumbo v2, "KernelWakelockReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse proc line: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 190
    new-instance v8, Ljava/lang/String;

    sub-int v17, v4, v3

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-direct {v8, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 189
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 191
    :catch_0
    move-exception v10

    .line 192
    .local v10, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v2, "KernelWakelockReader"

    const-string/jumbo v5, "Failed to parse proc line!"

    invoke-static {v2, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 206
    .end local v6    # "nameStringArray":[Ljava/lang/String;
    .end local v7    # "wlData":[J
    .end local v9    # "count":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "j":I
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "parsed":Z
    .end local v18    # "totalTime":J
    .restart local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/os/KernelWakelockStats$Entry;>;"
    :cond_d
    sget v2, Lcom/android/internal/os/KernelWakelockReader;->sKernelWakelockUpdateVersion:I

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/internal/os/KernelWakelockStats;->kernelWakelockVersion:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    .line 207
    return-object p4
.end method

.method public final readKernelWakelockStats(Lcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;
    .locals 17
    .param p1, "staleStats"    # Lcom/android/internal/os/KernelWakelockStats;

    .prologue
    .line 67
    const v14, 0x8000

    new-array v2, v14, [B

    .line 70
    .local v2, "buffer":[B
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 75
    .local v12, "startTime":J
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    const-string/jumbo v14, "/proc/wakelocks"

    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    .local v7, "is":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 88
    .local v9, "wakeup_sources":Z
    :goto_0
    :try_start_1
    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 89
    .local v8, "len":I
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v10, v14, v12

    .line 96
    .local v10, "readTime":J
    const-wide/16 v14, 0x64

    cmp-long v14, v10, v14

    if-lez v14, :cond_0

    .line 97
    const-string/jumbo v14, "KernelWakelockReader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Reading wakelock stats took "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "ms"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    if-lez v8, :cond_2

    .line 101
    array-length v14, v2

    if-lt v8, v14, :cond_1

    .line 102
    const-string/jumbo v14, "KernelWakelockReader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Kernel wake locks exceeded buffer size "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    array-length v0, v2

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 106
    aget-byte v14, v2, v6

    if-nez v14, :cond_3

    .line 107
    move v8, v6

    .line 112
    .end local v6    # "i":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v8, v9, v1}, Lcom/android/internal/os/KernelWakelockReader;->parseProcWakelocks([BIZLcom/android/internal/os/KernelWakelockStats;)Lcom/android/internal/os/KernelWakelockStats;

    move-result-object v14

    return-object v14

    .line 77
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v8    # "len":I
    .end local v9    # "wakeup_sources":Z
    .end local v10    # "readTime":J
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    const-string/jumbo v14, "/d/wakeup_sources"

    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .restart local v7    # "is":Ljava/io/FileInputStream;
    const/4 v9, 0x1

    .restart local v9    # "wakeup_sources":Z
    goto :goto_0

    .line 81
    .end local v7    # "is":Ljava/io/FileInputStream;
    .end local v9    # "wakeup_sources":Z
    :catch_1
    move-exception v5

    .line 82
    .local v5, "e2":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string/jumbo v14, "KernelWakelockReader"

    const-string/jumbo v15, "neither /proc/wakelocks nor /d/wakeup_sources exists"

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 84
    const/4 v14, 0x0

    return-object v14

    .line 90
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e2":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 91
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v14, "KernelWakelockReader"

    const-string/jumbo v15, "failed to read kernel wakelocks"

    invoke-static {v14, v15, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v14, 0x0

    return-object v14

    .line 105
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "i":I
    .restart local v7    # "is":Ljava/io/FileInputStream;
    .restart local v8    # "len":I
    .restart local v9    # "wakeup_sources":Z
    .restart local v10    # "readTime":J
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method
