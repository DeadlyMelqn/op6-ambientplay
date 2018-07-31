.class final synthetic Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->lambda$-com_android_server_wm_AppTransition_90073(Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManagerPolicy$ScreenOffListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->lambda$-com_android_server_wm_TaskSnapshotController_16113(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowManagerService$4;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/os/PowerSaveState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$4;->lambda$-com_android_server_wm_WindowManagerService$4_56867(Landroid/os/PowerSaveState;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lambda$-com_android_server_wm_WindowManagerService_148811(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IAssistScreenshotReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lambda$-com_android_server_wm_WindowManagerService_182347(Lcom/android/internal/app/IAssistScreenshotReceiver;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$id:B

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$4()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
