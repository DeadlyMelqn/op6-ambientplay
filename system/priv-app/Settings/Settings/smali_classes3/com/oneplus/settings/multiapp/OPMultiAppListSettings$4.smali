.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;
.super Landroid/os/Handler;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 162
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 163
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v4}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v4}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get8(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v4

    if-nez v4, :cond_1

    .line 164
    :cond_0
    return-void

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v4}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get2(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 167
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ProgressDialog;

    .line 168
    .local v3, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 169
    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 170
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v4}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f042f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v0, Lcom/oneplus/lib/util/loading/DialogLoadingHelper;

    invoke-direct {v0, v3}, Lcom/oneplus/lib/util/loading/DialogLoadingHelper;-><init>(Landroid/app/Dialog;)V

    .line 172
    .local v0, "helper":Lcom/oneplus/lib/util/loading/DialogLoadingHelper;
    invoke-virtual {v0}, Lcom/oneplus/lib/util/loading/DialogLoadingHelper;->beginShowProgress()V

    .line 174
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 175
    .local v2, "position":I
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v4}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 176
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-wrap2(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V

    .line 177
    new-instance v4, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;I)V

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/util/loading/DialogLoadingHelper;->finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    .line 190
    return-void
.end method
