.class Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;
.super Landroid/os/Handler;
.source "OPFacelockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FacelockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 227
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v3, -0x10000

    .line 232
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get3(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get3(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 235
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :pswitch_0
    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "handleMessage: done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_2
    return-void

    .line 237
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap4(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap12(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto :goto_0

    .line 244
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap8(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto :goto_0

    .line 249
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 250
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap0(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto :goto_0

    .line 253
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap6(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x6

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap12(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto :goto_0

    .line 260
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap2(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto :goto_0

    .line 263
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 264
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap3(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto :goto_0

    .line 268
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap1(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto :goto_0

    .line 272
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 274
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap6(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/16 v1, 0x8

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap12(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto/16 :goto_0

    .line 279
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 281
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap6(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/16 v1, 0x9

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap12(Lcom/android/systemui/statusbar/phone/OPFacelockController;II)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap5(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto/16 :goto_0

    .line 286
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$FacelockHandler;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap10(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    goto/16 :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
