.class public final Lcom/android/internal/app/procstats/ProcessState;
.super Ljava/lang/Object;
.source "ProcessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/procstats/ProcessState$1;,
        Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/app/procstats/ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEBUG_PARCEL:Z = false

.field private static final PROCESS_STATE_TO_STATE:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field private mActive:Z

.field private mAvgCachedKillPss:J

.field private mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

.field private mCurState:I

.field private mDead:Z

.field private final mDurations:Lcom/android/internal/app/procstats/DurationsTable;

.field private mLastPssState:I

.field private mLastPssTime:J

.field private mMaxCachedKillPss:J

.field private mMinCachedKillPss:J

.field private mMultiPackage:Z

.field private final mName:Ljava/lang/String;

.field private mNumActiveServices:I

.field private mNumCachedKill:I

.field private mNumExcessiveCpu:I

.field private mNumExcessiveWake:I

.field private mNumStartedServices:I

.field private final mPackage:Ljava/lang/String;

.field private final mPssTable:Lcom/android/internal/app/procstats/PssTable;

.field private mStartTime:J

.field private final mStats:Lcom/android/internal/app/procstats/ProcessStats;

.field private mTmpTotalTime:J

.field private final mUid:I

.field private final mVersion:I

.field public tmpFoundSubProc:Lcom/android/internal/app/procstats/ProcessState;

.field public tmpNumInUse:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/procstats/ProcessState;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/internal/app/procstats/ProcessState;

    .prologue
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    .line 101
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState$1;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessState$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/procstats/ProcessState;->COMPARATOR:Ljava/util/Comparator;

    .line 74
    return-void

    .line 80
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/procstats/ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "now"    # J

    .prologue
    const/4 v0, -0x1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 140
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 183
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 184
    iput-object p5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 186
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 187
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 188
    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 189
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 190
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 191
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 192
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 193
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p1, "processStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 140
    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 166
    iput-object p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 167
    iput-object p5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 168
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 169
    iput-object p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 170
    iput p3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 171
    iput p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 172
    new-instance v0, Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    .line 173
    new-instance v0, Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats;->mTableData:Lcom/android/internal/app/procstats/SparseMappingTable;

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/PssTable;-><init>(Lcom/android/internal/app/procstats/SparseMappingTable;)V

    iput-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    .line 174
    return-void
.end method

.method private addCachedKill(IJJJ)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    .prologue
    .line 506
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 507
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 508
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 509
    iput-wide p4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 510
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 522
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 513
    iput-wide p2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 515
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    .line 516
    iput-wide p6, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 518
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    .line 519
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    .line 518
    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 520
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    goto :goto_0
.end method

