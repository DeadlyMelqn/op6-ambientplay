.class Lcom/ice/box/iab/MyBilling$3;
.super Ljava/lang/Object;
.source "MyBilling.java"

# interfaces
.implements Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/MyBilling;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/iab/MyBilling;


# direct methods
.method constructor <init>(Lcom/ice/box/iab/MyBilling;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/ice/box/iab/MyBilling$3;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/ice/box/iab/IabResult;)V
    .locals 0

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/IabResult;->isSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$3;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->access$000(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 173
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/iab/MyBilling$3;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->access$000(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$3;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->access$400(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/iab/IabHelper;->queryInventoryAsync(Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
