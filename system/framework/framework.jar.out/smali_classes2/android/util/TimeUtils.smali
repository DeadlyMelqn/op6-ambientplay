.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLastUniqueCountry:Ljava/lang/String;

.field private static final sLastUniqueLockObj:Ljava/lang/Object;

.field private static sLastUniqueZoneOffsets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x1d

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    .line 42
    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;

    .line 43
    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 190
    new-array v0, v2, [C

    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 191
    new-array v0, v2, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 5
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 194
    const/16 v1, 0x3e7

    if-le p0, v1, :cond_1

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "num":I
    :goto_0
    if-eqz p0, :cond_0

    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 198
    div-int/lit8 p0, p0, 0xa

    goto :goto_0

    .line 200
    :cond_0
    add-int v1, v0, p1

    return v1

    .line 202
    .end local v0    # "num":I
    :cond_1
    const/16 v1, 0x63

    if-gt p0, v1, :cond_2

    if-eqz p2, :cond_3

    if-lt p3, v4, :cond_3

    .line 203
    :cond_2
    add-int/lit8 v1, p1, 0x3

    return v1

    .line 205
    :cond_3
    const/16 v1, 0x9

    if-gt p0, v1, :cond_4

    if-eqz p2, :cond_5

    if-lt p3, v3, :cond_5

    .line 206
    :cond_4
    add-int/lit8 v1, p1, 0x2

    return v1

    .line 208
    :cond_5
    if-nez p2, :cond_6

    if-lez p0, :cond_7

    .line 209
    :cond_6
    add-int/lit8 v1, p1, 0x1

    return v1

    .line 212
    :cond_7
    return v2
.end method

.method private static extractZoneIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/TimeZone;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "timeZones":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/TimeZone;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "timeZone$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/TimeZone;

    .line 129
    .local v1, "timeZone":Landroid/icu/util/TimeZone;
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v1    # "timeZone":Landroid/icu/util/TimeZone;
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 349
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 350
    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    return-void

    .line 353
    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 354
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 2
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 345
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 6
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .prologue
    .line 336
    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 337
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 338
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 340
    return-void

    .line 336
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 328
    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v2

    .line 329
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .line 330
    .local v0, "len":I
    sget-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 332
    return-void

    .line 328
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 22
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .prologue
    .line 256
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move/from16 v0, p2

    if-ge v4, v0, :cond_0

    .line 257
    move/from16 v0, p2

    new-array v4, v0, [C

    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 260
    :cond_0
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 262
    .local v2, "formatStr":[C
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-nez v4, :cond_2

    .line 263
    const/4 v5, 0x0

    .line 264
    .local v5, "pos":I
    add-int/lit8 p2, p2, -0x1

    move/from16 v16, v5

    .line 265
    .end local v5    # "pos":I
    .local v16, "pos":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    .line 266
    add-int/lit8 v5, v16, 0x1

    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    const/16 v4, 0x20

    aput-char v4, v2, v16

    move/from16 v16, v5

    .end local v5    # "pos":I
    .restart local v16    # "pos":I
    goto :goto_0

    .line 268
    :cond_1
    const/16 v4, 0x30

    aput-char v4, v2, v16

    .line 269
    add-int/lit8 v4, v16, 0x1

    return v4

    .line 273
    .end local v16    # "pos":I
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v4, p0, v6

    if-lez v4, :cond_6

    .line 274
    const/16 v17, 0x2b

    .line 280
    .local v17, "prefix":C
    :goto_1
    const-wide/16 v6, 0x3e8

    rem-long v6, p0, v6

    long-to-int v13, v6

    .line 281
    .local v13, "millis":I
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v18, v0

    .line 282
    .local v18, "seconds":I
    const/4 v3, 0x0

    .local v3, "days":I
    const/4 v12, 0x0

    .local v12, "hours":I
    const/4 v14, 0x0

    .line 284
    .local v14, "minutes":I
    const v4, 0x15180

    move/from16 v0, v18

    if-lt v0, v4, :cond_3

    .line 285
    const v4, 0x15180

    div-int v3, v18, v4

    .line 286
    const v4, 0x15180

    mul-int/2addr v4, v3

    sub-int v18, v18, v4

    .line 288
    :cond_3
    const/16 v4, 0xe10

    move/from16 v0, v18

    if-lt v0, v4, :cond_4

    .line 289
    move/from16 v0, v18

    div-int/lit16 v12, v0, 0xe10

    .line 290
    mul-int/lit16 v4, v12, 0xe10

    sub-int v18, v18, v4

    .line 292
    :cond_4
    const/16 v4, 0x3c

    move/from16 v0, v18

    if-lt v0, v4, :cond_5

    .line 293
    div-int/lit8 v14, v18, 0x3c

    .line 294
    mul-int/lit8 v4, v14, 0x3c

    sub-int v18, v18, v4

    .line 297
    :cond_5
    const/4 v5, 0x0

    .line 299
    .restart local v5    # "pos":I
    if-eqz p2, :cond_b

    .line 300
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v6, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    .line 301
    .local v15, "myLen":I
    if-lez v15, :cond_7

    const/4 v4, 0x1

    :goto_2
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v12, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 302
    if-lez v15, :cond_8

    const/4 v4, 0x1

    :goto_3
    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-static {v14, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 303
    if-lez v15, :cond_9

    const/4 v4, 0x1

    :goto_4
    const/4 v6, 0x1

    const/4 v7, 0x2

    move/from16 v0, v18

    invoke-static {v0, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/2addr v15, v4

    .line 304
    if-lez v15, :cond_a

    const/4 v4, 0x3

    :goto_5
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v13, v6, v7, v4}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    .line 305
    :goto_6
    move/from16 v0, p2

    if-ge v15, v0, :cond_b

    .line 306
    const/16 v4, 0x20

    aput-char v4, v2, v5

    .line 307
    add-int/lit8 v5, v5, 0x1

    .line 308
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 276
    .end local v3    # "days":I
    .end local v5    # "pos":I
    .end local v12    # "hours":I
    .end local v13    # "millis":I
    .end local v14    # "minutes":I
    .end local v15    # "myLen":I
    .end local v17    # "prefix":C
    .end local v18    # "seconds":I
    :cond_6
    const/16 v17, 0x2d

    .line 277
    .restart local v17    # "prefix":C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    goto/16 :goto_1

    .line 301
    .restart local v3    # "days":I
    .restart local v5    # "pos":I
    .restart local v12    # "hours":I
    .restart local v13    # "millis":I
    .restart local v14    # "minutes":I
    .restart local v15    # "myLen":I
    .restart local v18    # "seconds":I
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 302
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 303
    :cond_9
    const/4 v4, 0x0

    goto :goto_4

    .line 304
    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    .line 312
    .end local v15    # "myLen":I
    :cond_b
    aput-char v17, v2, v5

    .line 313
    add-int/lit8 v5, v5, 0x1

    .line 315
    move/from16 v19, v5

    .line 316
    .local v19, "start":I
    if-eqz p2, :cond_c

    const/16 v20, 0x1

    .line 317
    .local v20, "zeropad":Z
    :goto_7
    const/16 v4, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 318
    move/from16 v0, v19

    if-eq v5, v0, :cond_d

    const/4 v10, 0x1

    :goto_8
    if-eqz v20, :cond_e

    const/4 v11, 0x2

    :goto_9
    const/16 v8, 0x68

    move-object v6, v2

    move v7, v12

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 319
    move/from16 v0, v19

    if-eq v5, v0, :cond_f

    const/4 v10, 0x1

    :goto_a
    if-eqz v20, :cond_10

    const/4 v11, 0x2

    :goto_b
    const/16 v8, 0x6d

    move-object v6, v2

    move v7, v14

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 320
    move/from16 v0, v19

    if-eq v5, v0, :cond_11

    const/4 v10, 0x1

    :goto_c
    if-eqz v20, :cond_12

    const/4 v11, 0x2

    :goto_d
    const/16 v8, 0x73

    move-object v6, v2

    move/from16 v7, v18

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 321
    if-eqz v20, :cond_13

    move/from16 v0, v19

    if-eq v5, v0, :cond_13

    const/4 v11, 0x3

    :goto_e
    const/16 v8, 0x6d

    const/4 v10, 0x1

    move-object v6, v2

    move v7, v13

    move v9, v5

    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v5

    .line 322
    const/16 v4, 0x73

    aput-char v4, v2, v5

    .line 323
    add-int/lit8 v4, v5, 0x1

    return v4

    .line 316
    .end local v20    # "zeropad":Z
    :cond_c
    const/16 v20, 0x0

    .restart local v20    # "zeropad":Z
    goto :goto_7

    .line 318
    :cond_d
    const/4 v10, 0x0

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    goto :goto_9

    .line 319
    :cond_f
    const/4 v10, 0x0

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    goto :goto_b

    .line 320
    :cond_11
    const/4 v10, 0x0

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    goto :goto_d

    .line 321
    :cond_13
    const/4 v11, 0x0

    goto :goto_e
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 388
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 389
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 391
    :cond_0
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, p0, v2

    .line 359
    .local v0, "diff":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 362
    :cond_0
    cmp-long v2, v0, v4

    if-gez v2, :cond_1

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 365
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .locals 8
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    if-nez p4, :cond_0

    .line 70
    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v6

    .line 74
    .local v6, "bias":Landroid/icu/util/TimeZone;
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v0

    move-object v1, p4

    move v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Llibcore/util/TimeZoneFinder;->lookupTimeZoneByCountryAndOffset(Ljava/lang/String;IZJLandroid/icu/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private static getIcuTimeZones(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "countryIso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/TimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 147
    :cond_0
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1, p0}, Llibcore/util/TimeZoneFinder;->lookupTimeZonesByCountry(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 148
    .local v0, "timeZones":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/TimeZone;>;"
    if-nez v0, :cond_1

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 155
    :cond_1
    return-object v0
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 2
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 59
    .local v0, "icuTimeZone":Landroid/icu/util/TimeZone;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZoneIdsWithUniqueOffsets(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 87
    if-eqz p0, :cond_0

    :try_start_0
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-object v6

    :cond_0
    monitor-exit v7

    .line 96
    invoke-static {p0}, Landroid/util/TimeUtils;->getIcuTimeZones(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 97
    .local v5, "zones":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/util/TimeZone;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v2, "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/util/TimeZone;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "zone$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/TimeZone;

    .line 101
    .local v3, "zone":Landroid/icu/util/TimeZone;
    const/4 v0, 0x0

    .line 102
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 103
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/util/TimeZone;

    invoke-virtual {v6}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v6

    invoke-virtual {v3}, Landroid/icu/util/TimeZone;->getRawOffset()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 104
    const/4 v0, 0x1

    .line 108
    :cond_2
    if-nez v0, :cond_1

    .line 113
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/util/TimeZone;>;"
    .end local v3    # "zone":Landroid/icu/util/TimeZone;
    .end local v4    # "zone$iterator":Ljava/util/Iterator;
    .end local v5    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/util/TimeZone;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 102
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    .restart local v2    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/util/TimeZone;>;"
    .restart local v3    # "zone":Landroid/icu/util/TimeZone;
    .restart local v4    # "zone$iterator":Ljava/util/Iterator;
    .restart local v5    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/util/TimeZone;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v3    # "zone":Landroid/icu/util/TimeZone;
    :cond_4
    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    monitor-enter v7

    .line 119
    :try_start_1
    invoke-static {v2}, Landroid/util/TimeUtils;->extractZoneIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;

    .line 120
    sput-object p0, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    .line 122
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v7

    return-object v6

    .line 117
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .locals 4
    .param p0, "millis"    # J

    .prologue
    .line 377
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 378
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-ltz v1, :cond_0

    .line 379
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 380
    const-string/jumbo v1, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v3, 0x5

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 382
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printFieldLocked([CICIZI)I
    .locals 5
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .prologue
    .line 217
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    .line 218
    :cond_0
    move v1, p3

    .line 219
    .local v1, "startPos":I
    const/16 v3, 0x3e7

    if-le p1, v3, :cond_2

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "tmp":I
    :goto_0
    if-eqz p1, :cond_1

    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 222
    rem-int/lit8 v0, p1, 0xa

    .line 223
    .local v0, "dig":I
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 v4, v0, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 224
    add-int/lit8 v2, v2, 0x1

    .line 225
    div-int/lit8 p1, p1, 0xa

    goto :goto_0

    .line 227
    .end local v0    # "dig":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 228
    :goto_1
    if-ltz v2, :cond_6

    .line 229
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v3, v3, v2

    aput-char v3, p0, p3

    .line 230
    add-int/lit8 p3, p3, 0x1

    .line 231
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 234
    .end local v2    # "tmp":I
    :cond_2
    if-eqz p4, :cond_8

    const/4 v3, 0x3

    if-lt p5, v3, :cond_8

    .line 235
    :goto_2
    div-int/lit8 v0, p1, 0x64

    .line 236
    .restart local v0    # "dig":I
    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 237
    add-int/lit8 p3, p3, 0x1

    .line 238
    mul-int/lit8 v3, v0, 0x64

    sub-int/2addr p1, v3

    .line 240
    .end local v0    # "dig":I
    :cond_3
    if-eqz p4, :cond_9

    const/4 v3, 0x2

    if-lt p5, v3, :cond_9

    .line 241
    :cond_4
    :goto_3
    div-int/lit8 v0, p1, 0xa

    .line 242
    .restart local v0    # "dig":I
    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 243
    add-int/lit8 p3, p3, 0x1

    .line 244
    mul-int/lit8 v3, v0, 0xa

    sub-int/2addr p1, v3

    .line 246
    .end local v0    # "dig":I
    :cond_5
    add-int/lit8 v3, p1, 0x30

    int-to-char v3, v3

    aput-char v3, p0, p3

    .line 247
    add-int/lit8 p3, p3, 0x1

    .line 249
    :cond_6
    aput-char p2, p0, p3

    .line 250
    add-int/lit8 p3, p3, 0x1

    .line 252
    .end local v1    # "startPos":I
    :cond_7
    return p3

    .line 234
    .restart local v1    # "startPos":I
    :cond_8
    const/16 v3, 0x63

    if-le p1, v3, :cond_3

    goto :goto_2

    .line 240
    :cond_9
    const/16 v3, 0x9

    if-gt p1, v3, :cond_4

    if-eq v1, p3, :cond_5

    goto :goto_3
.end method