.method private dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 13
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "screenStates"    # [I
    .param p5, "memStates"    # [I
    .param p6, "procStates"    # [I
    .param p7, "now"    # J
    .param p9, "totalTime"    # J
    .param p11, "full"    # Z

    .prologue
    .line 916
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v6, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 918
    .local v6, "totals":Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    move-wide/from16 v0, p7

    invoke-virtual {p0, v6, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 919
    iget-wide v8, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    long-to-double v8, v8

    move-wide/from16 v0, p9

    long-to-double v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double v4, v8, v10

    .line 921
    .local v4, "percentage":D
    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v7, v4, v8

    if-gez v7, :cond_0

    iget-wide v8, v6, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    .line 922
    :cond_0
    if-eqz p2, :cond_1

    .line 923
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 925
    :cond_1
    if-eqz p3, :cond_2

    .line 926
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    :cond_2
    move-wide/from16 v0, p9

    move/from16 v2, p11

    invoke-virtual {v6, p1, v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 929
    if-eqz p2, :cond_3

    .line 930
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 933
    :cond_3
    return-void
.end method

.method private ensureNotDead()V
    .locals 3

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    .line 276
    return-void

    .line 278
    :cond_0
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    const-string/jumbo v2, " pkg="

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    const-string/jumbo v2, " uid="

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    const-string/jumbo v2, " common.name="

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;
    .locals 10
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/procstats/ProcessState;"
        }
    .end annotation

    .prologue
    .line 563
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 564
    .local v0, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 565
    .local v2, "proc":Lcom/android/internal/app/procstats/ProcessState;
    iget-boolean v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v5, v2, :cond_0

    .line 570
    const-string/jumbo v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Pulling dead proc: name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 571
    const-string/jumbo v7, " uid="

    .line 570
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 571
    iget v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 570
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 571
    const-string/jumbo v7, " common.name="

    .line 570
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 571
    iget-object v7, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v7, v7, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 570
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, v2, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget v8, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 573
    iget-object v9, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 572
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v2

    .line 575
    :cond_0
    iget-boolean v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v5, :cond_4

    .line 579
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, v5, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 580
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 579
    invoke-virtual {v6, v5, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 581
    .local v4, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v4, :cond_1

    .line 582
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No existing package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 583
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 582
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 583
    const-string/jumbo v7, "/"

    .line 582
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 583
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 582
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 584
    const-string/jumbo v7, " for multi-proc "

    .line 582
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 584
    iget-object v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 582
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 586
    :cond_1
    iget v5, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 587
    .local v1, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-nez v1, :cond_2

    .line 588
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No existing package "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 589
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 588
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 589
    const-string/jumbo v7, "/"

    .line 588
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 589
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 588
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 590
    const-string/jumbo v7, " for multi-proc "

    .line 588
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 590
    iget-object v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 588
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 590
    const-string/jumbo v7, " version "

    .line 588
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 590
    iget v7, v2, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 588
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 592
    :cond_2
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 593
    .local v3, "savedName":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v6, v2, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    check-cast v2, Lcom/android/internal/app/procstats/ProcessState;

    .line 594
    .restart local v2    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v2, :cond_3

    .line 595
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Didn\'t create per-package process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 596
    const-string/jumbo v7, " in pkg "

    .line 595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 596
    iget-object v7, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    .line 595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 596
    const-string/jumbo v7, "/"

    .line 595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 596
    iget v7, v1, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mUid:I

    .line 595
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 598
    :cond_3
    iput-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 600
    .end local v1    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v3    # "savedName":Ljava/lang/String;
    .end local v4    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_4
    return-object v2
.end method


# virtual methods
.method public add(Lcom/android/internal/app/procstats/ProcessState;)V
    .locals 8
    .param p1, "other"    # Lcom/android/internal/app/procstats/ProcessState;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(Lcom/android/internal/app/procstats/PssTable;)V

    .line 252
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 253
    iget v0, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_0

    .line 254
    iget v1, p1, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iget-wide v2, p1, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 255
    iget-wide v4, p1, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iget-wide v6, p1, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    move-object v0, p0

    .line 254
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 257
    :cond_0
    return-void
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p6, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 467
    if-nez p5, :cond_0

    .line 468
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v3, v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 469
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    .line 468
    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 470
    return-void

    .line 473
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 474
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 475
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v3, :cond_1

    .line 481
    return-void

    .line 484
    :cond_1
    if-eqz p6, :cond_2

    .line 485
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_2

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/procstats/PssTable;->mergeStats(IIJJJJJJ)V

    .line 485
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 491
    .end local v2    # "ip":I
    :cond_2
    return-void
.end method

.method public aggregatePss(Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 30
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;
    .param p2, "now"    # J

    .prologue
    .line 646
    new-instance v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v11}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 647
    .local v11, "fgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v7}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 648
    .local v7, "bgPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    new-instance v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;

    invoke-direct {v8}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;-><init>()V

    .line 649
    .local v8, "cachedPss":Lcom/android/internal/app/procstats/ProcessState$PssAggr;
    const/4 v12, 0x0

    .line 650
    .local v12, "havePss":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_3

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v14

    .line 652
    .local v14, "key":I
    invoke-static {v14}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v22

    .line 653
    .local v22, "type":I
    rem-int/lit8 v15, v22, 0xe

    .line 654
    .local v15, "procState":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v18

    .line 655
    .local v18, "samples":J
    const-wide/16 v24, 0x0

    cmp-long v23, v18, v24

    if-lez v23, :cond_0

    .line 656
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 657
    .local v4, "avg":J
    const/4 v12, 0x1

    .line 658
    const/16 v23, 0x2

    move/from16 v0, v23

    if-gt v15, v0, :cond_1

    .line 659
    move-wide/from16 v0, v18

    invoke-virtual {v11, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 650
    .end local v4    # "avg":J
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 660
    .restart local v4    # "avg":J
    :cond_1
    const/16 v23, 0x8

    move/from16 v0, v23

    if-gt v15, v0, :cond_2

    .line 661
    move-wide/from16 v0, v18

    invoke-virtual {v7, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 663
    :cond_2
    move-wide/from16 v0, v18

    invoke-virtual {v8, v4, v5, v0, v1}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    goto :goto_1

    .line 667
    .end local v4    # "avg":J
    .end local v14    # "key":I
    .end local v15    # "procState":I
    .end local v18    # "samples":J
    .end local v22    # "type":I
    :cond_3
    if-nez v12, :cond_4

    .line 668
    return-void

    .line 670
    :cond_4
    const/4 v9, 0x0

    .line 671
    .local v9, "fgHasBg":Z
    const/4 v10, 0x0

    .line 672
    .local v10, "fgHasCached":Z
    const/4 v6, 0x0

    .line 673
    .local v6, "bgHasCached":Z
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_5

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_5

    .line 674
    const/4 v9, 0x1

    .line 675
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 677
    :cond_5
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_6

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_6

    .line 678
    const/4 v10, 0x1

    .line 679
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v11, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 681
    :cond_6
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_7

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_7

    .line 682
    const/4 v6, 0x1

    .line 683
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 685
    :cond_7
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_8

    xor-int/lit8 v23, v9, 0x1

    if-eqz v23, :cond_8

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_8

    .line 686
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 688
    :cond_8
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_9

    xor-int/lit8 v23, v6, 0x1

    if-eqz v23, :cond_9

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_9

    .line 689
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 691
    :cond_9
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x3

    cmp-long v23, v24, v26

    if-gez v23, :cond_a

    xor-int/lit8 v23, v10, 0x1

    if-eqz v23, :cond_a

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_a

    .line 692
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    move-wide/from16 v24, v0

    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->add(JJ)V

    .line 694
    :cond_a
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v13, v0, :cond_f

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v14

    .line 696
    .restart local v14    # "key":I
    invoke-static {v14}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v22

    .line 697
    .restart local v22    # "type":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v20

    .line 698
    .local v20, "time":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 699
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    move-wide/from16 v24, v0

    sub-long v24, p2, v24

    add-long v20, v20, v24

    .line 701
    :cond_b
    rem-int/lit8 v15, v22, 0xe

    .line 702
    .restart local v15    # "procState":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateTime:[J

    move-object/from16 v23, v0

    aget-wide v24, v23, v15

    add-long v24, v24, v20

    aput-wide v24, v23, v15

    .line 703
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v18

    .line 705
    .restart local v18    # "samples":J
    const-wide/16 v24, 0x0

    cmp-long v23, v18, v24

    if-lez v23, :cond_c

    .line 706
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 717
    .restart local v4    # "avg":J
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v23, v0

    aget-wide v24, v23, v15

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 718
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v23, v0

    aget v23, v23, v15

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    .line 717
    mul-double v24, v24, v26

    .line 719
    long-to-double v0, v4

    move-wide/from16 v26, v0

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    .line 717
    add-double v24, v24, v26

    .line 720
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v23, v0

    aget v23, v23, v15

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v26, v26, v18

    move-wide/from16 v0, v26

    long-to-double v0, v0

    move-wide/from16 v26, v0

    .line 717
    div-double v16, v24, v26

    .line 721
    .local v16, "newAvg":D
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStatePss:[J

    move-object/from16 v23, v0

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v24, v0

    aput-wide v24, v23, v15

    .line 722
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateSamples:[I

    move-object/from16 v23, v0

    aget v24, v23, v15

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v18

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    aput v24, v23, v15

    .line 723
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    move-object/from16 v23, v0

    aget-wide v24, v23, v15

    long-to-double v0, v4

    move-wide/from16 v26, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    aput-wide v24, v23, v15

    .line 694
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 707
    .end local v4    # "avg":J
    .end local v16    # "newAvg":D
    :cond_c
    const/16 v23, 0x2

    move/from16 v0, v23

    if-gt v15, v0, :cond_d

    .line 708
    iget-wide v0, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v18, v0

    .line 709
    iget-wide v4, v11, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_3

    .line 710
    .end local v4    # "avg":J
    :cond_d
    const/16 v23, 0x8

    move/from16 v0, v23

    if-gt v15, v0, :cond_e

    .line 711
    iget-wide v0, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v18, v0

    .line 712
    iget-wide v4, v7, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_3

    .line 714
    .end local v4    # "avg":J
    :cond_e
    iget-wide v0, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->samples:J

    move-wide/from16 v18, v0

    .line 715
    iget-wide v4, v8, Lcom/android/internal/app/procstats/ProcessState$PssAggr;->pss:J

    .restart local v4    # "avg":J
    goto/16 :goto_3

    .line 725
    .end local v4    # "avg":J
    .end local v14    # "key":I
    .end local v15    # "procState":I
    .end local v18    # "samples":J
    .end local v20    # "time":J
    .end local v22    # "type":I
    :cond_f
    return-void
.end method

.method public clone(J)Lcom/android/internal/app/procstats/ProcessState;
    .locals 9
    .param p1, "now"    # J

    .prologue
    .line 196
    new-instance v0, Lcom/android/internal/app/procstats/ProcessState;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    move-object v1, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 197
    .local v0, "pnew":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/DurationsTable;->addDurations(Lcom/android/internal/app/procstats/DurationsTable;)V

    .line 198
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/procstats/PssTable;->copyFrom(Lcom/android/internal/app/procstats/SparseMappingTable$Table;I)V

    .line 199
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 200
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 201
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 202
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 203
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 204
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 205
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 206
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 207
    return-object v0
.end method

.method public commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 388
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 389
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v0, p1, v2

    .line 390
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/app/procstats/DurationsTable;->addDuration(IJ)V

    .line 394
    .end local v0    # "dur":J
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 395
    return-void
.end method

.method public computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V
    .locals 28
    .param p1, "data"    # Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;
    .param p2, "now"    # J

    .prologue
    .line 965
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 967
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 966
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 968
    const/4 v11, 0x0

    .local v11, "is":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_8

    .line 969
    const/4 v9, 0x0

    .local v9, "im":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v9, v0, :cond_7

    .line 970
    const/4 v10, 0x0

    .local v10, "ip":I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_6

    .line 971
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    add-int v22, v22, v23

    mul-int/lit8 v22, v22, 0xe

    .line 972
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v23, v0

    aget v23, v23, v10

    .line 971
    add-int v8, v22, v23

    .line 973
    .local v8, "bucket":I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 974
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v20

    .line 975
    .local v20, "samples":J
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_1

    .line 976
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v16

    .line 977
    .local v16, "minPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v4

    .line 978
    .local v4, "avgPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v12

    .line 979
    .local v12, "maxPss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v18

    .line 980
    .local v18, "minUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v6

    .line 981
    .local v6, "avgUss":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    .line 982
    .local v14, "maxUss":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_2

    .line 983
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 984
    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 985
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 986
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 987
    move-object/from16 v0, p1

    iput-wide v6, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 988
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 1007
    :cond_0
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v22, v0

    add-long v22, v22, v20

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    .line 970
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 990
    .restart local v4    # "avgPss":J
    .restart local v6    # "avgUss":J
    .restart local v12    # "maxPss":J
    .restart local v14    # "maxUss":J
    .restart local v16    # "minPss":J
    .restart local v18    # "minUss":J
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v16, v22

    if-gez v22, :cond_3

    .line 991
    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minPss:J

    .line 993
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    .line 994
    long-to-double v0, v4

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    .line 993
    add-double v22, v22, v24

    .line 994
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 993
    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 995
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v22, v0

    cmp-long v22, v12, v22

    if-lez v22, :cond_4

    .line 996
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 998
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v18, v22

    if-gez v22, :cond_5

    .line 999
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->minUss:J

    .line 1001
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    .line 1002
    long-to-double v0, v6

    move-wide/from16 v24, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    .line 1001
    add-double v22, v22, v24

    .line 1002
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v24, v0

    add-long v24, v24, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 1001
    div-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 1003
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v22, v0

    cmp-long v22, v14, v22

    if-lez v22, :cond_0

    .line 1004
    move-object/from16 v0, p1

    iput-wide v14, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto/16 :goto_3

    .line 969
    .end local v4    # "avgPss":J
    .end local v6    # "avgUss":J
    .end local v8    # "bucket":I
    .end local v12    # "maxPss":J
    .end local v14    # "maxUss":J
    .end local v16    # "minPss":J
    .end local v18    # "minUss":J
    .end local v20    # "samples":J
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 968
    .end local v10    # "ip":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1012
    .end local v9    # "im":I
    :cond_8
    return-void
.end method

.method public computeProcessTimeLocked([I[I[IJ)J
    .locals 8
    .param p1, "screenStates"    # [I
    .param p2, "memStates"    # [I
    .param p3, "procStates"    # [I
    .param p4, "now"    # J

    .prologue
    .line 729
    const-wide/16 v4, 0x0

    .line 730
    .local v4, "totalTime":J
    const/4 v3, 0x0

    .local v3, "is":I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 731
    const/4 v1, 0x0

    .local v1, "im":I
    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_1

    .line 732
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_2
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 733
    aget v6, p1, v3

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    .line 734
    aget v7, p3, v2

    .line 733
    add-int v0, v6, v7

    .line 735
    .local v0, "bucket":I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 732
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 731
    .end local v0    # "bucket":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 730
    .end local v2    # "ip":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 739
    .end local v1    # "im":I
    :cond_2
    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mTmpTotalTime:J

    .line 740
    return-wide v4
.end method

.method public decActiveServices(Ljava/lang/String;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 417
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 420
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 421
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    .line 422
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    const-string/jumbo v2, " uid="

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    const-string/jumbo v2, " proc="

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 423
    const-string/jumbo v2, " service="

    .line 422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 426
    :cond_1
    return-void
.end method

.method public decStartedServices(IJLjava/lang/String;)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 454
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 455
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    rem-int/lit8 v0, v0, 0xe

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 456
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 457
    :cond_2
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_1

    .line 458
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Proc started services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    const-string/jumbo v2, " uid="

    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    const-string/jumbo v2, " name="

    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iput v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    goto :goto_0
.end method

.method public dumpAllPssCheckin(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/16 v6, 0x3a

    .line 1154
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    .line 1155
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1156
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v4, v1}, Lcom/android/internal/app/procstats/PssTable;->getKeyAt(I)I

    move-result v2

    .line 1157
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1158
    .local v3, "type":I
    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1159
    invoke-static {p1, v3}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 1160
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1161
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1162
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1163
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1164
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1165
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1166
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1167
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1168
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1169
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1170
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1171
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1172
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1173
    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    const/4 v5, 0x6

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/app/procstats/PssTable;->getValue(II)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    .end local v2    # "key":I
    .end local v3    # "type":I
    :cond_0
    return-void
.end method

.method public dumpAllStateCheckin(Ljava/io/PrintWriter;J)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .prologue
    .line 1137
    const/4 v0, 0x0

    .line 1138
    .local v0, "didCurState":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 1139
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyAt(I)I

    move-result v2

    .line 1140
    .local v2, "key":I
    invoke-static {v2}, Lcom/android/internal/app/procstats/SparseMappingTable;->getIdFromKey(I)B

    move-result v3

    .line 1141
    .local v3, "type":I
    iget-object v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v6, v2}, Lcom/android/internal/app/procstats/DurationsTable;->getValue(I)J

    move-result-wide v4

    .line 1142
    .local v4, "time":J
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v6, v3, :cond_0

    .line 1143
    const/4 v0, 0x1

    .line 1144
    iget-wide v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    .line 1146
    :cond_0
    invoke-static {p1, v3, v4, v5}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1148
    .end local v2    # "key":I
    .end local v3    # "type":I
    .end local v4    # "time":J
    :cond_1
    if-nez v0, :cond_2

    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 1149
    iget v6, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    iget-wide v8, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v8, p2, v8

    invoke-static {p1, v6, v8, v9}, Lcom/android/internal/app/procstats/DumpUtils;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 1151
    :cond_2
    return-void
.end method

.method public dumpCsv(Ljava/io/PrintWriter;Z[IZ[IZ[IJ)V
    .locals 28
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sepScreenStates"    # Z
    .param p3, "screenStates"    # [I
    .param p4, "sepMemStates"    # Z
    .param p5, "memStates"    # [I
    .param p6, "sepProcStates"    # Z
    .param p7, "procStates"    # [I
    .param p8, "now"    # J

    .prologue
    .line 1017
    if-eqz p2, :cond_0

    move-object/from16 v0, p3

    array-length v9, v0

    .line 1018
    .local v9, "NSS":I
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p5

    array-length v5, v0

    .line 1019
    .local v5, "NMS":I
    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    array-length v7, v0

    .line 1020
    .local v7, "NPS":I
    :goto_2
    const/16 v16, 0x0

    .local v16, "iss":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_11

    .line 1021
    const/4 v12, 0x0

    .local v12, "ims":I
    :goto_4
    if-ge v12, v5, :cond_10

    .line 1022
    const/4 v14, 0x0

    .local v14, "ips":I
    :goto_5
    if-ge v14, v7, :cond_f

    .line 1023
    if-eqz p2, :cond_3

    aget v24, p3, v16

    .line 1024
    .local v24, "vsscreen":I
    :goto_6
    if-eqz p4, :cond_4

    aget v22, p5, v12

    .line 1025
    .local v22, "vsmem":I
    :goto_7
    if-eqz p6, :cond_5

    aget v23, p7, v14

    .line 1026
    .local v23, "vsproc":I
    :goto_8
    if-eqz p2, :cond_6

    const/4 v8, 0x1

    .line 1027
    .local v8, "NSA":I
    :goto_9
    if-eqz p4, :cond_7

    const/4 v4, 0x1

    .line 1028
    .local v4, "NMA":I
    :goto_a
    if-eqz p6, :cond_8

    const/4 v6, 0x1

    .line 1029
    .local v6, "NPA":I
    :goto_b
    const-wide/16 v18, 0x0

    .line 1030
    .local v18, "totalTime":J
    const/4 v15, 0x0

    .local v15, "isa":I
    :goto_c
    if-ge v15, v8, :cond_e

    .line 1031
    const/4 v11, 0x0

    .local v11, "ima":I
    :goto_d
    if-ge v11, v4, :cond_d

    .line 1032
    const/4 v13, 0x0

    .local v13, "ipa":I
    :goto_e
    if-ge v13, v6, :cond_c

    .line 1033
    if-eqz p2, :cond_9

    const/16 v21, 0x0

    .line 1034
    .local v21, "vascreen":I
    :goto_f
    if-eqz p4, :cond_a

    const/16 v17, 0x0

    .line 1035
    .local v17, "vamem":I
    :goto_10
    if-eqz p6, :cond_b

    const/16 v20, 0x0

    .line 1036
    .local v20, "vaproc":I
    :goto_11
    add-int v25, v24, v21

    add-int v25, v25, v22

    add-int v25, v25, v17

    mul-int/lit8 v25, v25, 0xe

    add-int v25, v25, v23

    add-int v10, v25, v20

    .line 1038
    .local v10, "bucket":I
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-virtual {v0, v10, v1, v2}, Lcom/android/internal/app/procstats/ProcessState;->getDuration(IJ)J

    move-result-wide v26

    add-long v18, v18, v26

    .line 1032
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1017
    .end local v4    # "NMA":I
    .end local v5    # "NMS":I
    .end local v6    # "NPA":I
    .end local v7    # "NPS":I
    .end local v8    # "NSA":I
    .end local v9    # "NSS":I
    .end local v10    # "bucket":I
    .end local v11    # "ima":I
    .end local v12    # "ims":I
    .end local v13    # "ipa":I
    .end local v14    # "ips":I
    .end local v15    # "isa":I
    .end local v16    # "iss":I
    .end local v17    # "vamem":I
    .end local v18    # "totalTime":J
    .end local v20    # "vaproc":I
    .end local v21    # "vascreen":I
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_0
    const/4 v9, 0x1

    .restart local v9    # "NSS":I
    goto :goto_0

    .line 1018
    :cond_1
    const/4 v5, 0x1

    .restart local v5    # "NMS":I
    goto :goto_1

    .line 1019
    :cond_2
    const/4 v7, 0x1

    .restart local v7    # "NPS":I
    goto :goto_2

    .line 1023
    .restart local v12    # "ims":I
    .restart local v14    # "ips":I
    .restart local v16    # "iss":I
    :cond_3
    const/16 v24, 0x0

    .restart local v24    # "vsscreen":I
    goto :goto_6

    .line 1024
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "vsmem":I
    goto :goto_7

    .line 1025
    :cond_5
    const/16 v23, 0x0

    .restart local v23    # "vsproc":I
    goto :goto_8

    .line 1026
    :cond_6
    move-object/from16 v0, p3

    array-length v8, v0

    .restart local v8    # "NSA":I
    goto :goto_9

    .line 1027
    :cond_7
    move-object/from16 v0, p5

    array-length v4, v0

    .restart local v4    # "NMA":I
    goto :goto_a

    .line 1028
    :cond_8
    move-object/from16 v0, p7

    array-length v6, v0

    .restart local v6    # "NPA":I
    goto :goto_b

    .line 1033
    .restart local v11    # "ima":I
    .restart local v13    # "ipa":I
    .restart local v15    # "isa":I
    .restart local v18    # "totalTime":J
    :cond_9
    aget v21, p3, v15

    .restart local v21    # "vascreen":I
    goto :goto_f

    .line 1034
    :cond_a
    aget v17, p5, v11

    .restart local v17    # "vamem":I
    goto :goto_10

    .line 1035
    :cond_b
    aget v20, p7, v13

    .restart local v20    # "vaproc":I
    goto :goto_11

    .line 1031
    .end local v17    # "vamem":I
    .end local v20    # "vaproc":I
    .end local v21    # "vascreen":I
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 1030
    .end local v13    # "ipa":I
    :cond_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 1042
    .end local v11    # "ima":I
    :cond_e
    const-string/jumbo v25, "\t"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1043
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1022
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 1021
    .end local v4    # "NMA":I
    .end local v6    # "NPA":I
    .end local v8    # "NSA":I
    .end local v15    # "isa":I
    .end local v18    # "totalTime":J
    .end local v22    # "vsmem":I
    .end local v23    # "vsproc":I
    .end local v24    # "vsscreen":I
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 1020
    .end local v14    # "ips":I
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 1047
    .end local v12    # "ims":I
    :cond_11
    return-void
.end method

.method public dumpInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 936
    if-eqz p3, :cond_1

    .line 937
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 938
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 939
    const-string/jumbo v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    const-string/jumbo v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 942
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_0

    .line 943
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq p0, v0, :cond_1

    .line 946
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 948
    const-string/jumbo v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-eqz v0, :cond_2

    .line 952
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 954
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-eqz v0, :cond_3

    .line 955
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 957
    :cond_3
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-eqz v0, :cond_5

    .line 958
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 959
    const-string/jumbo v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 962
    :cond_5
    return-void
.end method

.method public dumpPackageProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "itemName"    # Ljava/lang/String;
    .param p6, "now"    # J

    .prologue
    .line 1051
    const-string/jumbo v0, "pkgproc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1055
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1057
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0, p1, p6, p7}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1060
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1061
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1062
    const-string/jumbo v0, "pkgpss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1066
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1068
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1071
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1073
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_2

    .line 1074
    :cond_1
    const-string/jumbo v0, "pkgkills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1078
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1080
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    invoke-static {p2, p5}, Lcom/android/internal/app/procstats/DumpUtils;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1085
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1086
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1088
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1090
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1091
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1092
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1094
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1096
    :cond_2
    return-void
.end method

.method public dumpProcCheckin(Ljava/io/PrintWriter;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "now"    # J

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1100
    const-string/jumbo v0, "proc,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1102
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1104
    invoke-virtual {p0, p1, p4, p5}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllStateCheckin(Ljava/io/PrintWriter;J)V

    .line 1105
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1108
    const-string/jumbo v0, "pss,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1110
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1112
    invoke-virtual {p0, p1}, Lcom/android/internal/app/procstats/ProcessState;->dumpAllPssCheckin(Ljava/io/PrintWriter;)V

    .line 1113
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1115
    :cond_1
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_3

    .line 1116
    :cond_2
    const-string/jumbo v0, "kills,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1118
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1120
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1122
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1124
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1126
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1127
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1128
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1130
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1131
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1132
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1134
    :cond_3
    return-void
.end method

.method public dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJ)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J

    .prologue
    .line 785
    const-wide/16 v14, 0x0

    .line 786
    .local v14, "totalTime":J
    const/4 v9, -0x1

    .line 787
    .local v9, "printedScreen":I
    const/4 v6, 0x0

    .local v6, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v6, v11, :cond_8

    .line 788
    const/4 v8, -0x1

    .line 789
    .local v8, "printedMem":I
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v11, v0

    if-ge v3, v11, :cond_7

    .line 790
    const/4 v5, 0x0

    .local v5, "ip":I
    :goto_2
    move-object/from16 v0, p5

    array-length v11, v0

    if-ge v5, v11, :cond_6

    .line 791
    aget v7, p3, v6

    .line 792
    .local v7, "iscreen":I
    aget v4, p4, v3

    .line 793
    .local v4, "imem":I
    add-int v11, v7, v4

    mul-int/lit8 v11, v11, 0xe

    aget v16, p5, v5

    add-int v2, v11, v16

    .line 794
    .local v2, "bucket":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v12

    .line 795
    .local v12, "time":J
    const-string/jumbo v10, ""

    .line 796
    .local v10, "running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v11, v2, :cond_0

    .line 797
    const-string/jumbo v10, " (running)"

    .line 799
    :cond_0
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-eqz v11, :cond_3

    .line 800
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    move-object/from16 v0, p3

    array-length v11, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_1

    .line 802
    if-eq v9, v7, :cond_4

    move v11, v7

    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 804
    move v9, v7

    .line 806
    :cond_1
    move-object/from16 v0, p4

    array-length v11, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_2

    .line 808
    if-eq v8, v4, :cond_5

    move v11, v4

    :goto_4
    const/16 v16, 0x2f

    .line 807
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v11, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 809
    move v8, v4

    .line 811
    :cond_2
    sget-object v11, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v16, p5, v5

    aget-object v11, v11, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p1

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    add-long/2addr v14, v12

    .line 790
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 803
    :cond_4
    const/4 v11, -0x1

    goto :goto_3

    .line 808
    :cond_5
    const/4 v11, -0x1

    goto :goto_4

    .line 789
    .end local v2    # "bucket":I
    .end local v4    # "imem":I
    .end local v7    # "iscreen":I
    .end local v10    # "running":Ljava/lang/String;
    .end local v12    # "time":J
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 787
    .end local v5    # "ip":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 818
    .end local v3    # "im":I
    .end local v8    # "printedMem":I
    :cond_8
    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_b

    .line 819
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, p3

    array-length v11, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_9

    .line 821
    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 823
    :cond_9
    move-object/from16 v0, p4

    array-length v11, v0

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v11, v0, :cond_a

    .line 824
    const/4 v11, -0x1

    const/16 v16, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v11, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 826
    :cond_a
    const-string/jumbo v11, "TOTAL  : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, p1

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 828
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 830
    :cond_b
    return-void
.end method

.method public dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I

    .prologue
    .line 851
    const/4 v10, 0x0

    .line 852
    .local v10, "printedHeader":Z
    const/4 v12, -0x1

    .line 853
    .local v12, "printedScreen":I
    const/4 v8, 0x0

    .local v8, "is":I
    :goto_0
    move-object/from16 v0, p3

    array-length v13, v0

    if-ge v8, v13, :cond_8

    .line 854
    const/4 v11, -0x1

    .line 855
    .local v11, "printedMem":I
    const/4 v3, 0x0

    .local v3, "im":I
    :goto_1
    move-object/from16 v0, p4

    array-length v13, v0

    if-ge v3, v13, :cond_7

    .line 856
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_2
    move-object/from16 v0, p5

    array-length v13, v0

    if-ge v7, v13, :cond_6

    .line 857
    aget v9, p3, v8

    .line 858
    .local v9, "iscreen":I
    aget v6, p4, v3

    .line 859
    .local v6, "imem":I
    add-int v13, v9, v6

    mul-int/lit8 v13, v13, 0xe

    aget v14, p5, v7

    add-int v2, v13, v14

    .line 860
    .local v2, "bucket":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssSampleCount(I)J

    move-result-wide v4

    .line 861
    .local v4, "count":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_3

    .line 862
    if-nez v10, :cond_0

    .line 863
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    const-string/jumbo v13, "PSS/USS ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v13}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 866
    const-string/jumbo v13, " entries):"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    const/4 v10, 0x1

    .line 869
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 870
    const-string/jumbo v13, "  "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    move-object/from16 v0, p3

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 873
    if-eq v12, v9, :cond_4

    move v13, v9

    .line 872
    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 874
    move v12, v9

    .line 876
    :cond_1
    move-object/from16 v0, p4

    array-length v13, v0

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    .line 878
    if-eq v11, v6, :cond_5

    move v13, v6

    :goto_4
    const/16 v14, 0x2f

    .line 877
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabel(Ljava/io/PrintWriter;IC)V

    .line 879
    move v11, v6

    .line 881
    :cond_2
    sget-object v13, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES:[Ljava/lang/String;

    aget v14, p5, v7

    aget-object v13, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 882
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 883
    const-string/jumbo v13, " samples "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 885
    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 887
    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 889
    const-string/jumbo v13, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 890
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMinimum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 891
    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 892
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssAverage(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 893
    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 894
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/procstats/ProcessState;->getPssUssMaximum(I)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 895
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 856
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 873
    :cond_4
    const/4 v13, -0x1

    goto/16 :goto_3

    .line 878
    :cond_5
    const/4 v13, -0x1

    goto/16 :goto_4

    .line 855
    .end local v2    # "bucket":I
    .end local v4    # "count":J
    .end local v6    # "imem":I
    .end local v9    # "iscreen":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 853
    .end local v7    # "ip":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 900
    .end local v3    # "im":I
    .end local v11    # "printedMem":I
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    if-eqz v13, :cond_9

    .line 901
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "Killed for excessive CPU use: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " times"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-eqz v13, :cond_a

    .line 905
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v13, "Killed from cached state: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v13, " times from pss "

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string/jumbo v13, "-"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 911
    :cond_a
    return-void
.end method

.method public dumpSummary(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[IJJ)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "screenStates"    # [I
    .param p4, "memStates"    # [I
    .param p5, "procStates"    # [I
    .param p6, "now"    # J
    .param p8, "totalTime"    # J

    .prologue
    .line 746
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    const-string/jumbo v0, "* "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    const-string/jumbo v0, " / "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 750
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 751
    const-string/jumbo v0, " / v"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 753
    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    const-string/jumbo v4, "         TOTAL: "

    .line 755
    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 754
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 756
    const-string/jumbo v4, "    Persistent: "

    .line 757
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 756
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 758
    const-string/jumbo v4, "           Top: "

    .line 759
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 758
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 760
    const-string/jumbo v4, "        Imp Fg: "

    .line 761
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 760
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 762
    const-string/jumbo v4, "        Imp Bg: "

    .line 763
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 762
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 764
    const-string/jumbo v4, "        Backup: "

    .line 765
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 764
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 766
    const-string/jumbo v4, "     Heavy Wgt: "

    .line 767
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 766
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 768
    const-string/jumbo v4, "       Service: "

    .line 769
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 768
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 770
    const-string/jumbo v4, "    Service Rs: "

    .line 771
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 770
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 772
    const-string/jumbo v4, "      Receiver: "

    .line 773
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/16 v0, 0x8

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 772
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 774
    const-string/jumbo v4, "        (Home): "

    .line 775
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/16 v0, 0x9

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 774
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 776
    const-string/jumbo v4, "    (Last Act): "

    .line 777
    const/4 v0, 0x1

    new-array v7, v0, [I

    const/16 v0, 0xa

    const/4 v1, 0x0

    aput v0, v7, v1

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 776
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 778
    const-string/jumbo v4, "      (Cached): "

    .line 779
    const/16 v0, 0xb

    const/16 v1, 0xc

    .line 780
    const/16 v2, 0xd

    .line 779
    filled-new-array {v0, v1, v2}, [I

    move-result-object v7

    .line 780
    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 778
    invoke-direct/range {v1 .. v12}, Lcom/android/internal/app/procstats/ProcessState;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 781
    return-void
.end method

.method public getCommonProcess()Lcom/android/internal/app/procstats/ProcessState;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    return-object v0
.end method

.method public getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v3, p1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v0

    .line 605
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    .line 606
    iget-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 608
    :cond_0
    return-wide v0
.end method

.method public getDurationsBucketCount()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssSampleCount(I)J
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssAverage(I)J
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMaximum(I)J
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPssUssMinimum(I)J
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    int-to-byte v1, p1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/procstats/PssTable;->getValueForId(BI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTopDuration()J
    .locals 12

    .prologue
    .line 835
    const-wide/16 v8, 0x0

    .line 836
    .local v8, "totalTime":J
    sget-object v4, Lcom/android/internal/app/procstats/ProcessStats;->ALL_MEM_ADJ:[I

    .line 837
    .local v4, "memStates":[I
    const/4 v3, 0x4

    .line 838
    .local v3, "iscreen":I
    const/4 v5, 0x1

    .line 839
    .local v5, "procState":I
    const/4 v1, 0x0

    .local v1, "im":I
    :goto_0
    array-length v10, v4

    if-ge v1, v10, :cond_0

    .line 840
    aget v2, v4, v1

    .line 841
    .local v2, "imem":I
    add-int/lit8 v10, v2, 0x4

    mul-int/lit8 v10, v10, 0xe

    add-int/lit8 v0, v10, 0x1

    .line 842
    .local v0, "bucket":I
    iget-object v10, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    int-to-byte v11, v0

    invoke-virtual {v10, v11}, Lcom/android/internal/app/procstats/DurationsTable;->getValueForId(B)J

    move-result-wide v6

    .line 843
    .local v6, "time":J
    add-long/2addr v8, v6

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "bucket":I
    .end local v2    # "imem":I
    .end local v6    # "time":J
    :cond_0
    return-wide v8
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    return v0
.end method

.method public hasAnyData()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/DurationsTable;->getKeyCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 342
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/PssTable;->getKeyCount()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 407
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    .line 408
    return-void
.end method

.method public incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 438
    :cond_0
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    .line 439
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 440
    mul-int/lit8 v0, p1, 0xe

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 442
    :cond_1
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    return v0
.end method

.method public isInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    iget-boolean v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumActiveServices:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-gtz v2, :cond_0

    .line 333
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isMultiPackage()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    return v0
.end method

.method public makeActive()V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 325
    return-void
.end method

.method public makeDead()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    .line 272
    return-void
.end method

.method public makeInactive()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mActive:Z

    .line 329
    return-void
.end method

.method public makeStandalone()V
    .locals 0

    .prologue
    .line 222
    iput-object p0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    .line 223
    return-void
.end method

.method public pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 537
    iget-boolean v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v3, :cond_3

    .line 541
    iget-object v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 542
    .local v2, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    if-nez v2, :cond_0

    .line 543
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    const-string/jumbo v5, " / "

    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 543
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    :cond_0
    iget v3, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 547
    .local v0, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    if-nez v0, :cond_1

    .line 548
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 549
    const-string/jumbo v5, " / "

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 549
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 549
    const-string/jumbo v5, " vers "

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 549
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 551
    :cond_1
    iget-object v3, v0, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/procstats/ProcessState;

    .line 552
    .local v1, "proc":Lcom/android/internal/app/procstats/ProcessState;
    if-nez v1, :cond_2

    .line 553
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t create per-package process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    iget-object v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    const-string/jumbo v5, " in pkg "

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    const-string/jumbo v5, " / "

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    const-string/jumbo v5, " vers "

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    iget v5, p0, Lcom/android/internal/app/procstats/ProcessState;->mVersion:I

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 556
    :cond_2
    return-object v1

    .line 558
    .end local v0    # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v1    # "proc":Lcom/android/internal/app/procstats/ProcessState;
    .end local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    :cond_3
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "fully"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 298
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 299
    iput-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/procstats/DurationsTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    return v2

    .line 297
    .end local v0    # "multiPackage":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "multiPackage":Z
    goto :goto_0

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/procstats/PssTable;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 307
    return v2

    .line 309
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 312
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_4

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    .line 319
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 317
    :cond_4
    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v4, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    goto :goto_1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 10
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    const/4 v1, 0x1

    .line 525
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 526
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 527
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    .line 528
    return-void

    .line 531
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "ip":I
    :goto_0
    if-ltz v8, :cond_1

    .line 532
    invoke-direct {p0, p1, v8}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/procstats/ProcessState;->addCachedKill(IJJJ)V

    .line 531
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 534
    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 495
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 496
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_0

    .line 497
    return-void

    .line 500
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 501
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 500
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 503
    :cond_1
    return-void
.end method

.method public resetSafely(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/DurationsTable;->resetTable()V

    .line 261
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/PssTable;->resetTable()V

    .line 262
    iput-wide p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mStartTime:J

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssState:I

    .line 264
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mLastPssTime:J

    .line 265
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    .line 266
    iput v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    .line 267
    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    .line 268
    return-void
.end method

.method public setMultiPackage(Z)V
    .locals 0
    .param p1, "val"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    .line 243
    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_1

    .line 357
    iget v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumStartedServices:I

    if-lez v1, :cond_0

    .line 358
    mul-int/lit8 v1, p2, 0xe

    add-int/lit8 p1, v1, 0x7

    .line 364
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 367
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_2

    .line 368
    return-void

    .line 358
    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    .line 360
    :cond_1
    sget-object v1, Lcom/android/internal/app/procstats/ProcessState;->PROCESS_STATE_TO_STATE:[I

    aget v1, v1, p1

    mul-int/lit8 v2, p2, 0xe

    add-int p1, v1, v2

    goto :goto_0

    .line 371
    :cond_2
    if-eqz p5, :cond_3

    .line 372
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_1
    if-ltz v0, :cond_3

    .line 373
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/procstats/ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/procstats/ProcessState;->setState(IJ)V

    .line 372
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 376
    .end local v0    # "ip":I
    :cond_3
    return-void
.end method

.method public setState(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/internal/app/procstats/ProcessState;->ensureNotDead()V

    .line 380
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDead:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    .line 382
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/procstats/ProcessState;->commitStateTime(J)V

    .line 383
    iput p1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCurState:I

    .line 385
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1179
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1180
    const-string/jumbo v2, " "

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1180
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mName:Ljava/lang/String;

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1180
    const-string/jumbo v2, "/"

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1180
    iget v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mUid:I

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1181
    const-string/jumbo v2, " pkg="

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1181
    iget-object v2, p0, Lcom/android/internal/app/procstats/ProcessState;->mPackage:Ljava/lang/String;

    .line 1179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    iget-boolean v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/procstats/ProcessState;->mCommonProcess:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v1, p0, :cond_1

    const-string/jumbo v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-boolean v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mDurations:Lcom/android/internal/app/procstats/DurationsTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/DurationsTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mPssTable:Lcom/android/internal/app/procstats/PssTable;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/procstats/PssTable;->writeToParcel(Landroid/os/Parcel;)V

    .line 286
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mNumCachedKill:I

    if-lez v0, :cond_0

    .line 290
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    iget-wide v0, p0, Lcom/android/internal/app/procstats/ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 294
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 283
    goto :goto_0
.end method
