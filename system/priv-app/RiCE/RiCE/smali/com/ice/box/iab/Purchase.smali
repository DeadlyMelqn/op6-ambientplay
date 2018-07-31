.class public Lcom/ice/box/iab/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# instance fields
.field mDeveloperPayload:Ljava/lang/String;

.field mIsAutoRenewing:Z

.field mItemType:Ljava/lang/String;

.field mOrderId:Ljava/lang/String;

.field mOriginalJson:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPurchaseState:I

.field mPurchaseTime:J

.field mSignature:Ljava/lang/String;

.field mSku:Ljava/lang/String;

.field mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/ice/box/iab/Purchase;->mItemType:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/ice/box/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    .line 40
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/ice/box/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "orderId"

    .line 41
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ice/box/iab/Purchase;->mOrderId:Ljava/lang/String;

    const-string p2, "packageName"

    .line 42
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ice/box/iab/Purchase;->mPackageName:Ljava/lang/String;

    const-string p2, "productId"

    .line 43
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ice/box/iab/Purchase;->mSku:Ljava/lang/String;

    const-string p2, "purchaseTime"

    .line 44
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ice/box/iab/Purchase;->mPurchaseTime:J

    const-string p2, "purchaseState"

    .line 45
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/ice/box/iab/Purchase;->mPurchaseState:I

    const-string p2, "developerPayload"

    .line 46
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ice/box/iab/Purchase;->mDeveloperPayload:Ljava/lang/String;

    const-string p2, "token"

    const-string v0, "purchaseToken"

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ice/box/iab/Purchase;->mToken:Ljava/lang/String;

    const-string p2, "autoRenewing"

    .line 48
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/iab/Purchase;->mIsAutoRenewing:Z

    .line 49
    iput-object p3, p0, Lcom/ice/box/iab/Purchase;->mSignature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeveloperPayload()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mDeveloperPayload:Ljava/lang/String;

    return-object p0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mItemType:Ljava/lang/String;

    return-object p0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mOrderId:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalJson()Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPurchaseState()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/ice/box/iab/Purchase;->mPurchaseState:I

    return p0
.end method

.method public getPurchaseTime()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/ice/box/iab/Purchase;->mPurchaseTime:J

    return-wide v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mSignature:Ljava/lang/String;

    return-object p0
.end method

.method public getSku()Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mSku:Ljava/lang/String;

    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mToken:Ljava/lang/String;

    return-object p0
.end method

.method public isAutoRenewing()Z
    .locals 0

    .line 93
    iget-boolean p0, p0, Lcom/ice/box/iab/Purchase;->mIsAutoRenewing:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo(type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ice/box/iab/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ice/box/iab/Purchase;->mOriginalJson:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
