.class public Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;
.super Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationTimer"
.end annotation


# instance fields
.field mCurrentDurationMs:J

.field mMaxDurationMs:J

.field mStartTimeMs:J

.field mTotalDurationMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1884
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 1854
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 1885
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "clocks"    # Lcom/android/internal/os/BatteryStatsImpl$Clocks;
    .param p2, "uid"    # Lcom/android/internal/os/BatteryStatsImpl$Uid;
    .param p3, "type"    # I
    .param p5, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p6, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl$Clocks;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;",
            "Lcom/android/internal/os/BatteryStatsImpl$TimeBase;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1876
    .local p4, "timerPool":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 1854
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 1877
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 1878
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 1879
    invoke-virtual {p6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 1880
    return-void
.end method


# virtual methods
.method public getCurrentDurationMsLocked(J)J
    .locals 9
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 2030
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 2031
    .local v0, "durationMs":J
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2032
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    mul-long v4, p1, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    div-long/2addr v2, v6

    .line 2033
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 2032
    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 2035
    :cond_0
    return-wide v0
.end method

.method public getMaxDurationMsLocked(J)J
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 2008
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v2, :cond_0

    .line 2009
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    .line 2010
    .local v0, "durationMs":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2011
    return-wide v0

    .line 2014
    .end local v0    # "durationMs":J
    :cond_0
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    return-wide v2
.end method

.method public getTotalDurationMsLocked(J)J
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 2049
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1952
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->logState(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1953
    return-void
.end method

.method public onTimeStarted(JJJ)V
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtime"    # J

    .prologue
    .line 1929
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStarted(JJJ)V

    .line 1930
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1931
    const-wide/16 v0, 0x3e8

    div-long v0, p5, v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 1933
    :cond_0
    return-void
.end method

.method public onTimeStopped(JJJ)V
    .locals 7
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "baseUptime"    # J
    .param p5, "baseRealtimeUs"    # J

    .prologue
    .line 1942
    invoke-super/range {p0 .. p6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->onTimeStopped(JJJ)V

    .line 1943
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v0, :cond_0

    .line 1945
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    const-wide/16 v2, 0x3e8

    div-long v2, p5, v2

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 1947
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 1948
    return-void
.end method

.method public readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1916
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 1917
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 1918
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 1919
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 1920
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 1921
    return-void
.end method

.method public reset(Z)Z
    .locals 6
    .param p1, "detachIfReset"    # Z

    .prologue
    const-wide/16 v4, 0x3e8

    const-wide/16 v2, 0x0

    .line 1988
    invoke-super {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v0

    .line 1989
    .local v0, "result":Z
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 1990
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 1991
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 1992
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    if-lez v1, :cond_0

    .line 1993
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v2}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 1997
    :goto_0
    return v0

    .line 1995
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    goto :goto_0
.end method

.method public startRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1957
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 1958
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    mul-long v2, p1, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->getRealtime(J)J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 1962
    :cond_0
    return-void
.end method

.method public stopRunningLocked(J)V
    .locals 5
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 1972
    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1973
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    .line 1974
    .local v0, "durationMs":J
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    .line 1975
    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1976
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mMaxDurationMs:J

    .line 1978
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mStartTimeMs:J

    .line 1979
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mCurrentDurationMs:J

    .line 1983
    .end local v0    # "durationMs":J
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 1984
    return-void
.end method

.method public writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 1904
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeSummaryFromParcelLocked(Landroid/os/Parcel;J)V

    .line 1905
    div-long v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1906
    div-long v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1907
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 1889
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1890
    div-long v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getMaxDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1891
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->mTotalDurationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1892
    div-long v0, p2, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;->getCurrentDurationMsLocked(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1893
    return-void
.end method
