.class Lcom/android/server/policy/LegacyGlobalActions$5;
.super Landroid/os/Handler;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/LegacyGlobalActions;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    .line 1180
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

    .line 1183
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1185
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get6(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1187
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set1(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/LegacyGlobalActions$GlobalActionsDialog;

    goto :goto_0

    .line 1191
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap3(Lcom/android/server/policy/LegacyGlobalActions;)V

    .line 1192
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get0(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1195
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$5;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap1(Lcom/android/server/policy/LegacyGlobalActions;)V

    goto :goto_0

    .line 1183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
