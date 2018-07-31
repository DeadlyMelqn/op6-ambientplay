.class public final Landroid/accessibilityservice/AccessibilityButtonController;
.super Ljava/lang/Object;
.source "AccessibilityButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "A11yButtonController"


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 1
    .param p1, "serviceConnection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method dispatchAccessibilityButtonAvailabilityChanged(Z)V
    .locals 8
    .param p1, "available"    # Z

    .prologue
    .line 172
    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 173
    :try_start_0
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    :cond_0
    const-string/jumbo v5, "A11yButtonController"

    .line 175
    const-string/jumbo v7, "Received accessibility button availability change with no callbacks!"

    .line 174
    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 176
    return-void

    .line 181
    :cond_1
    :try_start_1
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v2, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    monitor-exit v6

    .line 184
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 185
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 186
    .local v0, "callback":Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 187
    .local v3, "handler":Landroid/os/Handler;
    new-instance v5, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4$1;

    invoke-direct {v5, p1, p0, v0}, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4$1;-><init>(ZLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "callback":Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    .end local v1    # "count":I
    .end local v2    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 189
    .restart local v1    # "count":I
    .restart local v2    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    .restart local v4    # "i":I
    :cond_2
    return-void
.end method

.method dispatchAccessibilityButtonClicked()V
    .locals 8

    .prologue
    .line 148
    iget-object v6, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 149
    :try_start_0
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    :cond_0
    const-string/jumbo v5, "A11yButtonController"

    const-string/jumbo v7, "Received accessibility button click with no callbacks!"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 151
    return-void

    .line 156
    :cond_1
    :try_start_1
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v2, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    monitor-exit v6

    .line 159
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 160
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .line 161
    .local v0, "callback":Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 162
    .local v3, "handler":Landroid/os/Handler;
    new-instance v5, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4;

    invoke-direct {v5, p0, v0}, Landroid/accessibilityservice/-$Lambda$kpEvk0Apj34UqdMMU09LT6cNwG4;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "callback":Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    .end local v1    # "count":I
    .end local v2    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    .end local v3    # "handler":Landroid/os/Handler;
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 164
    .restart local v1    # "count":I
    .restart local v2    # "entries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;>;"
    .restart local v4    # "i":I
    :cond_2
    return-void
.end method

.method public isAccessibilityButtonAvailable()Z
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isAccessibilityButtonAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "A11yButtonController"

    const-string/jumbo v2, "Failed to get accessibility button availability."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 84
    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$-android_accessibilityservice_AccessibilityButtonController_6699(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .prologue
    .line 162
    invoke-virtual {p1, p0}, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;->onClicked(Landroid/accessibilityservice/AccessibilityButtonController;)V

    return-void
.end method

.method synthetic lambda$-android_accessibilityservice_AccessibilityButtonController_7728(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V
    .locals 0
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    .param p2, "available"    # Z

    .prologue
    .line 187
    invoke-virtual {p1, p0, p2}, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;->onAvailabilityChanged(Landroid/accessibilityservice/AccessibilityButtonController;Z)V

    return-void
.end method

.method public registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .prologue
    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityButtonController;->registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;)V

    .line 96
    return-void
.end method

.method public registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 109
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 118
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    .prologue
    .line 128
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v3

    .line 131
    return-void

    .line 134
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 135
    .local v1, "keyIndex":I
    if-ltz v1, :cond_2

    const/4 v0, 0x1

    .line 136
    .local v0, "hasKey":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 137
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    .line 140
    return-void

    .line 135
    .end local v0    # "hasKey":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasKey":Z
    goto :goto_0

    .line 129
    .end local v0    # "hasKey":Z
    .end local v1    # "keyIndex":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
