.class Lcom/ice/box/iab/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/ice/box/iab/IabHelper;Ljava/util/List;Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 0

    .line 946
    iput-object p1, p0, Lcom/ice/box/iab/IabHelper$3;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-object p2, p0, Lcom/ice/box/iab/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/ice/box/iab/IabHelper$3;->val$singleListener:Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/ice/box/iab/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/ice/box/iab/IabHelper$3;->val$multiListener:Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 948
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    .line 949
    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface/range {v1 .. v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface/range {v1 .. v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v1 .. v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ice/box/iab/Purchase;

    .line 951
    :try_start_0
    iget-object v3, p0, Lcom/ice/box/iab/IabHelper$3;->this$0:Lcom/ice/box/iab/IabHelper;

    invoke-virtual {v3, v2}, Lcom/ice/box/iab/IabHelper;->consume(Lcom/ice/box/iab/Purchase;)V

    .line 952
    new-instance v3, Lcom/ice/box/iab/IabResult;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct/range {v5 .. v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successful consume of sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v5 .. v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 952
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/ice/box/iab/IabException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 955
    invoke-virtual/range {v2 .. v2}, Lcom/ice/box/iab/IabException;->getResult()Lcom/ice/box/iab/IabResult;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 959
    :cond_0
    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3;->this$0:Lcom/ice/box/iab/IabHelper;

    invoke-virtual/range {v1 .. v1}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    .line 960
    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-boolean v1, v1, Lcom/ice/box/iab/IabHelper;->mDisposed:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3;->val$singleListener:Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;

    if-eqz v1, :cond_1

    .line 961
    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/ice/box/iab/IabHelper$3$1;

    invoke-direct {v2, p0, v0}, Lcom/ice/box/iab/IabHelper$3$1;-><init>(Lcom/ice/box/iab/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 967
    :cond_1
    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-boolean v1, v1, Lcom/ice/box/iab/IabHelper;->mDisposed:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3;->val$multiListener:Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v1, :cond_2

    .line 968
    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/ice/box/iab/IabHelper$3$2;

    invoke-direct {v2, p0, v0}, Lcom/ice/box/iab/IabHelper$3$2;-><init>(Lcom/ice/box/iab/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
