.class public final Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcStateSeqHistory"
.end annotation


# static fields
.field private static final INVALID_UID:I = -0x1


# instance fields
.field private mHistoryNext:I

.field private final mMaxCapacity:I

.field private final mProcStateSeqs:[J

.field private final mUids:[I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxCapacity"    # I

    .prologue
    .line 5073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5074
    iput p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    .line 5075
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    .line 5076
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5077
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mProcStateSeqs:[J

    .line 5078
    return-void
.end method

.method public static getString(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I
    .param p1, "procStateSeq"    # J

    .prologue
    .line 5104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private increaseNext(II)I
    .locals 1
    .param p1, "next"    # I
    .param p2, "increment"    # I

    .prologue
    .line 5108
    add-int/2addr p1, p2

    .line 5109
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    if-lt p1, v0, :cond_1

    .line 5110
    const/4 p1, 0x0

    .line 5114
    :cond_0
    :goto_0
    return p1

    .line 5111
    :cond_1
    if-gez p1, :cond_0

    .line 5112
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mMaxCapacity:I

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public addProcStateSeqUL(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "procStateSeq"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation

    .prologue
    .line 5082
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    aput p1, v0, v1

    .line 5083
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mProcStateSeqs:[J

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    aput-wide p2, v0, v1

    .line 5084
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->increaseNext(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    .line 5085
    return-void
.end method

.method public dumpUL(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 5089
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ne v1, v4, :cond_0

    .line 5090
    const-string/jumbo v1, "NONE"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5091
    return-void

    .line 5093
    :cond_0
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    .line 5095
    .local v0, "index":I
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->increaseNext(II)I

    move-result v0

    .line 5096
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_2

    .line 5101
    :cond_1
    return-void

    .line 5099
    :cond_2
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mUids:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mProcStateSeqs:[J

    aget-wide v2, v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->getString(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5100
    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ProcStateSeqHistory;->mHistoryNext:I

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method
