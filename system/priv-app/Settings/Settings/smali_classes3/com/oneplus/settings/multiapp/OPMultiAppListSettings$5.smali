.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;
.super Lcom/oneplus/lib/util/loading/LoadingHelper;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 232
    invoke-direct {p0}, Lcom/oneplus/lib/util/loading/LoadingHelper;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 2
    .param p1, "progreeView"    # Ljava/lang/Object;

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 250
    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 241
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    const v2, 0x7f0f042f

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$5;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get9(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
