.class Lcom/android/server/IpSecService$1;
.super Ljava/lang/Thread;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/IpSecService;->connectNativeNetdService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/IpSecService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/IpSecService$1;->this$0:Lcom/android/server/IpSecService;

    .line 409
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/IpSecService$1;->this$0:Lcom/android/server/IpSecService;

    monitor-enter v0

    .line 413
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 415
    return-void

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
