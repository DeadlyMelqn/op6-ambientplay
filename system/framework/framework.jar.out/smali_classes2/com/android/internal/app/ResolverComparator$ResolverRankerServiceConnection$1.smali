.class Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;
.super Landroid/service/resolver/IResolverRankerResult$Stub;
.source "ResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;->this$1:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    .line 524
    invoke-direct {p0}, Landroid/service/resolver/IResolverRankerResult$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public sendResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 530
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/resolver/ResolverTarget;>;"
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;->this$1:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v1, v1, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v1}, Lcom/android/internal/app/ResolverComparator;->-get2(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 531
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 532
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 533
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 534
    iget-object v1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;->this$1:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v1, v1, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v1}, Lcom/android/internal/app/ResolverComparator;->-get1(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 536
    return-void

    .line 530
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
