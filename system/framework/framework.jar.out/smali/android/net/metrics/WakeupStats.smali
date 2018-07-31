.class public Landroid/net/metrics/WakeupStats;
.super Ljava/lang/Object;
.source "WakeupStats.java"


# static fields
.field private static final NO_UID:I = -0x1


# instance fields
.field public applicationWakeups:J

.field public final creationTimeMs:J

.field public durationSec:J

.field public final iface:Ljava/lang/String;

.field public noUidWakeups:J

.field public nonApplicationWakeups:J

.field public rootWakeups:J

.field public systemWakeups:J

.field public totalWakeups:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    .line 33
    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 34
    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    .line 35
    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    .line 36
    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    .line 37
    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    .line 38
    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    .line 39
    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    .line 42
    iput-object p1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public countEvent(Landroid/net/metrics/WakeupEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/net/metrics/WakeupEvent;

    .prologue
    const-wide/16 v2, 0x1

    .line 52
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 53
    iget v0, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    sparse-switch v0, :sswitch_data_0

    .line 64
    iget v0, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    .line 65
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    .line 71
    :goto_0
    return-void

    .line 55
    :sswitch_0
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    goto :goto_0

    .line 58
    :sswitch_1
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    goto :goto_0

    .line 61
    :sswitch_2
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    goto :goto_0

    .line 67
    :cond_0
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    goto :goto_0

    .line 53
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string/jumbo v1, "WakeupStats("

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const-string/jumbo v1, ", total: "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, ", root: "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, ", system: "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const-string/jumbo v1, ", apps: "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string/jumbo v1, ", non-apps: "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string/jumbo v1, ", no uid: "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, ", "

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "s)"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDuration()V
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    .line 48
    return-void
.end method
