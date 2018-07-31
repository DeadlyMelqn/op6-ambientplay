.class Lcom/android/server/OverHeatingDiagnosis$Stopwatch;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stopwatch"
.end annotation


# instance fields
.field private mStartTimeMs:J

.field private mStopTimeMs:J

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$Stopwatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "-this1"    # Lcom/android/server/OverHeatingDiagnosis$Stopwatch;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 1594
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isStopped()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 4

    .prologue
    .line 1586
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 4

    .prologue
    .line 1590
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStopTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lap()J
    .locals 4

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 1623
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->stop()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1628
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    .line 1629
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStopTimeMs:J

    .line 1630
    return-void
.end method

.method public start()Lcom/android/server/OverHeatingDiagnosis$Stopwatch;
    .locals 2

    .prologue
    .line 1601
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1602
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    .line 1604
    :cond_0
    return-object p0
.end method

.method public stop()J
    .locals 4

    .prologue
    .line 1609
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStopTimeMs:J

    .line 1613
    :cond_0
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStopTimeMs:J

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
