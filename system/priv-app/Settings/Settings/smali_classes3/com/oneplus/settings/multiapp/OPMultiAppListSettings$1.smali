.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;
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
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 104
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 109
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get8(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get7(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 112
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get7(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v2

    .line 113
    iget v3, p1, Landroid/os/Message;->what:I

    .line 112
    invoke-virtual {v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get8(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setData(Ljava/util/List;)V

    .line 115
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    const v2, 0x7f0a01eb

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "emptyView":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get1(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 121
    .end local v0    # "emptyView":Landroid/view/View;
    :cond_0
    return-void
.end method
