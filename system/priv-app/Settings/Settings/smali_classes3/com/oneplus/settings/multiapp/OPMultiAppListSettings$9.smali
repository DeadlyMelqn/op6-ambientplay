.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->initFailed()V
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
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get11(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 436
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 437
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0431

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f047d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
