.class Landroid/net/lowpan/LowpanManager$2;
.super Landroid/net/lowpan/ILowpanManagerListener$Stub;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanManager;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanManager$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanManager;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    .line 232
    invoke-direct {p0}, Landroid/net/lowpan/ILowpanManagerListener$Stub;-><init>()V

    .line 236
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->val$handler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    .line 1
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-static {v0}, Landroid/net/lowpan/LowpanManager;->-get1(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-static {v1}, Landroid/net/lowpan/LowpanManager;->-get1(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 241
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-android_net_lowpan_LowpanManager$2_8833(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 2
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;
    .param p2, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;

    .prologue
    .line 249
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    .line 251
    .local v0, "iface":Landroid/net/lowpan/LowpanInterface;
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p2, v0}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceAdded(Landroid/net/lowpan/LowpanInterface;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-android_net_lowpan_LowpanManager$2_9391(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanManager$Callback;)V
    .locals 2
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;
    .param p2, "cb"    # Landroid/net/lowpan/LowpanManager$Callback;

    .prologue
    .line 263
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->this$0:Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v1, p1}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v0

    .line 265
    .local v0, "iface":Landroid/net/lowpan/LowpanInterface;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p2, v0}, Landroid/net/lowpan/LowpanManager$Callback;->onInterfaceRemoved(Landroid/net/lowpan/LowpanInterface;)V

    :cond_0
    return-void
.end method

.method public onInterfaceAdded(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 3
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;

    .prologue
    .line 248
    new-instance v0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, p1, v1}, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method public onInterfaceRemoved(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 3
    .param p1, "ifaceService"    # Landroid/net/lowpan/ILowpanInterface;

    .prologue
    .line 262
    new-instance v0, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;

    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->val$cb:Landroid/net/lowpan/LowpanManager$Callback;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, p1, v1}, Landroid/net/lowpan/-$Lambda$fU5N8X3bFktKBQFPK6v4czv7e_Y;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager$2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void
.end method
