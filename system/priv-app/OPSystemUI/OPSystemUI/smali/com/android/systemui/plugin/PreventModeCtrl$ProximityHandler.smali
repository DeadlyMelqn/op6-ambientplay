.class Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;
.super Landroid/os/Handler;
.source "PreventModeCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/PreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProximityHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/PreventModeCtrl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugin/PreventModeCtrl;Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/PreventModeCtrl;
    .param p2, "-this1"    # Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;-><init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->-get0(Lcom/android/systemui/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->-wrap1(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->-get0(Lcom/android/systemui/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$ProximityHandler;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->-wrap0(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 194
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
