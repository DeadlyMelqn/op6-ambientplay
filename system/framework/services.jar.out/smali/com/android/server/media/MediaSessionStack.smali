.class Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;
    }
.end annotation


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MediaSessionStack"

.field private static final TRANSITION_PRIORITY_STATES:[I


# instance fields
.field private final mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

.field private final mCachedActiveLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

.field private final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    const/4 v0, 0x4

    .line 58
    const/4 v1, 0x5

    .line 59
    const/16 v2, 0x9

    .line 60
    const/16 v3, 0xa

    .line 56
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    .line 66
    const/4 v0, 0x6

    .line 67
    const/16 v1, 0x8

    .line 68
    const/4 v2, 0x3

    .line 65
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    .line 37
    return-void
.end method

.method constructor <init>(Lcom/android/server/media/AudioPlaybackMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/media/AudioPlaybackMonitor;
    .param p2, "listener"    # Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 93
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 97
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

    .line 98
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    .line 99
    return-void
.end method

.method private clearCache(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 380
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 381
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 385
    return-void
.end method

.method private containsState(I[I)Z
    .locals 2
    .param p1, "state"    # I
    .param p2, "states"    # [I

    .prologue
    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 371
    aget v1, p2, v0

    if-ne v1, p1, :cond_0

    .line 372
    const/4 v1, 0x1

    return v1

    .line 370
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 6
    .param p1, "uid"    # I

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    .local v2, "session$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 217
    .local v1, "session":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 218
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v3

    .line 219
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/media/AudioPlaybackMonitor;->isPlaybackActive(I)Z

    move-result v4

    .line 218
    if-ne v3, v4, :cond_1

    .line 222
    return-object v1

    .line 224
    :cond_1
    if-nez v0, :cond_0

    .line 227
    move-object v0, v1

    .local v0, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_0

    .line 231
    .end local v0    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    .end local v1    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_2
    return-object v0
.end method

.method private shouldUpdatePriority(II)Z
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v1, 0x1

    .line 359
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    return v1

    .line 362
    :cond_0
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 363
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    .line 362
    if-eqz v0, :cond_1

    .line 364
    return v1

    .line 366
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 2
    .param p1, "newMediaButtonSession"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 262
    .local v0, "oldMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    .line 263
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V

    .line 265
    return-void
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 114
    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 297
    const/4 v5, 0x0

    .line 298
    const/4 v6, -0x1

    .line 297
    invoke-virtual {p0, v5, v6}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v4

    .line 299
    .local v4, "sortedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 300
    .local v0, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Media button session is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Sessions Stack - have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " sessions:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 304
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 305
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3, p1, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_0
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 244
    .local v0, "cachedActiveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    if-nez v0, :cond_0

    .line 245
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    :cond_0
    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 284
    const/4 v4, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v2

    .line 286
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 287
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 288
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 289
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 290
    return-object v1

    .line 287
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 268
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_0

    .line 269
    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v4

    .line 271
    :cond_0
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v2

    .line 272
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 273
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 274
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 275
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 277
    return-object v1

    .line 273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_2
    return-object v6
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    return-object v0
.end method

.method public getPriorityList(ZI)Ljava/util/ArrayList;
    .locals 9
    .param p1, "activeOnly"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v3, 0x0

    .line 327
    .local v3, "lastPlaybackActiveIndex":I
    const/4 v1, 0x0

    .line 329
    .local v1, "lastActiveIndex":I
    iget-object v8, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 330
    .local v7, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "lastActiveIndex":I
    .local v2, "lastActiveIndex":I
    move v4, v3

    .end local v3    # "lastPlaybackActiveIndex":I
    .local v4, "lastPlaybackActiveIndex":I
    :goto_0
    if-ge v0, v7, :cond_4

    .line 331
    iget-object v8, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    .line 333
    .local v6, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v8, -0x1

    if-eq p2, v8, :cond_0

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v8

    if-eq p2, v8, :cond_0

    move v1, v2

    .end local v2    # "lastActiveIndex":I
    .restart local v1    # "lastActiveIndex":I
    move v3, v4

    .line 330
    .end local v4    # "lastPlaybackActiveIndex":I
    .restart local v3    # "lastPlaybackActiveIndex":I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "lastActiveIndex":I
    .restart local v2    # "lastActiveIndex":I
    move v4, v3

    .end local v3    # "lastPlaybackActiveIndex":I
    .restart local v4    # "lastPlaybackActiveIndex":I
    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v8

    if-nez v8, :cond_2

    .line 339
    if-nez p1, :cond_1

    .line 342
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v1, v2

    .end local v2    # "lastActiveIndex":I
    .restart local v1    # "lastActiveIndex":I
    move v3, v4

    .line 344
    .end local v4    # "lastPlaybackActiveIndex":I
    .restart local v3    # "lastPlaybackActiveIndex":I
    goto :goto_1

    .line 347
    .end local v1    # "lastActiveIndex":I
    .end local v3    # "lastPlaybackActiveIndex":I
    .restart local v2    # "lastActiveIndex":I
    .restart local v4    # "lastPlaybackActiveIndex":I
    :cond_2
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 348
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "lastPlaybackActiveIndex":I
    .restart local v3    # "lastPlaybackActiveIndex":I
    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 349
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "lastActiveIndex":I
    .restart local v1    # "lastActiveIndex":I
    goto :goto_1

    .line 351
    .end local v1    # "lastActiveIndex":I
    .end local v3    # "lastPlaybackActiveIndex":I
    .restart local v2    # "lastActiveIndex":I
    .restart local v4    # "lastPlaybackActiveIndex":I
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "lastActiveIndex":I
    .restart local v1    # "lastActiveIndex":I
    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v4

    .end local v4    # "lastPlaybackActiveIndex":I
    .restart local v3    # "lastPlaybackActiveIndex":I
    goto :goto_1

    .line 355
    .end local v1    # "lastActiveIndex":I
    .end local v3    # "lastPlaybackActiveIndex":I
    .end local v6    # "session":Lcom/android/server/media/MediaSessionRecord;
    .restart local v2    # "lastActiveIndex":I
    .restart local v4    # "lastPlaybackActiveIndex":I
    :cond_4
    return-object v5
.end method

.method public onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    .locals 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 150
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 160
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 163
    .local v0, "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v0, v1, :cond_1

    .line 164
    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 167
    .end local v0    # "newMediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_1
    return-void

    .line 151
    :cond_2
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iput-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_0
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 178
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 1
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v0, p1, :cond_0

    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    .line 130
    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .locals 6

    .prologue
    .line 188
    const-string/jumbo v3, "MediaSessionStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMediaButtonSessionIfNeeded, callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

    invoke-virtual {v3}, Lcom/android/server/media/AudioPlaybackMonitor;->getSortedAudioPlaybackClientUids()Landroid/util/IntArray;

    move-result-object v0

    .line 191
    .local v0, "audioPlaybackUids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 193
    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    .line 194
    .local v2, "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    if-eqz v2, :cond_1

    .line 196
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlaybackMonitor;->cleanUpAudioPlaybackUids(I)V

    .line 197
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v3, v2, :cond_0

    .line 198
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    .line 200
    :cond_0
    return-void

    .line 191
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "mediaButtonSession":Lcom/android/server/media/MediaSessionRecord;
    :cond_2
    return-void
.end method
