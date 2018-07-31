.class final Lcom/android/server/print/RemotePrintService$MyHandler;
.super Landroid/os/Handler;
.source "RemotePrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BINDER_DIED:I = 0xc

.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY:I = 0xb

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_ALL_PRINT_JOBS_HANDLED:I = 0x8

.field public static final MSG_ON_PRINT_JOB_QUEUED:I = 0xa

.field public static final MSG_ON_REQUEST_CANCEL_PRINT_JOB:I = 0x9

.field public static final MSG_REQUEST_CUSTOM_PRINTER_ICON:I = 0xd

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x7

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/print/RemotePrintService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 663
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 664
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 669
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-get4(Lcom/android/server/print/RemotePrintService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    const-string/jumbo v4, "RemotePrintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not handling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " as service for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v6}, Lcom/android/server/print/RemotePrintService;->-get2(Lcom/android/server/print/RemotePrintService;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 671
    const-string/jumbo v6, " is already destroyed"

    .line 670
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-void

    .line 674
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 734
    :goto_0
    return-void

    .line 676
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap2(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_0

    .line 680
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap3(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_0

    .line 684
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 685
    .local v3, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v3}, Lcom/android/server/print/RemotePrintService;->-wrap9(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto :goto_0

    .line 689
    .end local v3    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap11(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_0

    .line 693
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 694
    .local v2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v2}, Lcom/android/server/print/RemotePrintService;->-wrap13(Lcom/android/server/print/RemotePrintService;Ljava/util/List;)V

    goto :goto_0

    .line 698
    .end local v2    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    .line 699
    .local v1, "printerId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->-wrap10(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto :goto_0

    .line 703
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    .line 704
    .restart local v1    # "printerId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->-wrap12(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto :goto_0

    .line 708
    .end local v1    # "printerId":Landroid/print/PrinterId;
    :pswitch_7
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap5(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_0

    .line 712
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 713
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v0}, Lcom/android/server/print/RemotePrintService;->-wrap7(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .line 717
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 718
    .restart local v0    # "printJob":Landroid/print/PrintJobInfo;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v0}, Lcom/android/server/print/RemotePrintService;->-wrap6(Lcom/android/server/print/RemotePrintService;Landroid/print/PrintJobInfo;)V

    goto :goto_0

    .line 722
    .end local v0    # "printJob":Landroid/print/PrintJobInfo;
    :pswitch_a
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap4(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_0

    .line 726
    :pswitch_b
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4}, Lcom/android/server/print/RemotePrintService;->-wrap1(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_0

    .line 730
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrinterId;

    .line 731
    .restart local v1    # "printerId":Landroid/print/PrinterId;
    iget-object v4, p0, Lcom/android/server/print/RemotePrintService$MyHandler;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {v4, v1}, Lcom/android/server/print/RemotePrintService;->-wrap8(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    goto :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
