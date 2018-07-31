.class Lcom/android/server/media/AudioPlaybackMonitor;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
.source "AudioPlaybackMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;,
        Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/media/AudioPlaybackMonitor;


# instance fields
.field private final mActiveAudioPlaybackClientUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlaybackStartedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlaybackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlayerActiveStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mSortedAudioPlaybackClientUids:Landroid/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/media/AudioPlaybackMonitor;->DEBUG:Z

    .line 46
    const-string/jumbo v0, "AudioPlaybackMonitor"

    sput-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/media/IAudioService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioService"    # Landroid/media/IAudioService;

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStartedListeners:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlayerActiveStateChangedListeners:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    .line 71
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    .line 76
    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    .line 86
    iput-object p1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mContext:Landroid/content/Context;

    .line 88
    :try_start_0
    invoke-interface {p2, p0}, Landroid/media/IAudioService;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to register playback callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static getInstance(Landroid/content/Context;Landroid/media/IAudioService;)Lcom/android/server/media/AudioPlaybackMonitor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioService"    # Landroid/media/IAudioService;

    .prologue
    .line 79
    sget-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->sInstance:Lcom/android/server/media/AudioPlaybackMonitor;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/server/media/AudioPlaybackMonitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/AudioPlaybackMonitor;-><init>(Landroid/content/Context;Landroid/media/IAudioService;)V

    sput-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->sInstance:Lcom/android/server/media/AudioPlaybackMonitor;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->sInstance:Lcom/android/server/media/AudioPlaybackMonitor;

    return-object v0
.end method

.method private isActiveState(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    .line 287
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUpAudioPlaybackUids(I)V
    .locals 5
    .param p1, "mediaButtonSessionUid"    # I

    .prologue
    .line 247
    iget-object v4, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 248
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 249
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 250
    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_1

    :cond_0
    monitor-exit v4

    .line 263
    return-void

    .line 253
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    .line 254
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/media/AudioPlaybackMonitor;->isPlaybackActive(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 247
    .end local v0    # "i":I
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .locals 24
    .param p2, "flush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    if-eqz p2, :cond_0

    .line 106
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 110
    .local v16, "token":J
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v13, "newActiveAudioPlaybackClientUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 116
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->clear()V

    .line 117
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    .line 123
    .local v6, "config":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v20

    .line 124
    const/16 v22, 0x3

    .line 123
    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 130
    .local v14, "oldState":Ljava/lang/Integer;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/media/AudioPlaybackMonitor;->isActiveState(Ljava/lang/Integer;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 131
    sget-boolean v20, Lcom/android/server/media/AudioPlaybackMonitor;->DEBUG:Z

    if-eqz v20, :cond_2

    .line 132
    sget-object v20, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Found a new active media playback. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 133
    invoke-static {v6}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v23

    .line 132
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_2
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v8

    .line 138
    .local v8, "index":I
    if-eqz v8, :cond_1

    .line 141
    if-lez v8, :cond_3

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/IntArray;->remove(I)V

    .line 144
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/IntArray;->add(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 113
    .end local v6    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v7    # "config$iterator":Ljava/util/Iterator;
    .end local v8    # "index":I
    .end local v14    # "oldState":Ljava/lang/Integer;
    :catchall_0
    move-exception v20

    :try_start_2
    monitor-exit v21

    throw v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    .end local v13    # "newActiveAudioPlaybackClientUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v20

    .line 175
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    throw v20

    .line 147
    .restart local v7    # "config$iterator":Ljava/util/Iterator;
    .restart local v13    # "newActiveAudioPlaybackClientUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlayerActiveStateChangedListeners:Ljava/util/List;

    move-object/from16 v20, v0

    .line 147
    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v5, "audioPlayerActiveStateChangedListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;>;"
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStartedListeners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v4, "audioPlaybackStartedListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;>;"
    :try_start_4
    monitor-exit v21

    .line 152
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    .line 154
    .restart local v6    # "config":Landroid/media/AudioPlaybackConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/media/AudioPlaybackMonitor;->isActiveState(Ljava/lang/Integer;)Z

    move-result v19

    .line 155
    .local v19, "wasActive":Z
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v9

    .line 156
    .local v9, "isActive":Z
    move/from16 v0, v19

    if-eq v0, v9, :cond_5

    .line 157
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;

    .line 159
    .local v11, "listener":Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v11, v0, v9}, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;->onAudioPlayerActiveStateChanged(IZ)V

    goto :goto_1

    .line 165
    .end local v6    # "config":Landroid/media/AudioPlaybackConfiguration;
    .end local v9    # "isActive":Z
    .end local v11    # "listener":Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;
    .end local v12    # "listener$iterator":Ljava/util/Iterator;
    .end local v19    # "wasActive":Z
    :cond_6
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "uid$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 166
    .local v15, "uid":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "listener$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;

    .line 167
    .local v10, "listener":Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;
    invoke-interface {v10, v15}, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;->onAudioPlaybackStarted(I)V

    goto :goto_2

    .line 170
    .end local v10    # "listener":Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;
    .end local v12    # "listener$iterator":Ljava/util/Iterator;
    .end local v15    # "uid":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    .line 171
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    .line 172
    .restart local v6    # "config":Landroid/media/AudioPlaybackConfiguration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 175
    .end local v6    # "config":Landroid/media/AudioPlaybackConfiguration;
    :cond_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v6, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 270
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "Audio playback (lastly played comes first)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "indent":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 273
    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 274
    .local v4, "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " packages="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 275
    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 277
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    .end local v2    # "j":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3    # "packages":[Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_1
    monitor-exit v6

    .line 284
    return-void

    .line 269
    .end local v0    # "i":I
    .end local v1    # "indent":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getSortedAudioPlaybackClientUids()Landroid/util/IntArray;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 223
    .local v0, "sortedAudioPlaybackClientUids":Landroid/util/IntArray;
    iget-object v2, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 226
    return-object v0

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isPlaybackActive(I)Z
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerOnAudioPlaybackStartedListener(Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStartedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 186
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerOnAudioPlayerActiveStateChangedListener(Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlayerActiveStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 205
    return-void

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterOnAudioPlaybackStartedListener(Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStartedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 195
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterOnAudioPlayerActiveStateChangedListener(Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlayerActiveStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 215
    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
