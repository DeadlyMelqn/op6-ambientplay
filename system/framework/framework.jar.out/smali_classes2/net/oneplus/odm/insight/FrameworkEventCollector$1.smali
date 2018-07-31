.class Lnet/oneplus/odm/insight/FrameworkEventCollector$1;
.super Landroid/os/Handler;
.source "FrameworkEventCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/odm/insight/FrameworkEventCollector;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;


# direct methods
.method constructor <init>(Lnet/oneplus/odm/insight/FrameworkEventCollector;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 189
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 193
    const/4 v1, 0x0

    .line 194
    .local v1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 195
    .local v2, "event":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    .line 196
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 197
    const-string/jumbo v3, "hashmap"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .end local v1    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 199
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v3, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v3}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->-get1(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v3

    if-nez v3, :cond_1

    .line 202
    iget-object v3, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    new-instance v4, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v5, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v5}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->-get0(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->-set0(Lnet/oneplus/odm/insight/FrameworkEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 204
    :cond_1
    iget-object v3, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v3}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->-get1(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
