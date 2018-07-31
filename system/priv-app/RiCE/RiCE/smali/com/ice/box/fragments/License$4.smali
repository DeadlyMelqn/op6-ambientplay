.class Lcom/ice/box/fragments/License$4;
.super Ljava/lang/Object;
.source "License.java"

# interfaces
.implements Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;


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

.field final synthetic val$mQueryFinishedListener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;


# direct methods
.method constructor <init>(Lcom/ice/box/fragments/License;Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/ice/box/fragments/License$4;->this$0:Lcom/ice/box/fragments/License;

    iput-object p2, p0, Lcom/ice/box/fragments/License$4;->val$mQueryFinishedListener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/ice/box/iab/IabResult;)V
    .locals 3

    .line 375
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ICEDEBUG"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem setting up In-app Billing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "icebox.donation2"

    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "icebox.donation5"

    .line 382
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "icebox.donation10"

    .line 383
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "icebox.monthly"

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    :try_start_0
    iget-object v1, p0, Lcom/ice/box/fragments/License$4;->this$0:Lcom/ice/box/fragments/License;

    iget-object v1, v1, Lcom/ice/box/fragments/License;->mHelper:Lcom/ice/box/iab/IabHelper;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/ice/box/fragments/License$4;->val$mQueryFinishedListener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2, p1, v0, p0}, Lcom/ice/box/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ICEDEBUG"

    const-string p1, "queryInventoryAsync fucked up"

    .line 392
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
