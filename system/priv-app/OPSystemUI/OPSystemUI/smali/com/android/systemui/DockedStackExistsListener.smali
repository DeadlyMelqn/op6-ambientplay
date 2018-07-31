.class public Lcom/android/systemui/DockedStackExistsListener;
.super Ljava/lang/Object;
.source "DockedStackExistsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/DockedStackExistsListener$1;
    }
.end annotation


# static fields
.field private static mLastExists:Z

.field private static sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Z)V
    .locals 0
    .param p0, "exists"    # Z

    .prologue
    invoke-static {p0}, Lcom/android/systemui/DockedStackExistsListener;->onDockedStackExistsChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    .line 40
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 41
    new-instance v2, Lcom/android/systemui/DockedStackExistsListener$1;

    invoke-direct {v2}, Lcom/android/systemui/DockedStackExistsListener$1;-><init>()V

    .line 40
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 71
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DockedStackExistsListener"

    const-string/jumbo v2, "Failed registering docked stack exists listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_DockedStackExistsListener_2817(ZLjava/lang/ref/WeakReference;)Z
    .locals 2
    .param p0, "exists"    # Z

    .prologue
    .line 80
    .local p1, "wf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/util/function/Consumer<Ljava/lang/Boolean;>;>;"
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    .line 81
    .local v0, "l":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 82
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static onDockedStackExistsChanged(Z)V
    .locals 3
    .param p0, "exists"    # Z

    .prologue
    .line 77
    sput-boolean p0, Lcom/android/systemui/DockedStackExistsListener;->mLastExists:Z

    .line 78
    sget-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/-$Lambda$hrhGgnBZlI4TxBMU92uUeesjggg;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$Lambda$hrhGgnBZlI4TxBMU92uUeesjggg;-><init>(Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 85
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static register(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    sget-boolean v0, Lcom/android/systemui/DockedStackExistsListener;->mLastExists:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 89
    sget-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 92
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
