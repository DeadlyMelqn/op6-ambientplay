.class final Landroid/security/KeyChain$1;
.super Ljava/lang/Object;
.source "KeyChain.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field volatile mConnectedAtLeastOnce:Z

.field final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Landroid/security/KeyChain$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 639
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 641
    iget-boolean v1, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    if-nez v1, :cond_0

    .line 642
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/KeyChain$1;->mConnectedAtLeastOnce:Z

    .line 644
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyChain$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 650
    return-void
.end method
