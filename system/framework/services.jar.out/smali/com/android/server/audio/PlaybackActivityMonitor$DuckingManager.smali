.class final Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
.super Ljava/lang/Object;
.source "PlaybackActivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlaybackActivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DuckingManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    }
.end annotation


# instance fields
.field private final mDuckers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 644
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized checkDuck(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 3
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    .prologue
    monitor-enter p0

    .line 671
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .local v0, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    if-nez v0, :cond_0

    monitor-exit p0

    .line 673
    return-void

    .line 675
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 676
    return-void

    .end local v0    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized duckUid(ILjava/util/ArrayList;)V
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "apcsToDuck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 650
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    invoke-direct {v5, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 653
    .local v2, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    .line 654
    .local v0, "apc":Landroid/media/AudioPlaybackConfiguration;
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v1    # "apc$iterator":Ljava/util/Iterator;
    .end local v2    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "apc$iterator":Ljava/util/Iterator;
    .restart local v2    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :cond_1
    monitor-exit p0

    .line 656
    return-void
.end method

.method declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 679
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "da$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 680
    .local v0, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    .end local v1    # "da$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "da$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    .line 682
    return-void
.end method

.method declared-synchronized removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 4
    .param p1, "apc"    # Landroid/media/AudioPlaybackConfiguration;

    .prologue
    monitor-enter p0

    .line 685
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    .line 688
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 689
    .local v0, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    if-nez v0, :cond_0

    monitor-exit p0

    .line 690
    return-void

    .line 692
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 693
    return-void

    .end local v0    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    .end local v1    # "uid":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized unduckUid(ILjava/util/HashMap;)V
    .locals 3
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "players":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/media/AudioPlaybackConfiguration;>;"
    monitor-enter p0

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    .local v0, "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    if-nez v0, :cond_0

    monitor-exit p0

    .line 662
    return-void

    .line 664
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeUnduckAll(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 665
    return-void

    .end local v0    # "da":Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
