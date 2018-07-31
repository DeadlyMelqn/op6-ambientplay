.class Lcom/android/server/vr/Vr2dDisplay$2;
.super Ljava/lang/Object;
.source "Vr2dDisplay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/Vr2dDisplay;->stopVirtualDisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/Vr2dDisplay;


# direct methods
.method constructor <init>(Lcom/android/server/vr/Vr2dDisplay;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/Vr2dDisplay;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->-wrap0(Lcom/android/server/vr/Vr2dDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const-string/jumbo v0, "Vr2dDisplay"

    const-string/jumbo v1, "Virtual Display destruction stopped: VrMode is back on."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 337
    :cond_0
    const-string/jumbo v0, "Vr2dDisplay"

    const-string/jumbo v1, "Stopping Virtual Display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->-get1(Lcom/android/server/vr/Vr2dDisplay;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/vr/Vr2dDisplay;->-wrap3(Lcom/android/server/vr/Vr2dDisplay;I)V

    .line 340
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/vr/Vr2dDisplay;->-wrap1(Lcom/android/server/vr/Vr2dDisplay;Landroid/view/Surface;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->-get2(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->-get2(Lcom/android/server/vr/Vr2dDisplay;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 343
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/vr/Vr2dDisplay;->-set1(Lcom/android/server/vr/Vr2dDisplay;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/server/vr/Vr2dDisplay$2;->this$0:Lcom/android/server/vr/Vr2dDisplay;

    invoke-static {v0}, Lcom/android/server/vr/Vr2dDisplay;->-wrap2(Lcom/android/server/vr/Vr2dDisplay;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
