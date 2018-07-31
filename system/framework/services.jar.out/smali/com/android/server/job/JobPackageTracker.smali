.class public final Lcom/android/server/job/JobPackageTracker;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobPackageTracker$DataSet;,
        Lcom/android/server/job/JobPackageTracker$PackageEntry;
    }
.end annotation


# static fields
.field static final BATCHING_TIME:J = 0x1b7740L

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final EVENT_CMD_MASK:I = 0xff

.field public static final EVENT_NULL:I = 0x0

.field public static final EVENT_START_JOB:I = 0x1

.field public static final EVENT_START_PERIODIC_JOB:I = 0x3

.field public static final EVENT_STOP_JOB:I = 0x2

.field public static final EVENT_STOP_PERIODIC_JOB:I = 0x4

.field public static final EVENT_STOP_REASON_MASK:I = 0xff00

.field public static final EVENT_STOP_REASON_SHIFT:I = 0x8

.field static final NUM_HISTORY:I = 0x5


# instance fields
.field mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

.field private final mEventCmds:[I

.field private final mEventIndices:Lcom/android/internal/util/RingBufferIndices;

.field private final mEventJobIds:[I

.field private final mEventTags:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private final mEventUids:[I

.field mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/android/internal/util/RingBufferIndices;

    invoke-direct {v0, v1}, Lcom/android/internal/util/RingBufferIndices;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    .line 51
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    .line 52
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    .line 53
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    .line 54
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    .line 55
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    .line 66
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 67
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/job/JobPackageTracker$DataSet;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 33
    return-void
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;II)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "uid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "jobId"    # I
    .param p5, "stopReason"    # I

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBufferIndices;->add()I

    move-result v0

    .line 59
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    shl-int/lit8 v2, p5, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, p1

    aput v2, v1, v0

    .line 60
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 61
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aput p2, v1, v0

    .line 62
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 63
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aput p4, v1, v0

    .line 64
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filterUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 449
    .local v4, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 451
    .local v6, "nowEllapsed":J
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 452
    new-instance v10, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v1

    invoke-direct {v10, v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 453
    .local v10, "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v1

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 458
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v9

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v0, v0, v9

    const-string/jumbo v2, "Historical stats"

    move-object v1, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 461
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 458
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 455
    .end local v9    # "i":I
    .end local v10    # "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    :cond_1
    new-instance v10, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v10, v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .restart local v10    # "total":Lcom/android/server/job/JobPackageTracker$DataSet;
    goto :goto_0

    .line 464
    .restart local v9    # "i":I
    :cond_2
    const-string/jumbo v2, "Current stats"

    move-object v0, v10

    move-object v1, p1

    move-object v3, p2

    move v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 465
    return-void
.end method

.method public dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filterUid"    # I

    .prologue
    const/4 v9, 0x0

    .line 468
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBufferIndices;->size()I

    move-result v6

    .line 469
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 470
    return v9

    .line 472
    :cond_0
    const-string/jumbo v8, "  Job history:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 474
    .local v4, "now":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_5

    .line 475
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v8, v1}, Lcom/android/internal/util/RingBufferIndices;->indexOf(I)I

    move-result v2

    .line 476
    .local v2, "index":I
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v7, v8, v2

    .line 477
    .local v7, "uid":I
    const/4 v8, -0x1

    if-eq p3, v8, :cond_2

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    if-eq p3, v8, :cond_2

    .line 474
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    :cond_2
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v8, v8, v2

    and-int/lit16 v0, v8, 0xff

    .line 481
    .local v0, "cmd":I
    if-eqz v0, :cond_1

    .line 485
    packed-switch v0, :pswitch_data_0

    .line 490
    const-string/jumbo v3, "     ??"

    .line 492
    .local v3, "label":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 493
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v8, v8, v2

    sub-long/2addr v8, v4

    const/16 v10, 0x13

    invoke-static {v8, v9, p1, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 494
    const-string/jumbo v8, " "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    const-string/jumbo v8, ": #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    invoke-static {p1, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 498
    const-string/jumbo v8, "/"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 500
    const-string/jumbo v8, " "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    const/4 v8, 0x2

    if-eq v0, v8, :cond_3

    const/4 v8, 0x4

    if-ne v0, v8, :cond_4

    .line 503
    :cond_3
    const-string/jumbo v8, " "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v8, v8, v2

    const v9, 0xff00

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x8

    invoke-static {v8}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 507
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 486
    .end local v3    # "label":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v3, "  START"

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_2

    .line 487
    .end local v3    # "label":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v3, "   STOP"

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_2

    .line 488
    .end local v3    # "label":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v3, "START-P"

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_2

    .line 489
    .end local v3    # "label":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v3, " STOP-P"

    .restart local v3    # "label":Ljava/lang/String;
    goto :goto_2

    .line 509
    .end local v0    # "cmd":I
    .end local v2    # "index":I
    .end local v3    # "label":Ljava/lang/String;
    .end local v7    # "uid":I
    :cond_5
    const/4 v8, 0x1

    return v8

    .line 485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F
    .locals 14
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v7

    .line 428
    .local v7, "uid":I
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    .line 429
    .local v6, "pkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v10, v7, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v0

    .line 430
    .local v0, "cur":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10, v7, v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v1

    .line 431
    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 432
    const/4 v10, 0x0

    return v10

    .line 430
    :cond_0
    const/4 v1, 0x0

    .local v1, "last":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    goto :goto_0

    .line 434
    .end local v1    # "last":Lcom/android/server/job/JobPackageTracker$PackageEntry;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 435
    .local v2, "now":J
    const-wide/16 v8, 0x0

    .line 436
    .local v8, "time":J
    if-eqz v0, :cond_2

    .line 437
    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v10

    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 435
    const-wide/16 v12, 0x0

    .line 437
    add-long v8, v12, v10

    .line 439
    :cond_2
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v10, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v4

    .line 440
    .local v4, "period":J
    if-eqz v1, :cond_3

    .line 441
    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v10

    invoke-virtual {v1, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 442
    iget-object v10, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 444
    :cond_3
    long-to-float v10, v8

    long-to-float v11, v4

    div-float/2addr v10, v11

    return v10
.end method

.method public noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 8
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 392
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 393
    .local v6, "now":J
    iput-wide v6, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 394
    invoke-virtual {p0, v6, v7}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 395
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActiveTop(ILjava/lang/String;J)V

    .line 400
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 401
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 400
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;II)V

    .line 402
    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActive(ILjava/lang/String;J)V

    goto :goto_0

    .line 400
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public noteConcurrency(II)V
    .locals 1
    .param p1, "totalActive"    # I
    .param p2, "fgActive"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le p1, v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput p1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le p2, v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput p2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 424
    :cond_1
    return-void
.end method

.method public noteInactive(Lcom/android/server/job/controllers/JobStatus;I)V
    .locals 12
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "stopReason"    # I

    .prologue
    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 406
    .local v4, "now":J
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActiveTop(ILjava/lang/String;JI)V

    .line 412
    :goto_0
    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 413
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x2

    .line 414
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v10

    move-object v6, p0

    move v11, p2

    .line 413
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;II)V

    .line 415
    return-void

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActive(ILjava/lang/String;JI)V

    goto :goto_0

    .line 413
    :cond_1
    const/4 v7, 0x4

    goto :goto_1
.end method

.method public noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 387
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->decPending(ILjava/lang/String;J)V

    .line 388
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 389
    return-void
.end method

.method public notePending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 379
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 380
    .local v0, "now":J
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    .line 381
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 382
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incPending(ILjava/lang/String;J)V

    .line 383
    return-void
.end method

.method rebatchIfNeeded(J)V
    .locals 9
    .param p1, "now"    # J

    .prologue
    const/4 v7, 0x0

    .line 367
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v2

    .line 368
    .local v2, "totalTime":J
    const-wide/32 v4, 0x1b7740

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 370
    .local v0, "last":Lcom/android/server/job/JobPackageTracker$DataSet;
    iput-wide v2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 371
    new-instance v1, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v1}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 372
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 373
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    invoke-static {v1, v7, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aput-object v0, v1, v7

    .line 376
    .end local v0    # "last":Lcom/android/server/job/JobPackageTracker$DataSet;
    :cond_0
    return-void
.end method
