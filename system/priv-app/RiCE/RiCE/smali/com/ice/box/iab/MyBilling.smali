.class public Lcom/ice/box/iab/MyBilling;
.super Ljava/lang/Object;
.source "MyBilling.java"


# static fields
.field private static final RC_REQUEST:I = 0x277f

.field public static final SKU_ICE_PREMIUM_10:Ljava/lang/String; = "icebox.donation10"

.field public static final SKU_ICE_PREMIUM_2:Ljava/lang/String; = "icebox.donation2"

.field public static final SKU_ICE_PREMIUM_5:Ljava/lang/String; = "icebox.donation5"

.field public static final SKU_ICE_PREMIUM_MONTHLY:Ljava/lang/String; = "icebox.monthly"

.field public static final SKU_ICE_PREMIUM_YEARLY:Ljava/lang/String; = "com.ice.tweaks.yearly"


# instance fields
.field private activity:Landroid/app/Activity;

.field private mGotInventoryListener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

.field private mHelper:Lcom/ice/box/iab/IabHelper;

.field private mPurchaseFinishedListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

.field sharedPref:Landroid/content/SharedPreferences;

.field private subscriptionType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/ice/box/iab/MyBilling$1;

    invoke-direct {v0, p0}, Lcom/ice/box/iab/MyBilling$1;-><init>(Lcom/ice/box/iab/MyBilling;)V

    iput-object v0, p0, Lcom/ice/box/iab/MyBilling;->mGotInventoryListener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

    .line 95
    new-instance v0, Lcom/ice/box/iab/MyBilling$2;

    invoke-direct {v0, p0}, Lcom/ice/box/iab/MyBilling$2;-><init>(Lcom/ice/box/iab/MyBilling;)V

    iput-object v0, p0, Lcom/ice/box/iab/MyBilling;->mPurchaseFinishedListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    .line 138
    iput-object p1, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ice/box/iab/MyBilling;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling;->subscriptionType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/ice/box/iab/MyBilling;->subscriptionType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/iab/MyBilling;->complain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ice/box/iab/MyBilling;)Z
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/iab/MyBilling;->verifyDeveloperPayload()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling;->mGotInventoryListener:Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ice/box/iab/MyBilling;)Landroid/app/Activity;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ice/box/iab/MyBilling;)Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling;->mPurchaseFinishedListener:Lcom/ice/box/iab/IabHelper$OnIabPurchaseFinishedListener;

    return-object p0
.end method

.method private alert(Ljava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ice/box/iab/MyBilling$8;

    invoke-direct {v1, p0, p1}, Lcom/ice/box/iab/MyBilling$8;-><init>(Lcom/ice/box/iab/MyBilling;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private complain(Ljava/lang/String;)V
    .locals 0

    .line 313
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/iab/MyBilling;->alert(Ljava/lang/String;)V

    return-void
.end method

.method private verifyDeveloperPayload()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public Premium10()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ice/box/iab/MyBilling$7;

    invoke-direct {v1, p0}, Lcom/ice/box/iab/MyBilling$7;-><init>(Lcom/ice/box/iab/MyBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Premium2()V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ice/box/iab/MyBilling$5;

    invoke-direct {v1, p0}, Lcom/ice/box/iab/MyBilling$5;-><init>(Lcom/ice/box/iab/MyBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Premium5()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ice/box/iab/MyBilling$6;

    invoke-direct {v1, p0}, Lcom/ice/box/iab/MyBilling$6;-><init>(Lcom/ice/box/iab/MyBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object p0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ice/box/iab/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 146
    new-instance v0, Lcom/ice/box/iab/IabHelper;

    iget-object v1, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApU8ryAWCZ8tCzvCWfrKhg1HXME1uj5Ym4ZyW5h/BKOR0nLARlwkl0kDGEqbdYgg3AjtULVBt+7jXSi85+lhxmzApBct5jRNpxr4l6wm5Gp7Sy5g6wZWd1vxu0xGnkmC5G9v177vnSalGUki8DPbQYpy9qp4qJ2R+SM2ykWaboInasPYWyTLsFRuTYql+GH1i0xjQ7NJCt098p/yeBHlMQTtnUbVkSZPEEVUt/ndjVnV1Vw8bR97/l7M1g60aojbvTz8EOYTUxYIoQyH0ZhCrg1BMmDZixbffIZjyk4K1oQ5NKz4gxJ2lDASbhJYx/QuI/E+d1UWC0BEx0UAPMXbVywIDAQAB"

    invoke-direct {v0, v1, v2}, Lcom/ice/box/iab/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    .line 147
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    invoke-static/range {v0 .. v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/iab/MyBilling;->sharedPref:Landroid/content/SharedPreferences;

    .line 151
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ice/box/iab/IabHelper;->enableDebugLogging(Z)V

    .line 156
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    new-instance v1, Lcom/ice/box/iab/MyBilling$3;

    invoke-direct {v1, p0}, Lcom/ice/box/iab/MyBilling$3;-><init>(Lcom/ice/box/iab/MyBilling;)V

    invoke-virtual {v0, v1}, Lcom/ice/box/iab/IabHelper;->startSetup(Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    if-eqz v0, :cond_0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/iab/IabHelper;->dispose()V
    :try_end_0
    .catch Lcom/ice/box/iab/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    :cond_0
    return-void
.end method

.method public purchaseSubscriptionMonthly()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->mHelper:Lcom/ice/box/iab/IabHelper;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/iab/IabHelper;->subscriptionsSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ice/box/iab/MyBilling;->complain(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ice/box/iab/MyBilling$4;

    invoke-direct {v1, p0}, Lcom/ice/box/iab/MyBilling$4;-><init>(Lcom/ice/box/iab/MyBilling;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public restartSelfOnLicenseOK()V
    .locals 3

    .line 331
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    iget-object v1, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    invoke-virtual/range {v1 .. v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 333
    iget-object v1, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    const v2, 0x7f1001d5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 334
    iget-object v1, p0, Lcom/ice/box/iab/MyBilling;->activity:Landroid/app/Activity;

    invoke-virtual/range {v1 .. v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ice/box/iab/MyBilling$9;

    invoke-direct {v2, p0}, Lcom/ice/box/iab/MyBilling$9;-><init>(Lcom/ice/box/iab/MyBilling;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
