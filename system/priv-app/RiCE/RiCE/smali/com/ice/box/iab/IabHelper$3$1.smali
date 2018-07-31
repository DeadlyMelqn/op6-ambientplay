.class Lcom/ice/box/iab/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ice/box/iab/IabHelper$3;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/ice/box/iab/IabHelper$3;Ljava/util/List;)V
    .locals 0

    .line 961
    iput-object p1, p0, Lcom/ice/box/iab/IabHelper$3$1;->this$1:Lcom/ice/box/iab/IabHelper$3;

    iput-object p2, p0, Lcom/ice/box/iab/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 963
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper$3$1;->this$1:Lcom/ice/box/iab/IabHelper$3;

    iget-object v0, v0, Lcom/ice/box/iab/IabHelper$3;->val$singleListener:Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;

    iget-object v1, p0, Lcom/ice/box/iab/IabHelper$3$1;->this$1:Lcom/ice/box/iab/IabHelper$3;

    iget-object v1, v1, Lcom/ice/box/iab/IabHelper$3;->val$purchases:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ice/box/iab/Purchase;

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ice/box/iab/IabResult;

    invoke-interface {v0, v1, p0}, Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/ice/box/iab/Purchase;Lcom/ice/box/iab/IabResult;)V

    return-void
.end method
