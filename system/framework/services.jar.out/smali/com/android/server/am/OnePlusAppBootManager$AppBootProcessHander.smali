.class Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;
.super Landroid/os/Handler;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBootProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusAppBootManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2394
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    .line 2395
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2396
    return-void
.end method

.method private handlePkgMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2437
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2438
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 2457
    :cond_1
    :goto_0
    return-void

    .line 2440
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap2(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2441
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # reinstall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2445
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap9(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 2446
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2450
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap2(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2451
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # install "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2438
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 2399
    sget-boolean v3, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage # msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2401
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2431
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->handlePkgMessage(Landroid/os/Message;)V

    .line 2434
    :cond_1
    :goto_0
    return-void

    .line 2403
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->-get3()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->writeXml_appboot(Ljava/util/HashMap;)I

    goto :goto_0

    .line 2407
    :sswitch_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap3(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I

    move-result v1

    .line 2408
    .local v1, "ret":I
    sget-boolean v2, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 2409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceStopPkg # ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2413
    .end local v1    # "ret":I
    :sswitch_2
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->-get2(Lcom/android/server/am/OnePlusAppBootManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2414
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap10(Lcom/android/server/am/OnePlusAppBootManager;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 2418
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :sswitch_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap14(Lcom/android/server/am/OnePlusAppBootManager;Z)V

    goto :goto_0

    .line 2422
    :sswitch_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap4(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 2423
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const-wide/32 v4, 0x5265c00

    invoke-static {v2, v4, v5}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap12(Lcom/android/server/am/OnePlusAppBootManager;J)V

    goto :goto_0

    .line 2427
    :sswitch_5
    iget-object v2, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v2}, Lcom/android/server/am/OnePlusAppBootManager;->-wrap4(Lcom/android/server/am/OnePlusAppBootManager;)V

    goto :goto_0

    .line 2401
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x1f -> :sswitch_3
        0x20 -> :sswitch_4
        0x21 -> :sswitch_5
    .end sparse-switch
.end method
