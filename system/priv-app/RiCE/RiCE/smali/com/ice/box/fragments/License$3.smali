.class Lcom/ice/box/fragments/License$3;
.super Ljava/lang/Object;
.source "License.java"

# interfaces
.implements Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/fragments/License;->fetchPrices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/fragments/License;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/License;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/ice/box/fragments/License$3;->this$0:Lcom/ice/box/fragments/License;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Inventory;)V
    .locals 6

    .line 352
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/IabResult;->isFailure()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "ICEDEBUG"

    const-string p1, "mQueryFinishedListener fuckedup"

    .line 353
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 358
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/fragments/License$3;->this$0:Lcom/ice/box/fragments/License;

    const/4 p0, 0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string p0, "icebox.monthly"

    .line 359
    invoke-virtual {p2, p0}, Lcom/ice/box/iab/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/ice/box/iab/SkuDetails;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    const-string p0, "icebox.donation2"

    .line 360
    invoke-virtual {p2, p0}, Lcom/ice/box/iab/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/ice/box/iab/SkuDetails;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v3

    const-string p0, "icebox.donation5"

    .line 361
    invoke-virtual {p2, p0}, Lcom/ice/box/iab/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/ice/box/iab/SkuDetails;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v4

    const-string p0, "icebox.donation10"

    .line 362
    invoke-virtual {p2, p0}, Lcom/ice/box/iab/Inventory;->getSkuDetails(Ljava/lang/String;)Lcom/ice/box/iab/SkuDetails;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-static/range {v0 .. v5}, Lcom/ice/box/fragments/License;->access$500(Lcom/ice/box/fragments/License;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
