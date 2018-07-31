.class public Landroid/metrics/MetricsReader;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/metrics/MetricsReader$Event;,
        Landroid/metrics/MetricsReader$LogReader;
    }
.end annotation


# instance fields
.field private LOGTAGS:[I

.field private mCheckpointTag:I

.field private mPendingQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mReader:Landroid/metrics/MetricsReader$LogReader;

.field private mSeenQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x80004

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    .line 43
    new-instance v0, Landroid/metrics/MetricsReader$LogReader;

    invoke-direct {v0}, Landroid/metrics/MetricsReader$LogReader;-><init>()V

    iput-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 38
    return-void
.end method


# virtual methods
.method public checkpoint()V
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 115
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget v1, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    invoke-virtual {v0, v1}, Landroid/metrics/MetricsReader$LogReader;->writeCheckpoint(I)V

    .line 117
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 118
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 119
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Landroid/metrics/LogMaker;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 144
    .local v0, "next":Landroid/metrics/LogMaker;
    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    return-object v0
.end method

.method public read(J)V
    .locals 11
    .param p1, "horizonMs"    # J

    .prologue
    .line 75
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v7, "nativeEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/metrics/MetricsReader$Event;>;"
    :try_start_0
    iget-object v9, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    iget-object v10, p0, Landroid/metrics/MetricsReader;->LOGTAGS:[I

    invoke-virtual {v9, v10, p1, p2, v7}, Landroid/metrics/MetricsReader$LogReader;->readEvents([IJLjava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-object v9, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    .line 82
    iget-object v9, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    .line 83
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "event$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/MetricsReader$Event;

    .line 84
    .local v2, "event":Landroid/metrics/MetricsReader$Event;
    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getTimeMillis()J

    move-result-wide v4

    .line 85
    .local v4, "eventTimestampMs":J
    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getData()Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "data":Ljava/lang/Object;
    instance-of v9, v0, [Ljava/lang/Object;

    if-eqz v9, :cond_1

    move-object v8, v0

    .line 88
    check-cast v8, [Ljava/lang/Object;

    .line 94
    .local v8, "objects":[Ljava/lang/Object;
    :goto_2
    new-instance v9, Landroid/metrics/LogMaker;

    invoke-direct {v9, v8}, Landroid/metrics/LogMaker;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v9, v4, v5}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    move-result-object v9

    .line 96
    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getUid()I

    move-result v10

    .line 94
    invoke-virtual {v9, v10}, Landroid/metrics/LogMaker;->setUid(I)Landroid/metrics/LogMaker;

    move-result-object v9

    .line 97
    invoke-virtual {v2}, Landroid/metrics/MetricsReader$Event;->getProcessId()I

    move-result v10

    .line 94
    invoke-virtual {v9, v10}, Landroid/metrics/LogMaker;->setProcessId(I)Landroid/metrics/LogMaker;

    move-result-object v6

    .line 98
    .local v6, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v6}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v9

    const/16 v10, 0x398

    if-ne v9, v10, :cond_2

    .line 99
    invoke-virtual {v6}, Landroid/metrics/LogMaker;->getSubtype()I

    move-result v9

    iget v10, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    if-ne v9, v10, :cond_0

    .line 100
    iget-object v9, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->clear()V

    goto :goto_1

    .line 78
    .end local v0    # "data":Ljava/lang/Object;
    .end local v2    # "event":Landroid/metrics/MetricsReader$Event;
    .end local v3    # "event$iterator":Ljava/util/Iterator;
    .end local v4    # "eventTimestampMs":J
    .end local v6    # "log":Landroid/metrics/LogMaker;
    .end local v8    # "objects":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 91
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local v2    # "event":Landroid/metrics/MetricsReader$Event;
    .restart local v3    # "event$iterator":Ljava/util/Iterator;
    .restart local v4    # "eventTimestampMs":J
    :cond_1
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/Object;

    .line 92
    .restart local v8    # "objects":[Ljava/lang/Object;
    const/4 v9, 0x0

    aput-object v0, v8, v9

    goto :goto_2

    .line 103
    .restart local v6    # "log":Landroid/metrics/LogMaker;
    :cond_2
    iget-object v9, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v9, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v0    # "data":Ljava/lang/Object;
    .end local v2    # "event":Landroid/metrics/MetricsReader$Event;
    .end local v4    # "eventTimestampMs":J
    .end local v6    # "log":Landroid/metrics/LogMaker;
    .end local v8    # "objects":[Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iget-object v2, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 128
    const/4 v1, -0x1

    iput v1, p0, Landroid/metrics/MetricsReader;->mCheckpointTag:I

    .line 131
    iget-object v0, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 132
    .local v0, "tmp":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/metrics/LogMaker;>;"
    iget-object v1, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    iput-object v1, p0, Landroid/metrics/MetricsReader;->mPendingQueue:Ljava/util/Queue;

    .line 133
    iput-object v0, p0, Landroid/metrics/MetricsReader;->mSeenQueue:Ljava/util/Queue;

    .line 134
    return-void
.end method

.method public setLogReader(Landroid/metrics/MetricsReader$LogReader;)V
    .locals 0
    .param p1, "reader"    # Landroid/metrics/MetricsReader$LogReader;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/metrics/MetricsReader;->mReader:Landroid/metrics/MetricsReader$LogReader;

    .line 54
    return-void
.end method
