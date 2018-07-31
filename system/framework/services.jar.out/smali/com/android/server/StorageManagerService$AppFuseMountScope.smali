.class Lcom/android/server/StorageManagerService$AppFuseMountScope;
.super Lcom/android/server/storage/AppFuseBridge$MountScope;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppFuseMountScope"
.end annotation


# instance fields
.field opened:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;III)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "mountId"    # I

    .prologue
    .line 3124
    iput-object p1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    .line 3125
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/storage/AppFuseBridge$MountScope;-><init>(III)V

    .line 3122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    .line 3126
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3142
    iget-boolean v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    if-eqz v0, :cond_0

    .line 3143
    iget-object v0, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->-get1(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v0

    const-string/jumbo v1, "appfuse"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "unmount"

    aput-object v3, v2, v5

    iget v3, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mountId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    .line 3144
    iput-boolean v5, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    .line 3146
    :cond_0
    return-void
.end method

.method public open()Landroid/os/ParcelFileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3130
    iget-object v1, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->-get1(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v1

    .line 3131
    const-string/jumbo v2, "appfuse"

    .line 3130
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 3131
    const-string/jumbo v4, "mount"

    aput-object v4, v3, v6

    iget v4, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->mountId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 3130
    invoke-virtual {v1, v2, v3}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v0

    .line 3132
    .local v0, "event":Lcom/android/server/NativeDaemonEvent;
    iput-boolean v7, p0, Lcom/android/server/StorageManagerService$AppFuseMountScope;->opened:Z

    .line 3133
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3134
    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    .line 3135
    :cond_0
    new-instance v1, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo v2, "Cannot obtain device FD"

    invoke-direct {v1, v2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3137
    :cond_1
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Lcom/android/server/NativeDaemonEvent;->getFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v1
.end method
