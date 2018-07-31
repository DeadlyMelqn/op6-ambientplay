.class Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;
.super Landroid/os/Handler;
.source "OnePlusDuallteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusDuallteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnePlusDuallteManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusDuallteManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusDuallteManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    .line 147
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 148
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 151
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage(): msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap5(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap0(Lcom/android/server/am/OnePlusDuallteManager;Z)Z

    goto :goto_0

    .line 161
    :pswitch_2
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusDuallteManager;->-get0(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "Duallte"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusDuallteManager;->-wrap6(Lcom/android/server/am/OnePlusDuallteManager;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
