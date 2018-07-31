.class Lcom/android/server/NetworkManagementService$LocalService;
.super Lcom/android/server/NetworkManagementInternal;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 2773
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Lcom/android/server/NetworkManagementInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public forceCloseUidSocketForDeepSleep(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 2782
    const/4 v2, 0x1

    new-array v1, v2, [Landroid/net/UidRange;

    .line 2783
    new-instance v2, Landroid/net/UidRange;

    invoke-direct {v2, p1, p1}, Landroid/net/UidRange;-><init>(II)V

    aput-object v2, v1, v3

    .line 2786
    .local v1, "ranges":[Landroid/net/UidRange;
    :try_start_0
    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceCloseUidSocketForDeepSleep, Uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    iget-object v2, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->-get3(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-interface {v2, v1, v3}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRange;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2791
    :goto_0
    return-void

    .line 2788
    :catch_0
    move-exception v0

    .line 2789
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error closing sockets on DeepSleep : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isNetworkRestrictedForUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 2776
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$LocalService;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->-wrap1(Lcom/android/server/NetworkManagementService;I)Z

    move-result v0

    return v0
.end method
