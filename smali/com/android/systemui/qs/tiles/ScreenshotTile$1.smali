.class Lcom/android/systemui/qs/tiles/ScreenshotTile$1;
.super Ljava/lang/Object;
.source "ScreenshotTile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenshotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenshotTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/ScreenshotTile;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get3(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get0(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-get2(Lcom/android/systemui/qs/tiles/ScreenshotTile;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenshotTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenshotTile;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/ScreenshotTile;->-set0(Lcom/android/systemui/qs/tiles/ScreenshotTile;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 134
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
