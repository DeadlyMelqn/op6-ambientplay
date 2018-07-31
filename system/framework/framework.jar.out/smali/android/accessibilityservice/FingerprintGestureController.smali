.class public final Landroid/accessibilityservice/FingerprintGestureController;
.super Ljava/lang/Object;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_GESTURE_SWIPE_DOWN:I = 0x8

.field public static final FINGERPRINT_GESTURE_SWIPE_LEFT:I = 0x2

.field public static final FINGERPRINT_GESTURE_SWIPE_RIGHT:I = 0x1

.field public static final FINGERPRINT_GESTURE_SWIPE_UP:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureController"


# instance fields
.field private final mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

.field private final mCallbackHandlerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2
    .param p1, "connection"    # Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 70
    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    .line 79
    iput-object p1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    .line 80
    return-void
.end method

.method static synthetic lambda$-android_accessibilityservice_FingerprintGestureController_5924(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V
    .locals 0
    .param p0, "callback"    # Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .param p1, "active"    # Z

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_accessibilityservice_FingerprintGestureController_6679(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .param p1, "gesture"    # I

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    return-void
.end method


# virtual methods
.method public isGestureDetectionAvailable()Z
    .locals 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isFingerprintGestureDetectionAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintGestureController"

    const-string/jumbo v2, "Failed to check if fingerprint gestures are active"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 94
    const/4 v1, 0x0

    return v1
.end method

.method public onGesture(I)V
    .locals 7
    .param p1, "gesture"    # I

    .prologue
    .line 151
    iget-object v6, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 152
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-direct {v2, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    monitor-exit v6

    .line 154
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 155
    .local v4, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 156
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    .line 157
    .local v0, "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 158
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 159
    new-instance v5, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;

    invoke-direct {v5, p1, v0}, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    .end local v3    # "i":I
    .end local v4    # "numListeners":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 161
    .restart local v0    # "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    .restart local v3    # "i":I
    .restart local v4    # "numListeners":I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    goto :goto_1

    .line 164
    .end local v0    # "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public onGestureDetectionActiveChanged(Z)V
    .locals 7
    .param p1, "active"    # Z

    .prologue
    .line 130
    iget-object v6, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 131
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-direct {v2, v5}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    monitor-exit v6

    .line 133
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 134
    .local v4, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 135
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    .line 136
    .local v0, "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    .line 137
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 138
    new-instance v5, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k$1;

    invoke-direct {v5, p1, v0}, Landroid/accessibilityservice/-$Lambda$ktCbXYLeLcj2fWU6KTqcB7Ybd9k$1;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    .end local v3    # "i":I
    .end local v4    # "numListeners":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 140
    .restart local v0    # "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "handlerMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;>;"
    .restart local v3    # "i":I
    .restart local v4    # "numListeners":I
    :cond_0
    invoke-virtual {v0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    goto :goto_1

    .line 143
    .end local v0    # "callback":Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public registerFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 107
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 110
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    .prologue
    .line 119
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 122
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
