.class Lcom/android/server/PermissionDialog$1;
.super Landroid/os/Handler;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/PermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PermissionDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    .line 94
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "mess"    # Landroid/os/Message;

    .prologue
    .line 97
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 105
    :pswitch_0
    const/4 v0, 0x1

    .line 107
    .local v0, "runSet":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v1}, Lcom/android/server/PermissionDialog;->-get3(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v2}, Lcom/android/server/PermissionDialog;->-get2(Lcom/android/server/PermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v3}, Lcom/android/server/PermissionDialog;->-get0(Lcom/android/server/PermissionDialog;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-static {v4}, Lcom/android/server/PermissionDialog;->-get1(Lcom/android/server/PermissionDialog;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;I)V

    .line 108
    iget-object v1, p0, Lcom/android/server/PermissionDialog$1;->this$0:Lcom/android/server/PermissionDialog;

    invoke-virtual {v1}, Lcom/android/server/PermissionDialog;->dismiss()V

    .line 109
    return-void

    .line 99
    .end local v0    # "runSet":I
    :pswitch_1
    const/4 v0, 0x0

    .line 100
    .restart local v0    # "runSet":I
    goto :goto_0

    .line 102
    .end local v0    # "runSet":I
    :pswitch_2
    const/4 v0, 0x1

    .line 103
    .restart local v0    # "runSet":I
    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
