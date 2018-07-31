.class final Lcom/android/server/am/RestartProcessManager$DayRecord;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayRecord"
.end annotation


# instance fields
.field private isFinished:Z

.field private mCurForegroundTime:J

.field private mLastLaunchTime:J

.field private mOldForegroundTime:J

.field private mPackageName:Ljava/lang/String;

.field private mScoreFGDuration:D

.field private mScoreLRU:D

.field private mScoreLaunchTimes:D

.field private mStartCountTime:J

.field private mTotalForegroundTime:J

.field private mTotalLaunchTime:J


# direct methods
.method static synthetic -get0(Lcom/android/server/am/RestartProcessManager$DayRecord;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mOldForegroundTime:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/server/am/RestartProcessManager$DayRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/am/RestartProcessManager$DayRecord;)D
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/server/am/RestartProcessManager$DayRecord;)D
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    return-wide v0
.end method

.method static synthetic -get7(Lcom/android/server/am/RestartProcessManager$DayRecord;)D
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mStartCountTime:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalForegroundTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mOldForegroundTime:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    return-wide p1
.end method

.method static synthetic -set5(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # D

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    return-wide p1
.end method

.method static synthetic -set6(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mStartCountTime:J

    return-wide p1
.end method

.method static synthetic -set7(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalForegroundTime:J

    return-wide p1
.end method

.method static synthetic -set8(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    return-wide p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1509
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    .line 1510
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    .line 1511
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    .line 1512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    .line 1515
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mPackageName:Ljava/lang/String;

    .line 1516
    return-void
.end method


# virtual methods
.method public decreaseLaunchTime()V
    .locals 4

    .prologue
    .line 1527
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    .line 1528
    return-void
.end method

.method public increaseFgTime(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 1519
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    .line 1520
    return-void
.end method

.method public increaseForegroundTime(JLjava/lang/String;)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1546
    const-string/jumbo v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "increase duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    .line 1548
    return-void
.end method

.method public increaseLaunchTime()V
    .locals 4

    .prologue
    .line 1523
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    .line 1524
    return-void
.end method

.method public resetScore()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1557
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    .line 1558
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    .line 1559
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    .line 1560
    return-void
.end method

.method public setFinish(Z)V
    .locals 0
    .param p1, "finish"    # Z

    .prologue
    .line 1563
    iput-boolean p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    .line 1564
    return-void
.end method

.method public setFinishTime(JLjava/lang/String;)V
    .locals 5
    .param p1, "duration"    # J
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 1535
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 1536
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/RestartProcessManager$DayRecord;->increaseForegroundTime(JLjava/lang/String;)V

    .line 1542
    :goto_0
    return-void

    .line 1539
    :cond_0
    const-string/jumbo v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Abnormal duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", launch time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTotalLaunchTimes(J)V
    .locals 1
    .param p1, "times"    # J

    .prologue
    .line 1531
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    .line 1532
    return-void
.end method

.method public toRecord()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1551
    new-instance v0, Ljava/lang/String;

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mStartCountTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalForegroundTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    iget-boolean v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    .line 1552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    const-string/jumbo v2, " "

    .line 1552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    .line 1552
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    const-string/jumbo v2, " "

    .line 1552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    .line 1552
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    const-string/jumbo v2, " "

    .line 1552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    .line 1552
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    const-string/jumbo v2, "\n"

    .line 1552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1551
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
