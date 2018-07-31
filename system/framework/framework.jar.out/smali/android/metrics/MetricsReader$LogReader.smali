.class public Landroid/metrics/MetricsReader$LogReader;
.super Ljava/lang/Object;
.source "MetricsReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/metrics/MetricsReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogReader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readEvents([IJLjava/util/Collection;)V
    .locals 8
    .param p1, "tags"    # [I
    .param p2, "horizonMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IJ",
            "Ljava/util/Collection",
            "<",
            "Landroid/metrics/MetricsReader$Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    .local p4, "events":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/metrics/MetricsReader$Event;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v5, "nativeEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/EventLog$Event;>;"
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p2, p3, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 210
    .local v2, "horizonNs":J
    invoke-static {p1, v2, v3, v5}, Landroid/util/EventLog;->readEventsOnWrapping([IJLjava/util/Collection;)V

    .line 211
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "nativeEvent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/EventLog$Event;

    .line 212
    .local v1, "nativeEvent":Landroid/util/EventLog$Event;
    new-instance v0, Landroid/metrics/MetricsReader$Event;

    invoke-direct {v0, v1}, Landroid/metrics/MetricsReader$Event;-><init>(Landroid/util/EventLog$Event;)V

    .line 213
    .local v0, "event":Landroid/metrics/MetricsReader$Event;
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    .end local v0    # "event":Landroid/metrics/MetricsReader$Event;
    .end local v1    # "nativeEvent":Landroid/util/EventLog$Event;
    :cond_0
    return-void
.end method

.method public writeCheckpoint(I)V
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 218
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    .line 219
    .local v0, "logger":Lcom/android/internal/logging/MetricsLogger;
    const/16 v1, 0x398

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 220
    return-void
.end method
