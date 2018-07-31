.class Lcom/oneplus/aod/NotificationManager$3;
.super Landroid/database/ContentObserver;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/NotificationManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/NotificationManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    .line 468
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    .line 472
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->-get0(Lcom/oneplus/aod/NotificationManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    .line 471
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 473
    .local v0, "provisioned":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->-get1(Lcom/oneplus/aod/NotificationManager;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1, v0}, Lcom/oneplus/aod/NotificationManager;->-set1(Lcom/oneplus/aod/NotificationManager;Z)Z

    .line 475
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->-get2(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 481
    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$3;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->-wrap1(Lcom/oneplus/aod/NotificationManager;)V

    .line 482
    return-void

    .line 471
    .end local v0    # "provisioned":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "provisioned":Z
    goto :goto_0
.end method
