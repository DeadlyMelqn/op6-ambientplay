.class Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;
.super Landroid/os/Handler;
.source "ScreenshotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenshotTile$2;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/qs/tiles/ScreenshotTile$2;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->val$myConn:Landroid/content/ServiceConnection;

    .line 156
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get3(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get0(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-set0(Lcom/android/systemui/qs/tiles/ScreenshotTile;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get1(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$2$1;->this$1:Lcom/android/systemui/qs/tiles/ScreenshotTile$2;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/ScreenshotTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    iget-object v2, v2, Lcom/android/systemui/qs/tiles/ScreenshotTile;->mScreenshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 166
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
