.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;
.super Landroid/os/Handler;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
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
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 124
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 127
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x58

    if-ne v3, v4, :cond_0

    .line 128
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 129
    .local v2, "position":I
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get8(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getSelected(I)Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    .line 130
    .local v0, "isSelected":Z
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    .line 131
    .local v1, "model":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get8(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setSelected(IZ)V

    .line 132
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get2(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v4

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x45

    invoke-virtual {v3, v6, v4, v5, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 134
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v4, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getEnabledString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 142
    .end local v0    # "isSelected":Z
    .end local v1    # "model":Lcom/oneplus/settings/better/OPAppModel;
    .end local v2    # "position":I
    :cond_0
    return-void
.end method
