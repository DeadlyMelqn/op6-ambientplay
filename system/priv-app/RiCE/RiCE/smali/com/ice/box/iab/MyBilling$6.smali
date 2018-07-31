.class Lcom/ice/box/iab/MyBilling$6;
.super Ljava/lang/Object;
.source "MyBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/MyBilling;->Premium5()V
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

    .line 226
    iput-object p1, p0, Lcom/ice/box/iab/MyBilling$6;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 229
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling$6;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/iab/MyBilling;->access$000(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling$6;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/iab/MyBilling;->access$000(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper;

    move-result-object v1

    iget-object v0, p0, Lcom/ice/box/iab/MyBilling$6;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/iab/MyBilling;->access$500(Lcom/ice/box/iab/MyBilling;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "icebox.donation5"

    const/16 v4, 0x277f

    iget-object v0, p0, Lcom/ice/box/iab/MyBilling$6;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/iab/MyBilling;->access$600(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v5

    const-string v6, "AFsdgvsGDBAW"

    invoke-virtual/range {v1 .. v6}, Lcom/ice/box/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling$6;->this$0:Lcom/ice/box/iab/MyBilling;

    iget-object p0, p0, Lcom/ice/box/iab/MyBilling$6;->this$0:Lcom/ice/box/iab/MyBilling;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->access$500(Lcom/ice/box/iab/MyBilling;)Landroid/app/Activity;

    move-result-object p0

    const v1, 0x7f10006d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ice/box/iab/MyBilling;->access$200(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
