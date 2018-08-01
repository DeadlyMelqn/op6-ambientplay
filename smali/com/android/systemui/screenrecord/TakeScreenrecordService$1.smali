.class Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;
.super Landroid/os/Handler;
.source "TakeScreenrecordService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenrecord/TakeScreenrecordService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenrecord/TakeScreenrecordService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenrecord/TakeScreenrecordService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;->this$0:Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 57
    .local v0, "callback":Landroid/os/Messenger;
    new-instance v1, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1$1;-><init>(Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;Landroid/os/Messenger;)V

    .line 72
    .local v1, "finisher":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;->this$0:Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;->post(Ljava/lang/Runnable;)Z

    .line 74
    return-void

    .line 77
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;->this$0:Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->-wrap0(Lcom/android/systemui/screenrecord/TakeScreenrecordService;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;->this$0:Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->-wrap0(Lcom/android/systemui/screenrecord/TakeScreenrecordService;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;->this$0:Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    const/4 v3, 0x2

    invoke-static {v2, v1, v3}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->-wrap0(Lcom/android/systemui/screenrecord/TakeScreenrecordService;Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
