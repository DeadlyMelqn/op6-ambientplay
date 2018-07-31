.class public Lcom/android/server/audio/AudioEventLogger;
.super Ljava/lang/Object;
.source "AudioEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioEventLogger$Event;,
        Lcom/android/server/audio/AudioEventLogger$StringEvent;
    }
.end annotation


# instance fields
.field private final mEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/audio/AudioEventLogger$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mMemSize:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    .line 98
    iput p1, p0, Lcom/android/server/audio/AudioEventLogger;->mMemSize:I

    .line 99
    iput-object p2, p0, Lcom/android/server/audio/AudioEventLogger;->mTitle:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 110
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Audio event log: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/audio/AudioEventLogger;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "evt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioEventLogger$Event;

    .line 112
    .local v0, "evt":Lcom/android/server/audio/AudioEventLogger$Event;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioEventLogger$Event;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "evt":Lcom/android/server/audio/AudioEventLogger$Event;
    .end local v1    # "evt$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "evt$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 114
    return-void
.end method

.method public declared-synchronized log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    .locals 2
    .param p1, "evt"    # Lcom/android/server/audio/AudioEventLogger$Event;

    .prologue
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/audio/AudioEventLogger;->mMemSize:I

    if-lt v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioEventLogger;->mEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 107
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
