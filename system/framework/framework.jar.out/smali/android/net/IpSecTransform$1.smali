.class Landroid/net/IpSecTransform$1;
.super Landroid/net/ConnectivityManager$PacketKeepaliveCallback;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/IpSecTransform;


# direct methods
.method constructor <init>(Landroid/net/IpSecTransform;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/IpSecTransform;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    .line 215
    invoke-direct {p0}, Landroid/net/ConnectivityManager$PacketKeepaliveCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 235
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 236
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0, p1}, Landroid/net/IpSecTransform;->-set0(Landroid/net/IpSecTransform;I)I

    .line 237
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 239
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStarted()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 220
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/net/IpSecTransform;->-set0(Landroid/net/IpSecTransform;I)I

    .line 221
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 223
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onStopped()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/net/IpSecTransform;->-set0(Landroid/net/IpSecTransform;I)I

    .line 229
    iget-object v0, p0, Landroid/net/IpSecTransform$1;->this$0:Landroid/net/IpSecTransform;

    invoke-static {v0}, Landroid/net/IpSecTransform;->-get0(Landroid/net/IpSecTransform;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 231
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
