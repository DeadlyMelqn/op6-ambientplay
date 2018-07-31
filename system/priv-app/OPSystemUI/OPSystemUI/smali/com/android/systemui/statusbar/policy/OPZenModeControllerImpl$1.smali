.class Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;
.super Landroid/os/Handler;
.source "OPZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 57
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 58
    .local v1, "threekey":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;I)V

    goto :goto_0

    .line 61
    .end local v1    # "threekey":I
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 62
    .local v0, "enable":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/OPZenModeControllerImpl;Z)V

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
