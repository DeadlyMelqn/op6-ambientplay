.class public Lcom/android/server/backup/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;,
        Lcom/android/server/backup/TransportManager$TransportBoundListener;,
        Lcom/android/server/backup/TransportManager$TransportConnection;
    }
.end annotation


# static fields
.field private static final REBINDING_TIMEOUT_MSG:I = 0x1

.field private static final REBINDING_TIMEOUT_PROVISIONED_MS:J = 0x493e0L

.field private static final REBINDING_TIMEOUT_UNPROVISIONED_MS:J = 0x7530L

.field private static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"

.field private static final TAG:Ljava/lang/String; = "BackupTransportManager"


# instance fields
.field private final mBoundTransports:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentTransportName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

.field private final mTransportLock:Ljava/lang/Object;

.field private final mTransportServiceIntent:Landroid/content/Intent;

.field private final mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mValidTransports:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mTransportLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/TransportManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mBoundTransports:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/backup/TransportManager;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/TransportManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/backup/TransportManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/TransportManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/backup/TransportManager;)Lcom/android/server/backup/TransportManager$TransportBoundListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/TransportManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/backup/TransportManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/TransportManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/backup/TransportManager;)Ljava/util/Map;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/TransportManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;Landroid/content/ServiceConnection;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/TransportManager;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->bindToTransport(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/backup/TransportManager;
    .param p1, "transportComponentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->tryBindTransport(Landroid/content/ComponentName;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/TransportManager$TransportBoundListener;Landroid/os/Looper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "defaultTransport"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/android/server/backup/TransportManager$TransportBoundListener;
    .param p5, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/TransportManager$TransportBoundListener;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "whitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    .line 92
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mBoundTransports:Ljava/util/Map;

    .line 96
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 98
    if-eqz p2, :cond_0

    .end local p2    # "whitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :goto_0
    iput-object p2, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 99
    iput-object p3, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mTransportBoundListener:Lcom/android/server/backup/TransportManager$TransportBoundListener;

    .line 101
    new-instance v0, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;

    invoke-direct {v0, p0, p5}, Lcom/android/server/backup/TransportManager$RebindOnTimeoutHandler;-><init>(Lcom/android/server/backup/TransportManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mHandler:Landroid/os/Handler;

    .line 102
    return-void

    .line 98
    .restart local p2    # "whitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    new-instance p2, Landroid/util/ArraySet;

    .end local p2    # "whitelist":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    goto :goto_0
.end method

.method private bindToAllInternal(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .prologue
    .line 236
    const/4 v8, 0x0

    .line 237
    .local v8, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz p1, :cond_0

    .line 239
    :try_start_0
    iget-object v10, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 246
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v7, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 247
    .local v7, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {v7, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_1
    iget-object v10, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 252
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 251
    invoke-virtual {v10, v7, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 253
    .local v5, "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_6

    .line 254
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "host$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 255
    .local v3, "host":Landroid/content/pm/ResolveInfo;
    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v10}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 256
    .local v6, "infoComponentName":Landroid/content/ComponentName;
    const/4 v9, 0x0

    .line 257
    .local v9, "shouldBind":Z
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 258
    const/4 v10, 0x0

    array-length v11, p2

    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v1, p2, v10

    .line 259
    .local v1, "component":Ljava/lang/String;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v12, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v12, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 261
    const/4 v9, 0x1

    .line 268
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "component":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v9, :cond_2

    invoke-direct {p0, v6}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 269
    invoke-direct {p0, v6}, Lcom/android/server/backup/TransportManager;->tryBindTransport(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 240
    .end local v3    # "host":Landroid/content/pm/ResolveInfo;
    .end local v4    # "host$iterator":Ljava/util/Iterator;
    .end local v5    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "infoComponentName":Landroid/content/ComponentName;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "shouldBind":Z
    .restart local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "BackupTransportManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Package not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void

    .line 258
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v1    # "component":Ljava/lang/String;
    .restart local v3    # "host":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "host$iterator":Ljava/util/Iterator;
    .restart local v5    # "hosts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v6    # "infoComponentName":Landroid/content/ComponentName;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v9    # "shouldBind":Z
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "component":Ljava/lang/String;
    :cond_5
    const/4 v9, 0x1

    goto :goto_2

    .line 273
    .end local v3    # "host":Landroid/content/pm/ResolveInfo;
    .end local v4    # "host$iterator":Ljava/util/Iterator;
    .end local v6    # "infoComponentName":Landroid/content/ComponentName;
    .end local v9    # "shouldBind":Z
    :cond_6
    return-void
.end method

.method private bindToTransport(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 310
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mContext:Landroid/content/Context;

    .line 313
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 312
    const/4 v3, 0x1

    invoke-virtual {v1, v0, p2, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method private isTransportTrusted(Landroid/content/ComponentName;)Z
    .locals 6
    .param p1, "transport"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 277
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    const-string/jumbo v2, "BackupTransportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BackupTransport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    const-string/jumbo v4, " not whitelisted."

    .line 278
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v5

    .line 283
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 284
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    .line 286
    const-string/jumbo v2, "BackupTransportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Transport package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not privileged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    return v5

    .line 289
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "BackupTransportManager"

    const-string/jumbo v3, "Package not found."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    return v5

    .line 293
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private static log_verbose(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string/jumbo v0, "BackupTransportManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const-string/jumbo v0, "BackupTransportManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    return-void
.end method

.method private tryBindTransport(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "transportComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 297
    const-string/jumbo v1, "BackupTransportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding to transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v0, Lcom/android/server/backup/TransportManager$TransportConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/backup/TransportManager$TransportConnection;-><init>(Lcom/android/server/backup/TransportManager;Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportConnection;)V

    .line 300
    .local v0, "connection":Lcom/android/server/backup/TransportManager$TransportConnection;
    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/TransportManager;->bindToTransport(Landroid/content/ComponentName;Landroid/content/ServiceConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 307
    :goto_0
    return-void

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 305
    :cond_0
    const-string/jumbo v1, "BackupTransportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t bind to transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method ensureTransportReady(Landroid/content/ComponentName;Landroid/app/backup/SelectBackupTransportCallback;)V
    .locals 3
    .param p1, "transportComponent"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/SelectBackupTransportCallback;

    .prologue
    .line 212
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/TransportManager$TransportConnection;

    .line 214
    .local v0, "conn":Lcom/android/server/backup/TransportManager$TransportConnection;
    if-nez v0, :cond_0

    .line 215
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/app/backup/SelectBackupTransportCallback;->onFailure(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 216
    return-void

    .line 219
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/android/server/backup/TransportManager$TransportConnection;->-wrap3(Lcom/android/server/backup/TransportManager$TransportConnection;)V

    .line 220
    invoke-static {v0, p2}, Lcom/android/server/backup/TransportManager$TransportConnection;->-wrap2(Lcom/android/server/backup/TransportManager$TransportConnection;Landroid/app/backup/SelectBackupTransportCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 222
    return-void

    .line 212
    .end local v0    # "conn":Lcom/android/server/backup/TransportManager$TransportConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getAllTransportCompenents()[Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getBoundTransportNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mBoundTransports:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mBoundTransports:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCurrentTransportBinder()Lcom/android/internal/backup/IBackupTransport;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/backup/TransportManager;->getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    return-object v0
.end method

.method getCurrentTransportName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportBinder(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    .locals 7
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 153
    iget-object v3, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v3

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mBoundTransports:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 155
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 156
    const-string/jumbo v2, "BackupTransportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not bound."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 157
    return-object v6

    .line 159
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/TransportManager$TransportConnection;

    .line 160
    .local v1, "conn":Lcom/android/server/backup/TransportManager$TransportConnection;
    if-nez v1, :cond_1

    .line 161
    const-string/jumbo v2, "BackupTransportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not valid."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 162
    return-object v6

    .line 164
    :cond_1
    :try_start_2
    invoke-static {v1}, Lcom/android/server/backup/TransportManager$TransportConnection;->-wrap0(Lcom/android/server/backup/TransportManager$TransportConnection;)Lcom/android/internal/backup/IBackupTransport;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 153
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "conn":Lcom/android/server/backup/TransportManager$TransportConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getTransportName(Lcom/android/internal/backup/IBackupTransport;)Ljava/lang/String;
    .locals 4
    .param p1, "binder"    # Lcom/android/internal/backup/IBackupTransport;

    .prologue
    .line 173
    iget-object v3, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v3

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conn$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/TransportManager$TransportConnection;

    .line 175
    .local v0, "conn":Lcom/android/server/backup/TransportManager$TransportConnection;
    invoke-static {v0}, Lcom/android/server/backup/TransportManager$TransportConnection;->-wrap0(Lcom/android/server/backup/TransportManager$TransportConnection;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 176
    invoke-static {v0}, Lcom/android/server/backup/TransportManager$TransportConnection;->-wrap1(Lcom/android/server/backup/TransportManager$TransportConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .end local v0    # "conn":Lcom/android/server/backup/TransportManager$TransportConnection;
    :cond_1
    monitor-exit v3

    .line 180
    const/4 v2, 0x0

    return-object v2

    .line 173
    .end local v1    # "conn$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method getTransportWhitelist()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    return-object v0
.end method

.method onPackageAdded(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package added. Binding to all transports. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/backup/TransportManager;->log_verbose(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/TransportManager;->bindToAllInternal(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 110
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "components"    # [Ljava/lang/String;

    .prologue
    .line 136
    iget-object v4, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v4

    .line 139
    const/4 v3, 0x0

    :try_start_0
    array-length v5, p2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, p2, v3

    .line 140
    .local v0, "component":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager$TransportConnection;

    .line 142
    .local v2, "removed":Lcom/android/server/backup/TransportManager$TransportConnection;
    if-eqz v2, :cond_0

    .line 143
    iget-object v6, p0, Lcom/android/server/backup/TransportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package changed. Removing transport: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 145
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/backup/TransportManager;->log_verbose(Ljava/lang/String;)V

    .line 139
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "component":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "removed":Lcom/android/server/backup/TransportManager$TransportConnection;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->bindToAllInternal(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 150
    return-void

    .line 136
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method onPackageRemoved(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v5, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v5

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/android/server/backup/TransportManager;->mValidTransports:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 119
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportConnection;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 121
    .local v3, "validTransport":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportConnection;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 122
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager$TransportConnection;

    .line 124
    .local v2, "transportConnection":Lcom/android/server/backup/TransportManager$TransportConnection;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 125
    if-eqz v2, :cond_0

    .line 126
    iget-object v4, p0, Lcom/android/server/backup/TransportManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package removed, removing transport: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 128
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/backup/TransportManager;->log_verbose(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportConnection;>;>;"
    .end local v2    # "transportConnection":Lcom/android/server/backup/TransportManager$TransportConnection;
    .end local v3    # "validTransport":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportConnection;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/backup/TransportManager$TransportConnection;>;>;"
    :cond_1
    monitor-exit v5

    .line 133
    return-void
.end method

.method registerAllTransports()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, v0, v0}, Lcom/android/server/backup/TransportManager;->bindToAllInternal(Ljava/lang/String;[Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method selectTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 206
    .local v0, "prevTransport":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 207
    return-object v0

    .line 204
    .end local v0    # "prevTransport":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
