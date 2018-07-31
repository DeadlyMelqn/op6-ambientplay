.class final Lcom/android/server/AlarmManagerService$FilterStats;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FilterStats"
.end annotation


# instance fields
.field aggregateTime:J

.field count:I

.field lastTime:J

.field final mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

.field final mTag:Ljava/lang/String;

.field nesting:I

.field numWakeup:I

.field startTime:J


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V
    .locals 0
    .param p1, "broadcastStats"    # Lcom/android/server/AlarmManagerService$BroadcastStats;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 1667
    iput-object p2, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 1668
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FilterStats{tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1673
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1674
    const-string/jumbo v1, ", lastTime="

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1674
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    .line 1672
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1675
    const-string/jumbo v1, ", aggregateTime="

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1675
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 1672
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1676
    const-string/jumbo v1, ", count="

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1676
    iget v1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    const-string/jumbo v1, ", numWakeup="

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1677
    iget v1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    const-string/jumbo v1, ", startTime="

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1678
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    .line 1672
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1679
    const-string/jumbo v1, ", nesting="

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1679
    iget v1, p0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1680
    const-string/jumbo v1, "}"

    .line 1672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
