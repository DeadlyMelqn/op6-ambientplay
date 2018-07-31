.class public Lcom/ice/box/iab/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;,
        Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;,
        Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;,
        Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE:I = -0x3f3

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field private final mAsyncInProgressLock:Ljava/lang/Object;

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposeAfterAsync:Z

.field mDisposed:Z

.field mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionUpdateSupported:Z

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mDebugLog:Z

    const-string v1, "IabHelper"

    .line 121
    iput-object v1, p0, Lcom/ice/box/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 123
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mSetupDone:Z

    .line 125
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mDisposed:Z

    .line 127
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mDisposeAfterAsync:Z

    .line 129
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mSubscriptionsSupported:Z

    .line 131
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 134
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgress:Z

    const-string v0, ""

    .line 137
    iput-object v0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/ice/box/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/ice/box/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    const-string p1, "IAB helper created."

    .line 171
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method private checkNotDisposed()V
    .locals 1

    .line 361
    iget-boolean p0, p0, Lcom/ice/box/iab/IabHelper;->mDisposed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .locals 3

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v2, "/"

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    sub-int/2addr v2, p0

    if-ltz v2, :cond_0

    .line 192
    array-length v0, v1

    if-ge v2, v0, :cond_0

    aget-object p0, v1, v2

    return-object p0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 194
    array-length v1, v0

    if-lt p0, v1, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    aget-object p0, v0, p0

    return-object p0

    .line 194
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method checkSetupDone(Ljava/lang/String;)V
    .locals 2

    .line 756
    iget-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mSetupDone:Z

    if-eqz v0, :cond_0

    return-void

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 758
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method consume(Lcom/ice/box/iab/Purchase;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabException;
        }
    .end annotation

    .line 694
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 695
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 697
    iget-object v0, p1, Lcom/ice/box/iab/Purchase;->mItemType:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 705
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 712
    iget-object v2, p0, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return-void

    .line 716
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 717
    new-instance p0, Lcom/ice/box/iab/IabException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 706
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 707
    new-instance p0, Lcom/ice/box/iab/IabException;

    const/16 v0, -0x3ef

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 720
    new-instance v0, Lcom/ice/box/iab/IabException;

    const/16 v1, -0x3e9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 698
    :cond_2
    new-instance p0, Lcom/ice/box/iab/IabException;

    const/16 v0, -0x3f2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Items of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ice/box/iab/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public consumeAsync(Lcom/ice/box/iab/Purchase;Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .line 734
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 735
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    .line 737
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 738
    invoke-virtual {p0, v0, p2, p1}, Lcom/ice/box/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ice/box/iab/Purchase;",
            ">;",
            "Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .line 749
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "consume"

    .line 750
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0, p1, v0, p2}, Lcom/ice/box/iab/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ice/box/iab/Purchase;",
            ">;",
            "Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;",
            "Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .line 944
    new-instance v4, Landroid/os/Handler;

    invoke-direct/range {v4 .. v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "consume"

    .line 945
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 946
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/ice/box/iab/IabHelper$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ice/box/iab/IabHelper$3;-><init>(Lcom/ice/box/iab/IabHelper;Ljava/util/List;Lcom/ice/box/iab/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/ice/box/iab/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 975
    invoke-virtual/range {v6 .. v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public dispose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-boolean v1, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgress:Z

    if-nez v1, :cond_1

    .line 326
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Disposing."

    .line 327
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mSetupDone:Z

    .line 329
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const-string v0, "Unbinding from service."

    .line 330
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ice/box/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mDisposed:Z

    const/4 v0, 0x0

    .line 334
    iput-object v0, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    .line 335
    iput-object v0, p0, Lcom/ice/box/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 336
    iput-object v0, p0, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 337
    iput-object v0, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    return-void

    .line 323
    :cond_1
    :try_start_1
    new-instance v1, Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t dispose because an async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is in progress."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 326
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public disposeWhenFinished()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-boolean v1, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgress:Z

    if-eqz v1, :cond_0

    const-string v1, "Will dispose after async operation finishes."

    .line 347
    invoke-virtual {p0, v1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 348
    iput-boolean v1, p0, Lcom/ice/box/iab/IabHelper;->mDisposeAfterAsync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 351
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->dispose()V
    :try_end_1
    .catch Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :catch_0
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public enableDebugLogging(Z)V
    .locals 0

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    .line 209
    iput-boolean p1, p0, Lcom/ice/box/iab/IabHelper;->mDebugLog:Z

    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .locals 0

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    .line 203
    iput-boolean p1, p0, Lcom/ice/box/iab/IabHelper;->mDebugLog:Z

    .line 204
    iput-object p2, p0, Lcom/ice/box/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    return-void
.end method

.method public flagEndAsync()V
    .locals 3

    .line 805
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 806
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ending async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ice/box/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const-string v1, ""

    .line 807
    iput-object v1, p0, Lcom/ice/box/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v1, 0x0

    .line 808
    iput-boolean v1, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgress:Z

    .line 809
    iget-boolean v1, p0, Lcom/ice/box/iab/IabHelper;->mDisposeAfterAsync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 811
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->dispose()V
    :try_end_1
    .catch Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_0
    iget-boolean v1, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgress:Z

    if-nez v1, :cond_0

    .line 798
    iput-object p1, p0, Lcom/ice/box/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    const/4 v1, 0x1

    .line 799
    iput-boolean v1, p0, Lcom/ice/box/iab/IabHelper;->mAsyncInProgress:Z

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting async operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 801
    monitor-exit v0

    return-void

    .line 795
    :cond_0
    new-instance v1, Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because another async operation ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is in progress."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    .line 801
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "RESPONSE_CODE"

    .line 764
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 766
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 768
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 769
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    .line 771
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 773
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type for bundle response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .locals 2

    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 781
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 783
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 784
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_2
    const-string v0, "Unexpected type for intent response code."

    .line 786
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 788
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected type for intent response code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 7

    .line 496
    iget v0, p0, Lcom/ice/box/iab/IabHelper;->mRequestCode:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 498
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    const-string p1, "handleActivityResult"

    .line 499
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    const/16 p1, -0x3ea

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    const-string p2, "Null data in IAB activity result."

    .line 505
    invoke-virtual {p0, p2}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 506
    new-instance p2, Lcom/ice/box/iab/IabResult;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 507
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p0, p2, v2}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_1
    return v0

    .line 511
    :cond_2
    invoke-virtual {p0, p3}, Lcom/ice/box/iab/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    .line 512
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    .line 513
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_9

    if-nez v3, :cond_9

    const-string p2, "Successful resultcode from purchase activity."

    .line 516
    invoke-virtual {p0, p2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 517
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase data: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 518
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data signature: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 519
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 520
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected item type: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ice/box/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 532
    :cond_3
    :try_start_0
    new-instance p2, Lcom/ice/box/iab/Purchase;

    iget-object p3, p0, Lcom/ice/box/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {p2, p3, v4, v5}, Lcom/ice/box/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual/range {p2 .. p2}, Lcom/ice/box/iab/Purchase;->getSku()Ljava/lang/String;

    move-result-object p3

    .line 536
    iget-object v3, p0, Lcom/ice/box/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/ice/box/iab/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 538
    new-instance v1, Lcom/ice/box/iab/IabResult;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range {v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature verification failed for sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v3, p3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 540
    iget-object p3, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p3, v1, p2}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_4
    return v0

    :cond_5
    const-string p3, "Purchase signature successfully verified."

    .line 543
    invoke-virtual {p0, p3}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_c

    .line 553
    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    new-instance p1, Lcom/ice/box/iab/IabResult;

    const-string p3, "Success"

    invoke-direct {p1, v1, p3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    goto/16 :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 545
    invoke-virtual {p0, p3}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 547
    new-instance p2, Lcom/ice/box/iab/IabResult;

    const-string p3, "Failed to parse purchase data."

    invoke-direct {p2, p1, p3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 548
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p0, p2, v2}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_6
    return v0

    :cond_7
    :goto_0
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 523
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Extras: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 525
    new-instance p1, Lcom/ice/box/iab/IabResult;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 526
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p0, p1, v2}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_8
    return v0

    :cond_9
    if-ne p2, v6, :cond_a

    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v3}, Lcom/ice/box/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 558
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p1, :cond_c

    .line 559
    new-instance p1, Lcom/ice/box/iab/IabResult;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v3, p2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 560
    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p0, p1, v2}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    goto :goto_1

    :cond_a
    if-nez p2, :cond_b

    .line 563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v3}, Lcom/ice/box/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 564
    new-instance p1, Lcom/ice/box/iab/IabResult;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 565
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p0, p1, v2}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    goto :goto_1

    .line 567
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-static/range {v3 .. v3}, Lcom/ice/box/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 569
    new-instance p1, Lcom/ice/box/iab/IabResult;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 570
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {p0, p1, v2}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_c
    :goto_1
    return v0
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 374
    invoke-virtual/range {v0 .. v5}, Lcom/ice/box/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    const-string v3, "inapp"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 379
    invoke-virtual/range {v0 .. v7}, Lcom/ice/box/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    move-object v1, p0

    move-object v9, p2

    move-object/from16 v0, p3

    move/from16 v10, p5

    move-object/from16 v11, p6

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    const-string v2, "launchPurchaseFlow"

    .line 419
    invoke-virtual {v1, v2}, Lcom/ice/box/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v2, "launchPurchaseFlow"

    .line 420
    invoke-virtual {v1, v2}, Lcom/ice/box/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    const-string v2, "subs"

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/ice/box/iab/IabHelper;->mSubscriptionsSupported:Z

    if-nez v2, :cond_1

    .line 424
    new-instance v0, Lcom/ice/box/iab/IabResult;

    const/16 v2, -0x3f1

    const-string v3, "Subscriptions are not available."

    invoke-direct {v0, v2, v3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    if-eqz v11, :cond_0

    .line 426
    invoke-interface {v11, v0, v12}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_0
    return-void

    .line 431
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructing buy intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz p4, :cond_5

    .line 433
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 438
    :cond_2
    iget-boolean v2, v1, Lcom/ice/box/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    if-nez v2, :cond_4

    .line 439
    new-instance v0, Lcom/ice/box/iab/IabResult;

    const/16 v2, -0x3f3

    const-string v3, "Subscription updates are not available."

    invoke-direct {v0, v2, v3}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    if-eqz v11, :cond_3

    .line 442
    invoke-interface {v11, v0, v12}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_3
    return-void

    .line 445
    :cond_4
    iget-object v2, v1, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x5

    iget-object v4, v1, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p4

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p7

    invoke-interface/range {v2 .. v8}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    .line 435
    :cond_5
    :goto_0
    iget-object v2, v1, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, v1, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    invoke-interface/range {v2 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 448
    :goto_1
    invoke-virtual {v1, v2}, Lcom/ice/box/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    if-eqz v3, :cond_7

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v3}, Lcom/ice/box/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    .line 452
    new-instance v0, Lcom/ice/box/iab/IabResult;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v3, v2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_6

    .line 453
    invoke-interface {v11, v0, v12}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_6
    return-void

    :cond_7
    const-string v3, "BUY_INTENT"

    .line 457
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct/range {v3 .. v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 459
    iput v10, v1, Lcom/ice/box/iab/IabHelper;->mRequestCode:I

    .line 460
    iput-object v11, v1, Lcom/ice/box/iab/IabHelper;->mPurchaseListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    .line 461
    iput-object v0, v1, Lcom/ice/box/iab/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 462
    invoke-virtual/range {v2 .. v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct/range {v5 .. v5}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 463
    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 462
    invoke-virtual/range {v2 .. v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 463
    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, p1

    move/from16 v4, p5

    .line 462
    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 473
    invoke-virtual/range {v0 .. v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    .line 476
    new-instance v0, Lcom/ice/box/iab/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_8

    .line 477
    invoke-interface {v11, v0, v12}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {v0 .. v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 467
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->flagEndAsync()V

    .line 469
    new-instance v0, Lcom/ice/box/iab/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_8

    .line 470
    invoke-interface {v11, v0, v12}, Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/ice/box/iab/IabResult;Lcom/ice/box/iab/Purchase;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 385
    invoke-virtual/range {v0 .. v5}, Lcom/ice/box/iab/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    const-string v3, "subs"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 391
    invoke-virtual/range {v0 .. v7}, Lcom/ice/box/iab/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .locals 1

    .line 979
    iget-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .locals 2

    .line 983
    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-app billing error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .locals 2

    .line 987
    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-app billing warning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public queryInventory()Lcom/ice/box/iab/Inventory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 576
    invoke-virtual {p0, v1, v0, v0}, Lcom/ice/box/iab/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/ice/box/iab/Inventory;

    move-result-object p0

    return-object p0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/ice/box/iab/Inventory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ice/box/iab/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabException;
        }
    .end annotation

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    .line 598
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 600
    :try_start_0
    new-instance v0, Lcom/ice/box/iab/Inventory;

    invoke-direct/range {v0 .. v0}, Lcom/ice/box/iab/Inventory;-><init>()V

    const-string v1, "inapp"

    .line 601
    invoke-virtual {p0, v0, v1}, Lcom/ice/box/iab/IabHelper;->queryPurchases(Lcom/ice/box/iab/Inventory;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_1

    const-string v1, "inapp"

    .line 607
    invoke-virtual {p0, v1, v0, p2}, Lcom/ice/box/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/ice/box/iab/Inventory;Ljava/util/List;)I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 609
    :cond_0
    new-instance p0, Lcom/ice/box/iab/IabException;

    const-string p1, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p0, p2, p1}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 614
    :cond_1
    :goto_0
    iget-boolean p2, p0, Lcom/ice/box/iab/IabHelper;->mSubscriptionsSupported:Z

    if-eqz p2, :cond_4

    const-string p2, "subs"

    .line 615
    invoke-virtual {p0, v0, p2}, Lcom/ice/box/iab/IabHelper;->queryPurchases(Lcom/ice/box/iab/Inventory;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    const-string p1, "subs"

    .line 621
    invoke-virtual {p0, p1, v0, p3}, Lcom/ice/box/iab/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/ice/box/iab/Inventory;Ljava/util/List;)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 623
    :cond_2
    new-instance p1, Lcom/ice/box/iab/IabException;

    const-string p2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {p1, p0, p2}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 617
    :cond_3
    new-instance p0, Lcom/ice/box/iab/IabException;

    const-string p1, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {p0, p2, p1}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object v0

    .line 603
    :cond_5
    new-instance p0, Lcom/ice/box/iab/IabException;

    const-string p1, "Error refreshing inventory (querying owned items)."

    invoke-direct {p0, v1, p1}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 633
    new-instance p1, Lcom/ice/box/iab/IabException;

    const/16 p2, -0x3ea

    const-string p3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p1, p2, p3, p0}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    .line 631
    new-instance p1, Lcom/ice/box/iab/IabException;

    const/16 p2, -0x3e9

    const-string p3, "Remote exception while refreshing inventory."

    invoke-direct {p1, p2, p3, p0}, Lcom/ice/box/iab/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public queryInventoryAsync(Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 681
    invoke-virtual {p0, v1, v0, v0, p1}, Lcom/ice/box/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;)V

    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .line 651
    new-instance v6, Landroid/os/Handler;

    invoke-direct/range {v6 .. v6}, Landroid/os/Handler;-><init>()V

    .line 652
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    const-string v0, "queryInventory"

    .line 653
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    .line 654
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 655
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/ice/box/iab/IabHelper$2;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ice/box/iab/IabHelper$2;-><init>(Lcom/ice/box/iab/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 677
    invoke-virtual/range {v7 .. v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method queryPurchases(Lcom/ice/box/iab/Inventory;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 828
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct/range {v3 .. v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 829
    iget-object v3, p0, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p2, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 831
    invoke-virtual {p0, v1}, Lcom/ice/box/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v3

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range {v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owned items response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 834
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPurchases() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v3 .. v3}, Lcom/ice/box/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 837
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "INAPP_PURCHASE_DATA_LIST"

    .line 838
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 843
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    .line 844
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    .line 845
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    move v6, v2

    move v2, v0

    .line 847
    :goto_1
    invoke-virtual/range {v4 .. v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 848
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 849
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 850
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 851
    iget-object v10, p0, Lcom/ice/box/iab/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v10, v7, v8}, Lcom/ice/box/iab/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 852
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct/range {v10 .. v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v10 .. v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 853
    new-instance v9, Lcom/ice/box/iab/Purchase;

    invoke-direct {v9, p2, v7, v8}, Lcom/ice/box/iab/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {v9 .. v9}, Lcom/ice/box/iab/Purchase;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v8 .. v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "BUG: empty/null token!"

    .line 856
    invoke-virtual {p0, v8}, Lcom/ice/box/iab/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 857
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct/range {v8 .. v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v8 .. v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 861
    :cond_2
    invoke-virtual {p1, v9}, Lcom/ice/box/iab/Inventory;->addPurchase(Lcom/ice/box/iab/Purchase;)V

    goto :goto_2

    :cond_3
    const-string v6, "Purchase signature verification **FAILED**. Not adding item."

    .line 863
    invoke-virtual {p0, v6}, Lcom/ice/box/iab/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 864
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct/range {v6 .. v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   Purchase data: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v6 .. v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct/range {v6 .. v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   Signature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v6 .. v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 870
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 871
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuation token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 872
    invoke-static/range {v1 .. v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v6, :cond_5

    const/16 v0, -0x3eb

    :cond_5
    return v0

    :cond_6
    move v2, v6

    goto/16 :goto_0

    :cond_7
    :goto_3
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 839
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p0, -0x3ea

    return p0
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/ice/box/iab/Inventory;Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ice/box/iab/Inventory;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    .line 878
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    invoke-virtual {p2, p1}, Lcom/ice/box/iab/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_1

    .line 882
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 883
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 884
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 889
    :cond_1
    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_2

    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    .line 890
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return v1

    .line 895
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct/range {p3 .. p3}, Ljava/util/ArrayList;-><init>()V

    .line 897
    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x14

    .line 898
    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    rem-int/lit8 v3, v3, 0x14

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_4

    .line 900
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct/range {v5 .. v5}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v6, v4, 0x14

    add-int/lit8 v7, v6, 0x14

    .line 901
    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface/range {v6 .. v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface/range {v6 .. v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {v6 .. v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 902
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 904
    :cond_3
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_6

    .line 907
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct/range {v4 .. v4}, Ljava/util/ArrayList;-><init>()V

    mul-int/lit8 v2, v2, 0x14

    add-int/2addr v3, v2

    .line 908
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 909
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 911
    :cond_5
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {p3 .. p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 915
    new-instance v2, Landroid/os/Bundle;

    invoke-direct/range {v2 .. v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    .line 916
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 917
    iget-object v0, p0, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, p1, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "DETAILS_LIST"

    .line 919
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 920
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_8

    .line 922
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSkuDetails() failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/iab/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    return p1

    :cond_8
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 925
    invoke-virtual {p0, p1}, Lcom/ice/box/iab/IabHelper;->logError(Ljava/lang/String;)V

    const/16 p0, -0x3ea

    return p0

    :cond_9
    const-string v2, "DETAILS_LIST"

    .line 930
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 932
    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 933
    new-instance v3, Lcom/ice/box/iab/SkuDetails;

    invoke-direct {v3, p1, v2}, Lcom/ice/box/iab/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got sku details: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 935
    invoke-virtual {p2, v3}, Lcom/ice/box/iab/Inventory;->addSkuDetails(Lcom/ice/box/iab/SkuDetails;)V

    goto :goto_4

    :cond_a
    return v1
.end method

.method public startSetup(Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;)V
    .locals 3

    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    .line 222
    iget-boolean v0, p0, Lcom/ice/box/iab/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_2

    const-string v0, "Starting in-app billing setup."

    .line 225
    invoke-virtual {p0, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/ice/box/iab/IabHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/ice/box/iab/IabHelper$1;-><init>(Lcom/ice/box/iab/IabHelper;Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v0, p0, Lcom/ice/box/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v1, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    invoke-interface/range {v1 .. v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/ice/box/iab/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 308
    new-instance p0, Lcom/ice/box/iab/IabResult;

    const/4 v0, 0x3

    const-string v1, "Billing service unavailable on device."

    invoke-direct {p0, v0, v1}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/ice/box/iab/IabResult;)V

    :cond_1
    :goto_0
    return-void

    .line 222
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "IAB helper is already set up."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public subscriptionsSupported()Z
    .locals 0

    .line 368
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/IabHelper;->checkNotDisposed()V

    .line 369
    iget-boolean p0, p0, Lcom/ice/box/iab/IabHelper;->mSubscriptionsSupported:Z

    return p0
.end method
