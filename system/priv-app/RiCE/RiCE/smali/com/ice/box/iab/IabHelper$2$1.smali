.class Lcom/ice/box/iab/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ice/box/iab/IabHelper$2;

.field final synthetic val$inv_f:Lcom/ice/box/iab/Inventory;

.field final synthetic val$result_f:Lcom/ice/box/iab/IabResult;


# direct methods
.method constructor <init>(Lcom/ice/box/iab/IabHelper$2;Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Inventory;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/ice/box/iab/IabHelper$2$1;->this$1:Lcom/ice/box/iab/IabHelper$2;

    iput-object p2, p0, Lcom/ice/box/iab/IabHelper$2$1;->val$result_f:Lcom/ice/box/iab/IabResult;

    iput-object p3, p0, Lcom/ice/box/iab/IabHelper$2$1;->val$inv_f:Lcom/ice/box/iab/Inventory;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper$2$1;->this$1:Lcom/ice/box/iab/IabHelper$2;

    iget-object v0, v0, Lcom/ice/box/iab/IabHelper$2;->val$listener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$2$1;->val$result_f:Lcom/ice/box/iab/IabResult;

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper$2$1;->val$inv_f:Lcom/ice/box/iab/Inventory;

    invoke-interface {v0, v1, p0}, Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Inventory;)V

    return-void
.end method
