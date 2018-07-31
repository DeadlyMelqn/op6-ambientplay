.class public Landroid/net/lowpan/LowpanManager;
.super Ljava/lang/Object;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/lowpan/ILowpanInterface;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/lowpan/LowpanInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInterfaceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/lowpan/LowpanInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mService:Landroid/net/lowpan/ILowpanManager;


# direct methods
.method static synthetic -get0(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanManager;

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanManager;

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanManager;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/lowpan/ILowpanManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 60
    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    .line 105
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    .line 107
    iput-object p3, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    .line 108
    return-void
.end method

.method constructor <init>(Landroid/net/lowpan/ILowpanManager;)V
    .locals 2
    .param p1, "service"    # Landroid/net/lowpan/ILowpanManager;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 60
    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    .line 88
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    .line 89
    iput-object v1, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    .line 90
    iput-object v1, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    .line 91
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/lowpan/LowpanManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string/jumbo v0, "lowpan"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/lowpan/LowpanManager;

    return-object v0
.end method

.method public static getManager()Landroid/net/lowpan/LowpanManager;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    const-string/jumbo v2, "lowpan"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 77
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 78
    invoke-static {v0}, Landroid/net/lowpan/ILowpanManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;

    move-result-object v1

    .line 79
    .local v1, "service":Landroid/net/lowpan/ILowpanManager;
    new-instance v2, Landroid/net/lowpan/LowpanManager;

    invoke-direct {v2, v1}, Landroid/net/lowpan/LowpanManager;-><init>(Landroid/net/lowpan/ILowpanManager;)V

    return-object v2

    .line 82
    .end local v1    # "service":Landroid/net/lowpan/ILowpanManager;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public getInterface()Landroid/net/lowpan/LowpanInterface;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanManager;->getInterfaceList()[Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "ifaceList":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 205
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Landroid/net/lowpan/LowpanManager;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v1

    return-object v1

    .line 207
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
    .locals 9
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 116
    .local v1, "iface":Landroid/net/lowpan/LowpanInterface;
    :try_start_0
    iget-object v6, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :try_start_1
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/lowpan/LowpanInterface;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v1, "iface":Landroid/net/lowpan/LowpanInterface;
    move-object v2, v1

    .line 121
    .end local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    .local v2, "iface":Landroid/net/lowpan/LowpanInterface;
    :goto_0
    if-nez v2, :cond_0

    .line 122
    :try_start_2
    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "ifaceName":Ljava/lang/String;
    new-instance v1, Landroid/net/lowpan/LowpanInterface;

    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v5, p1, v7}, Landroid/net/lowpan/LowpanInterface;-><init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    .end local v2    # "iface":Landroid/net/lowpan/LowpanInterface;
    .restart local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    :try_start_3
    iget-object v7, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    :try_start_4
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v7

    .line 130
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 139
    new-instance v7, Landroid/net/lowpan/LowpanManager$1;

    invoke-direct {v7, p0, v3, p1}, Landroid/net/lowpan/LowpanManager$1;-><init>(Landroid/net/lowpan/LowpanManager;Ljava/lang/String;Landroid/net/lowpan/ILowpanInterface;)V

    .line 153
    const/4 v8, 0x0

    .line 136
    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v3    # "ifaceName":Ljava/lang/String;
    :goto_1
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 160
    return-object v1

    .line 126
    .restart local v3    # "ifaceName":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_7
    monitor-exit v7

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 116
    .end local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    .end local v3    # "ifaceName":Ljava/lang/String;
    :catchall_1
    move-exception v5

    :goto_2
    :try_start_8
    monitor-exit v6

    throw v5
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 156
    :catch_0
    move-exception v4

    .line 157
    .local v4, "x":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 116
    .end local v4    # "x":Landroid/os/RemoteException;
    .restart local v2    # "iface":Landroid/net/lowpan/LowpanInterface;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "iface":Landroid/net/lowpan/LowpanInterface;
    .restart local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    goto :goto_2

    .end local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    .restart local v2    # "iface":Landroid/net/lowpan/LowpanInterface;
    :cond_0
    move-object v1, v2

    .end local v2    # "iface":Landroid/net/lowpan/LowpanInterface;
    .restart local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    goto :goto_1

    .local v1, "iface":Landroid/net/lowpan/LowpanInterface;
    :cond_1
    move-object v2, v1

    .restart local v2    # "iface":Landroid/net/lowpan/LowpanInterface;
    goto :goto_0
.end method

.method public getInterface(Ljava/lang/String;)Landroid/net/lowpan/LowpanInterface;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 178
    .local v1, "iface":Landroid/net/lowpan/LowpanInterface;
    :try_start_0
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :try_start_1
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/lowpan/LowpanInterface;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    return-object v1

    .line 183
    .restart local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    :cond_1
    :try_start_3
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v4, p1}, Landroid/net/lowpan/ILowpanManager;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v2

    .line 185
    .local v2, "ifaceService":Landroid/net/lowpan/ILowpanInterface;
    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {p0, v2}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .local v1, "iface":Landroid/net/lowpan/LowpanInterface;
    goto :goto_0

    .line 178
    .end local v2    # "ifaceService":Landroid/net/lowpan/ILowpanInterface;
    .local v1, "iface":Landroid/net/lowpan/LowpanInterface;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5

    throw v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 190
    .end local v1    # "iface":Landroid/net/lowpan/LowpanInterface;
    :catch_0
    move-exception v3

    .line 191
    .local v3, "x":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public getInterfaceList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v1}, Landroid/net/lowpan/ILowpanManager;->getInterfaceList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V

    .line 287
    return-void
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
    .locals 5
    .param p1, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Landroid/net/lowpan/LowpanManager$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanManager$2;-><init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V

    .line 274
    .local v0, "listenerBinder":Landroid/net/lowpan/ILowpanManagerListener$Stub;
    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v2, v0}, Landroid/net/lowpan/ILowpanManager;->addListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 280
    :try_start_1
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 282
    return-void

    .line 275
    :catch_0
    move-exception v1

    .line 276
    .local v1, "x":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 279
    .end local v1    # "x":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterCallback(Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 6
    .param p1, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;

    .prologue
    .line 295
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 296
    .local v1, "hashCode":Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 298
    .local v2, "listenerBinder":Landroid/net/lowpan/ILowpanManagerListener;
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v5

    .line 299
    :try_start_0
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/lowpan/ILowpanManagerListener;

    move-object v2, v0

    .line 300
    .local v2, "listenerBinder":Landroid/net/lowpan/ILowpanManagerListener;
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 303
    if-eqz v2, :cond_0

    .line 305
    :try_start_1
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v4, v2}, Landroid/net/lowpan/ILowpanManager;->removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 312
    return-void

    .line 298
    .end local v2    # "listenerBinder":Landroid/net/lowpan/ILowpanManagerListener;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 306
    .restart local v2    # "listenerBinder":Landroid/net/lowpan/ILowpanManagerListener;
    :catch_0
    move-exception v3

    .line 307
    .local v3, "x":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 310
    .end local v3    # "x":Landroid/os/RemoteException;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Attempt to unregister an unknown callback"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
