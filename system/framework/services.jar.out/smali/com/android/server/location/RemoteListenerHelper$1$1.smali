.class Lcom/android/server/location/RemoteListenerHelper$1$1;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/RemoteListenerHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/RemoteListenerHelper$1;


# direct methods
.method constructor <init>(Lcom/android/server/location/RemoteListenerHelper$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/location/RemoteListenerHelper$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    iget-object v1, v1, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v1}, Lcom/android/server/location/RemoteListenerHelper;->-get2(Lcom/android/server/location/RemoteListenerHelper;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    iget-object v1, v1, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v0

    .line 215
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper$1$1;->this$1:Lcom/android/server/location/RemoteListenerHelper$1;

    iget-object v1, v1, Lcom/android/server/location/RemoteListenerHelper$1;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-static {v1, v0}, Lcom/android/server/location/RemoteListenerHelper;->-wrap0(Lcom/android/server/location/RemoteListenerHelper;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 217
    return-void

    .line 213
    .end local v0    # "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
