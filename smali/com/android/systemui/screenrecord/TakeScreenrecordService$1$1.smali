.class Lcom/android/systemui/screenrecord/TakeScreenrecordService$1$1;
.super Ljava/lang/Object;
.source "TakeScreenrecordService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;

.field final synthetic val$callback:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1$1;->this$1:Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;

    iput-object p2, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1$1;->val$callback:Landroid/os/Messenger;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 62
    .local v1, "reply":Landroid/os/Message;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1$1;->val$callback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 64
    iget-object v2, p0, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1$1;->this$1:Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;

    iget-object v2, v2, Lcom/android/systemui/screenrecord/TakeScreenrecordService$1;->this$0:Lcom/android/systemui/screenrecord/TakeScreenrecordService;

    invoke-virtual {v2}, Lcom/android/systemui/screenrecord/TakeScreenrecordService;->stopSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
