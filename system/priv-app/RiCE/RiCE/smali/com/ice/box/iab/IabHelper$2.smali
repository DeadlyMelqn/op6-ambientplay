.class Lcom/ice/box/iab/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreItemSkus:Ljava/util/List;

.field final synthetic val$moreSubsSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/ice/box/iab/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/ice/box/iab/IabHelper$2;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean p2, p0, Lcom/ice/box/iab/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/ice/box/iab/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/ice/box/iab/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    iput-object p5, p0, Lcom/ice/box/iab/IabHelper$2;->val$listener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

    iput-object p6, p0, Lcom/ice/box/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 657
    new-instance v0, Lcom/ice/box/iab/IabResult;

    const-string v1, "Inventory refresh successful."

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 660
    :try_start_0
    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$2;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-boolean v2, p0, Lcom/ice/box/iab/IabHelper$2;->val$querySkuDetails:Z

    iget-object v3, p0, Lcom/ice/box/iab/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iget-object v4, p0, Lcom/ice/box/iab/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ice/box/iab/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/ice/box/iab/Inventory;

    move-result-object v1
    :try_end_0
    .catch Lcom/ice/box/iab/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 662
    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/iab/IabException;->getResult()Lcom/ice/box/iab/IabResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 665
    :goto_0
    iget-object v2, p0, Lcom/ice/box/iab/IabHelper$2;->this$0:Lcom/ice/box/iab/IabHelper;

    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    .line 669
    iget-object v2, p0, Lcom/ice/box/iab/IabHelper$2;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-boolean v2, v2, Lcom/ice/box/iab/IabHelper;->mDisposed:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ice/box/iab/IabHelper$2;->val$listener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

    if-eqz v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/ice/box/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/ice/box/iab/IabHelper$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/ice/box/iab/IabHelper$2$1;-><init>(Lcom/ice/box/iab/IabHelper$2;Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Inventory;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
