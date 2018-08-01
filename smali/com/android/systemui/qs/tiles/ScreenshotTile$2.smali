.class Lcom/android/systemui/qs/tiles/ScreenshotTile$2;
.super Ljava/lang/Object;
.source "ScreenshotTile.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenshotTile;->takeScreenshot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

.field final synthetic val$screenshotType:I


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenshotTile;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ScreenshotTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    iput p2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->val$screenshotType:I

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 149
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get3(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 150
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eq v5, p0, :cond_0

    monitor-exit v6

    .line 151
    return-void

    .line 153
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 154
    .local v2, "messenger":Landroid/os/Messenger;
    iget v5, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->val$screenshotType:I

    const/4 v7, 0x0

    invoke-static {v7, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 155
    .local v3, "msg":Landroid/os/Message;
    move-object v4, p0

    .line 156
    .local v4, "myConn":Landroid/content/ServiceConnection;
    new-instance v1, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v5}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get1(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5, p0}, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;-><init>(Lcom/android/systemui/qs/tiles/ScreenshotTile$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 168
    .local v1, "h":Landroid/os/Handler;
    new-instance v5, Landroid/os/Messenger;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 169
    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg2:I

    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    :try_start_2
    invoke-virtual {v2, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v6

    .line 178
    return-void

    .line 174
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "h":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "myConn":Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 180
    return-void
.end method
