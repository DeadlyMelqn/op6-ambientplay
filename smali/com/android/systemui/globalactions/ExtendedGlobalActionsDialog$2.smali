.class Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;
.super Landroid/os/Handler;
.source "ExtendedGlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    .line 502
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 504
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 506
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get2(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get2(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;->dismiss()V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-set0(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedActionsDialog;

    goto :goto_0

    .line 512
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-get3(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$ExtendedAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 515
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog$2;->this$0:Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;

    invoke-static {v0}, Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;->-wrap0(Lcom/android/systemui/globalactions/ExtendedGlobalActionsDialog;)V

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
