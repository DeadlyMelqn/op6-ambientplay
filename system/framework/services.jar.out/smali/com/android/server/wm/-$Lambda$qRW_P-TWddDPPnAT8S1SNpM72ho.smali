.class final synthetic Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManagerPolicy;

    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_122929(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$-com_android_server_wm_RootWindowContainer_21687(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->$id:B

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$qRW_P-TWddDPPnAT8S1SNpM72ho;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
