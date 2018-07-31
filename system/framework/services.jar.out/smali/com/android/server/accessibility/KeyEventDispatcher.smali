.class public Lcom/android/server/accessibility/KeyEventDispatcher;
.super Ljava/lang/Object;
.source "KeyEventDispatcher.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;,
        Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "KeyEventDispatcher"

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final MSG_ON_KEY_EVENT_TIMEOUT:I = 0x1

.field private static final ON_KEY_EVENT_TIMEOUT_MILLIS:J = 0x1f4L


# instance fields
.field private final mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

.field private mKeyEventTimeoutHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMessageTypeForSendKeyEvent:I

.field private final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingEventsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V
    .locals 3
    .param p1, "handlerToSendKeyEventsToInputFilter"    # Landroid/os/Handler;
    .param p2, "messageTypeForSendKeyEvent"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "powerManager"    # Landroid/os/PowerManager;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    .line 85
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    .line 87
    const-class v1, Lcom/android/server/accessibility/KeyEventDispatcher;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 86
    invoke-direct {v0, p0, v2, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 91
    :goto_0
    iput-object p1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    .line 92
    iput p2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 93
    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 95
    iput-object p3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    .line 96
    iput-object p4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    .line 97
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "handlerToSendKeyEventsToInputFilter"    # Landroid/os/Handler;
    .param p2, "messageTypeForSendKeyEvent"    # I
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "powerManager"    # Landroid/os/PowerManager;
    .param p5, "timeoutHandler"    # Landroid/os/Handler;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    .line 108
    iput-object p5, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method private obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 222
    .local v0, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .end local v0    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    invoke-direct {v0, v3}, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;-><init>(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)V

    .line 225
    .restart local v0    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :cond_0
    iput-object p1, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 226
    iput p2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    .line 227
    iput v2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 228
    iput-boolean v2, v0, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 229
    return-object v0
.end method

.method private static removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .locals 3
    .param p1, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;",
            ">;I)",
            "Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "listOfEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 236
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 237
    .local v1, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    iget-object v2, v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 245
    invoke-interface {p0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    return-object v1

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    .locals 6
    .param p1, "pendingEvent"    # Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 257
    iget v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    if-lez v1, :cond_0

    .line 258
    return v4

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 261
    iget-boolean v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    if-nez v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_1

    .line 267
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mSentEventsVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v2, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v1, v2, v4}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 269
    :cond_1
    iget v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->policyFlags:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int v0, v1, v2

    .line 270
    .local v0, "policyFlags":I
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mHandlerToSendKeyEventsToInputFilter:Landroid/os/Handler;

    .line 271
    iget v2, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mMessageTypeForSendKeyEvent:I

    iget-object v3, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    .line 270
    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 276
    .end local v0    # "policyFlags":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 277
    return v5

    .line 274
    :cond_2
    iget-object v1, p1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public flush(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;)V
    .locals 5
    .param p1, "keyEventFilter"    # Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;

    .prologue
    .line 189
    iget-object v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 191
    .local v2, "pendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    if-eqz v2, :cond_1

    .line 192
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 193
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 194
    .local v1, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    :cond_1
    monitor-exit v4

    .line 199
    return-void

    .line 189
    .end local v2    # "pendingEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 203
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v5, :cond_0

    .line 204
    const-string/jumbo v3, "KeyEventDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v3, 0x0

    return v3

    .line 207
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    .line 208
    .local v2, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    iget-object v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listForService$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 210
    .local v0, "listForService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .end local v0    # "listForService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :cond_2
    monitor-exit v4

    .line 217
    return v5

    .line 208
    .end local v1    # "listForService$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/KeyEvent;",
            "I",
            "Ljava/util/List",
            "<+",
            "Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "keyEventFilters":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;>;"
    const/4 v7, 0x1

    .line 127
    const/4 v5, 0x0

    .line 128
    .local v5, "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v2

    .line 129
    .local v2, "localClone":Landroid/view/KeyEvent;
    const/4 v0, 0x0

    .end local v5    # "pendingKeyEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 130
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;

    .line 131
    .local v1, "keyEventFilter":Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSequenceNumber()I

    move-result v6

    invoke-interface {v1, v2, v6}, Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;->onKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 132
    if-nez v5, :cond_0

    .line 133
    invoke-direct {p0, v2, p2}, Lcom/android/server/accessibility/KeyEventDispatcher;->obtainPendingEventLocked(Landroid/view/KeyEvent;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    move-result-object v5

    .line 135
    :cond_0
    iget-object v6, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 136
    .local v4, "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    if-nez v4, :cond_1

    .line 137
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .restart local v4    # "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    iget-object v6, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v6, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget v6, v5, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->referenceCount:I

    .line 129
    .end local v4    # "pendingEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;>;"
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "keyEventFilter":Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
    :cond_3
    if-nez v5, :cond_4

    .line 146
    invoke-virtual {v2}, Landroid/view/KeyEvent;->recycle()V

    .line 147
    const/4 v6, 0x0

    return v6

    .line 150
    :cond_4
    iget-object v6, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 152
    .local v3, "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mKeyEventTimeoutHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    return v7
.end method

.method public setOnKeyEventResult(Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;ZI)V
    .locals 9
    .param p1, "keyEventFilter"    # Lcom/android/server/accessibility/KeyEventDispatcher$KeyEventFilter;
    .param p2, "handled"    # Z
    .param p3, "sequence"    # I

    .prologue
    .line 164
    iget-object v4, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 166
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPendingEventsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3, p3}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeEventFromListLocked(Ljava/util/List;I)Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;

    move-result-object v2

    .line 167
    .local v2, "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    if-eqz v2, :cond_1

    .line 168
    if-eqz p2, :cond_0

    iget-boolean v3, v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 169
    iput-boolean p2, v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->handled:Z

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 172
    .local v0, "identity":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/accessibility/KeyEventDispatcher;->mPowerManager:Landroid/os/PowerManager;

    iget-object v5, v2, Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 173
    const/4 v5, 0x3

    const/4 v8, 0x0

    .line 172
    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    .end local v0    # "identity":J
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/accessibility/KeyEventDispatcher;->removeReferenceToPendingEventLocked(Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v4

    .line 181
    return-void

    .line 174
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v3

    .line 175
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 164
    .end local v0    # "identity":J
    .end local v2    # "pendingEvent":Lcom/android/server/accessibility/KeyEventDispatcher$PendingKeyEvent;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method
