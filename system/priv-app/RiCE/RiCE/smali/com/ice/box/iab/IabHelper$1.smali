.class Lcom/ice/box/iab/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/iab/IabHelper;->startSetup(Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/iab/IabHelper;

.field final synthetic val$listener:Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/ice/box/iab/IabHelper;Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->val$listener:Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 235
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-boolean p1, p1, Lcom/ice/box/iab/IabHelper;->mDisposed:Z

    if-eqz p1, :cond_0

    return-void

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    const-string v0, "Billing service connected."

    invoke-virtual {p1, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 237
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    invoke-static/range {p2 .. p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object p2

    iput-object p2, p1, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 238
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-object p1, p1, Lcom/ice/box/iab/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 240
    :try_start_0
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    const-string v0, "Checking for in-app billing 3 support."

    invoke-virtual {p2, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-object p2, p2, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const-string v0, "inapp"

    const/4 v1, 0x3

    invoke-interface {p2, v1, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 245
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->val$listener:Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_1

    .line 246
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->val$listener:Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/ice/box/iab/IabResult;

    const-string v2, "Error checking for billing v3 support."

    invoke-direct {v1, p2, v2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/ice/box/iab/IabResult;)V

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v0, p1, Lcom/ice/box/iab/IabHelper;->mSubscriptionsSupported:Z

    .line 251
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v0, p1, Lcom/ice/box/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    return-void

    .line 254
    :cond_2
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct/range {v2 .. v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-object p2, p2, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x5

    const-string v3, "subs"

    invoke-interface {p2, v2, p1, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x1

    if-nez p2, :cond_3

    .line 261
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    const-string v3, "Subscription re-signup AVAILABLE."

    invoke-virtual {p2, v3}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 262
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v2, p2, Lcom/ice/box/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    goto :goto_0

    .line 264
    :cond_3
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    const-string v3, "Subscription re-signup not available."

    invoke-virtual {p2, v3}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v0, p2, Lcom/ice/box/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 268
    :goto_0
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-boolean p2, p2, Lcom/ice/box/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    if-eqz p2, :cond_4

    .line 269
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v2, p1, Lcom/ice/box/iab/IabHelper;->mSubscriptionsSupported:Z

    goto :goto_1

    .line 272
    :cond_4
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iget-object p2, p2, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const-string v3, "subs"

    invoke-interface {p2, v1, p1, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    .line 274
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    const-string p2, "Subscriptions AVAILABLE."

    invoke-virtual {p1, p2}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v2, p1, Lcom/ice/box/iab/IabHelper;->mSubscriptionsSupported:Z

    goto :goto_1

    .line 277
    :cond_5
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v0, p1, Lcom/ice/box/iab/IabHelper;->mSubscriptionsSupported:Z

    .line 279
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v0, p1, Lcom/ice/box/iab/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 283
    :goto_1
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    iput-boolean v2, p1, Lcom/ice/box/iab/IabHelper;->mSetupDone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->val$listener:Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;

    if-eqz p1, :cond_6

    .line 294
    iget-object p0, p0, Lcom/ice/box/iab/IabHelper$1;->val$listener:Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;

    new-instance p1, Lcom/ice/box/iab/IabResult;

    const-string p2, "Setup successful."

    invoke-direct {p1, v0, p2}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/ice/box/iab/IabResult;)V

    :cond_6
    return-void

    :catch_0
    move-exception p1

    .line 285
    iget-object p2, p0, Lcom/ice/box/iab/IabHelper$1;->val$listener:Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;

    if-eqz p2, :cond_7

    .line 286
    iget-object p0, p0, Lcom/ice/box/iab/IabHelper$1;->val$listener:Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;

    new-instance p2, Lcom/ice/box/iab/IabResult;

    const/16 v0, -0x3e9

    const-string v1, "RemoteException while setting up in-app billing."

    invoke-direct {p2, v0, v1}, Lcom/ice/box/iab/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p2}, Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/ice/box/iab/IabResult;)V

    .line 289
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 229
    iget-object p1, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    const-string v0, "Billing service disconnected."

    invoke-virtual {p1, v0}, Lcom/ice/box/iab/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/ice/box/iab/IabHelper$1;->this$0:Lcom/ice/box/iab/IabHelper;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ice/box/iab/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-void
.end method
