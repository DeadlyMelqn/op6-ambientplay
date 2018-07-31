.class final Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;
.super Landroid/os/Handler;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final MSG_PULSE_WHILE_DOZING:I = 0x2

.field private static final MSG_START_DOZING:I = 0x1

.field private static final MSG_STOP_DOZING:I = 0x3


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;


# direct methods
.method private constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    .param p2, "-this1"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;-><init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 499
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 510
    :goto_0
    return-void

    .line 501
    :pswitch_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v1, v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->-wrap1(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 504
    :pswitch_1
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/doze/DozeHost$PulseCallback;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->-wrap0(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    goto :goto_0

    .line 507
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->this$1:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->-wrap2(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
