.class Lcom/oneplus/aod/NotificationManager$2;
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
    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager$2;->this$0:Lcom/oneplus/aod/NotificationManager;

    .line 455
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$2;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-get3(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 461
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$2;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-get2(Lcom/oneplus/aod/NotificationManager;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 463
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$2;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->-wrap1(Lcom/oneplus/aod/NotificationManager;)V

    .line 464
    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$2;->this$0:Lcom/oneplus/aod/NotificationManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationManager;->updateNotifications(I)V

    .line 465
    return-void
.end method
