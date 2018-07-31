.class public Lcom/ice/box/fragments/License;
.super Landroid/preference/PreferenceFragment;
.source "License.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/fragments/License$getLegacyLicense;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE:I = 0x1

.field private static final REQUEST_CODE_OFF_THE_BOOKS:I = 0x2


# instance fields
.field private clickCounter:I

.field counter:I

.field private googleAccount:Ljava/lang/String;

.field isException:Z

.field isFreeVersion:Z

.field isInstalledDonation:Z

.field isInstalledPro:Z

.field isMonthly:Z

.field isPremium10:Z

.field isPremium2:Z

.field isPremium5:Z

.field isYearly:Z

.field licenseType:Ljava/lang/StringBuilder;

.field mHelper:Lcom/ice/box/iab/IabHelper;

.field private mThemeId:I

.field private myBilling:Lcom/ice/box/iab/MyBilling;

.field private sharedPref:Landroid/content/SharedPreferences;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    const v0, 0x7f110126

    .line 61
    iput v0, p0, Lcom/ice/box/fragments/License;->mThemeId:I

    return-void
.end method

.method private AlertDialogIabNotSupported()V
    .locals 3

    .line 261
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x7f0e0000

    .line 263
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ice/box/fragments/License$2;

    invoke-direct {v2, p0}, Lcom/ice/box/fragments/License$2;-><init>(Lcom/ice/box/fragments/License;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 270
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/License;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/ice/box/fragments/License;->clickCounter:I

    return p0
.end method

.method static synthetic access$008(Lcom/ice/box/fragments/License;)I
    .locals 2

    .line 46
    iget v0, p0, Lcom/ice/box/fragments/License;->clickCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ice/box/fragments/License;->clickCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/ice/box/fragments/License;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ice/box/fragments/License;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ice/box/fragments/License;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ice/box/fragments/License;->googleAccount:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ice/box/fragments/License;)Landroid/content/SharedPreferences;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$500(Lcom/ice/box/fragments/License;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/ice/box/fragments/License;->iabPrefs(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fetchPrices()V
    .locals 3

    .line 346
    new-instance v0, Lcom/ice/box/iab/IabHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApU8ryAWCZ8tCzvCWfrKhg1HXME1uj5Ym4ZyW5h/BKOR0nLARlwkl0kDGEqbdYgg3AjtULVBt+7jXSi85+lhxmzApBct5jRNpxr4l6wm5Gp7Sy5g6wZWd1vxu0xGnkmC5G9v177vnSalGUki8DPbQYpy9qp4qJ2R+SM2ykWaboInasPYWyTLsFRuTYql+GH1i0xjQ7NJCt098p/yeBHlMQTtnUbVkSZPEEVUt/ndjVnV1Vw8bR97/l7M1g60aojbvTz8EOYTUxYIoQyH0ZhCrg1BMmDZixbffIZjyk4K1oQ5NKz4gxJ2lDASbhJYx/QuI/E+d1UWC0BEx0UAPMXbVywIDAQAB"

    invoke-direct {v0, v1, v2}, Lcom/ice/box/iab/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ice/box/fragments/License;->mHelper:Lcom/ice/box/iab/IabHelper;

    .line 349
    new-instance v0, Lcom/ice/box/fragments/License$3;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/License$3;-><init>(Lcom/ice/box/fragments/License;)V

    .line 373
    iget-object v1, p0, Lcom/ice/box/fragments/License;->mHelper:Lcom/ice/box/iab/IabHelper;

    new-instance v2, Lcom/ice/box/fragments/License$4;

    invoke-direct {v2, p0, v0}, Lcom/ice/box/fragments/License$4;-><init>(Lcom/ice/box/fragments/License;Lcom/ice/box/iab/IabHelper$QueryInventoryFinishedListener;)V

    invoke-virtual {v1, v2}, Lcom/ice/box/iab/IabHelper;->startSetup(Lcom/ice/box/iab/IabHelper$OnIabSetupFinishedListener;)V

    return-void
.end method

.method private iabPrefs(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "icebox.monthly"

    .line 399
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/License;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 400
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 401
    iget-boolean v1, p0, Lcom/ice/box/fragments/License;->isMonthly:Z

    const v2, 0x7f1000a2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 404
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    const-string v1, "icebox.donation2"

    .line 407
    invoke-virtual {p0, v1}, Lcom/ice/box/fragments/License;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 408
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 409
    iget-boolean v4, p0, Lcom/ice/box/fragments/License;->isPremium2:Z

    if-eqz v4, :cond_1

    .line 410
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    const-string v4, "icebox.donation5"

    .line 415
    invoke-virtual {p0, v4}, Lcom/ice/box/fragments/License;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 416
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 417
    iget-boolean v5, p0, Lcom/ice/box/fragments/License;->isPremium5:Z

    if-eqz v5, :cond_2

    .line 418
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    const-string v5, "icebox.donation10"

    .line 423
    invoke-virtual {p0, v5}, Lcom/ice/box/fragments/License;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 424
    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 425
    iget-boolean v6, p0, Lcom/ice/box/fragments/License;->isPremium10:Z

    if-eqz v6, :cond_3

    .line 426
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 431
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f100111

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 433
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f10006b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    if-ne p2, v2, :cond_0

    const-string v5, "authAccount"

    .line 276
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    new-instance v6, Lcom/ice/box/fragments/License$getLegacyLicense;

    invoke-direct {v6, p0, v1}, Lcom/ice/box/fragments/License$getLegacyLicense;-><init>(Lcom/ice/box/fragments/License;Lcom/ice/box/fragments/License$1;)V

    new-array v7, v3, [Ljava/lang/String;

    aput-object v5, v7, v0

    const-string v5, "0"

    aput-object v5, v7, v4

    invoke-virtual {v6, v7}, Lcom/ice/box/fragments/License$getLegacyLicense;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_1

    const-string p1, "authAccount"

    .line 280
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance p2, Lcom/ice/box/fragments/License$getLegacyLicense;

    invoke-direct {p2, p0, v1}, Lcom/ice/box/fragments/License$getLegacyLicense;-><init>(Lcom/ice/box/fragments/License;Lcom/ice/box/fragments/License$1;)V

    new-array p0, v3, [Ljava/lang/String;

    aput-object p1, p0, v0

    const-string p1, "1"

    aput-object p1, p0, v4

    invoke-virtual {p2, p0}, Lcom/ice/box/fragments/License$getLegacyLicense;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 71
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    .line 73
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/fragments/License;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 77
    new-instance p1, Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/ice/box/iab/MyBilling;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/ice/box/fragments/License;->myBilling:Lcom/ice/box/iab/MyBilling;

    .line 79
    :try_start_0
    iget-object p1, p0, Lcom/ice/box/fragments/License;->myBilling:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->onCreate()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ICEDEBUG"

    .line 81
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isInstalledPro"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isInstalledPro:Z

    .line 85
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isInstalledDonation"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isInstalledDonation:Z

    .line 86
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isMonthly"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isMonthly:Z

    .line 87
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isYearly"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isYearly:Z

    .line 88
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isPremium2"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isPremium2:Z

    .line 89
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isPremium5"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isPremium5:Z

    .line 90
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isPremium10"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isPremium10:Z

    .line 91
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isFreeVersion"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isFreeVersion:Z

    .line 92
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isException"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/fragments/License;->isException:Z

    .line 93
    iget-object p1, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v0, "isLegacyLicense"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "googleAccount"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/fragments/License;->googleAccount:Ljava/lang/String;

    const v0, 0x7f13000a

    .line 96
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/License;->addPreferencesFromResource(I)V

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/License;->fetchPrices()V

    .line 99
    iget-object v0, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "THEMEID"

    iget v3, p0, Lcom/ice/box/fragments/License;->mThemeId:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ice/box/fragments/License;->mThemeId:I

    const-string v0, "license_status"

    .line 102
    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/License;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 104
    iget-boolean v2, p0, Lcom/ice/box/fragments/License;->isFreeVersion:Z

    if-eqz v2, :cond_0

    .line 105
    iget-object p1, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 107
    :cond_0
    iget-boolean v2, p0, Lcom/ice/box/fragments/License;->isPremium2:Z

    const v3, 0x7f100064

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100068

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 109
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v2, p0, Lcom/ice/box/fragments/License;->counter:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/ice/box/fragments/License;->counter:I

    .line 112
    :cond_1
    iget-boolean v2, p0, Lcom/ice/box/fragments/License;->isPremium5:Z

    if-eqz v2, :cond_2

    .line 113
    iget-object v2, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100069

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 114
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 114
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget v2, p0, Lcom/ice/box/fragments/License;->counter:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/ice/box/fragments/License;->counter:I

    .line 118
    :cond_2
    iget-boolean v2, p0, Lcom/ice/box/fragments/License;->isPremium10:Z

    if-eqz v2, :cond_3

    .line 119
    iget-object v2, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 120
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 120
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v2, p0, Lcom/ice/box/fragments/License;->counter:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/ice/box/fragments/License;->counter:I

    .line 124
    :cond_3
    iget-boolean v2, p0, Lcom/ice/box/fragments/License;->isMonthly:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/ice/box/fragments/License;->isYearly:Z

    if-eqz v2, :cond_5

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10010e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 126
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    .line 126
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget v2, p0, Lcom/ice/box/fragments/License;->counter:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/ice/box/fragments/License;->counter:I

    :cond_5
    if-eqz p1, :cond_6

    .line 130
    iget-object p1, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1000aa

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 131
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget p1, p0, Lcom/ice/box/fragments/License;->counter:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/ice/box/fragments/License;->counter:I

    .line 135
    :cond_6
    iget p1, p0, Lcom/ice/box/fragments/License;->counter:I

    if-le p1, v4, :cond_7

    .line 136
    iget-object p1, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 138
    :cond_7
    iget p1, p0, Lcom/ice/box/fragments/License;->counter:I

    if-lez p1, :cond_8

    .line 139
    iget-object p1, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/ice/box/fragments/License;->licenseType:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 143
    iget-boolean p1, p0, Lcom/ice/box/fragments/License;->isException:Z

    if-nez p1, :cond_9

    .line 144
    new-instance p1, Lcom/ice/box/fragments/License$1;

    invoke-direct {p1, p0}, Lcom/ice/box/fragments/License$1;-><init>(Lcom/ice/box/fragments/License;)V

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 186
    :cond_9
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 189
    :goto_2
    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/ice/box/fragments/License;->iabPrefs(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "icebox.oldice"

    .line 191
    invoke-virtual {p0, p1}, Lcom/ice/box/fragments/License;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 192
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/ice/box/fragments/License;->googleAccount:Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct/range {v0 .. v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ice/box/fragments/License;->googleAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    :cond_a
    iget-boolean v0, p0, Lcom/ice/box/fragments/License;->isMonthly:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/ice/box/fragments/License;->isYearly:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/ice/box/fragments/License;->isPremium2:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/ice/box/fragments/License;->isPremium5:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/ice/box/fragments/License;->isPremium10:Z

    if-eqz v0, :cond_c

    .line 202
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "icebox.oldice.category"

    invoke-virtual {p0, v0}, Lcom/ice/box/fragments/License;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11

    .line 211
    iget-object v0, p0, Lcom/ice/box/fragments/License;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "googleAccount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "icebox.oldice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v1, "icebox.monthly"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "icebox.donation10"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "icebox.donation5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "icebox.donation2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 243
    :pswitch_0
    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    const-string p1, "com.google"

    .line 245
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 247
    invoke-virtual {p0, p1, v2}, Lcom/ice/box/fragments/License;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_2

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/ice/box/fragments/License;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/License;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100095

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;->MakeToast(Ljava/lang/String;)V

    goto :goto_2

    .line 237
    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/ice/box/fragments/License;->myBilling:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->Premium10()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 239
    :catch_0
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/License;->AlertDialogIabNotSupported()V

    goto :goto_2

    .line 230
    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lcom/ice/box/fragments/License;->myBilling:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->Premium5()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 232
    :catch_1
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/License;->AlertDialogIabNotSupported()V

    goto :goto_2

    .line 223
    :pswitch_3
    :try_start_3
    iget-object p1, p0, Lcom/ice/box/fragments/License;->myBilling:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->Premium2()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 225
    :catch_2
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/License;->AlertDialogIabNotSupported()V

    goto :goto_2

    .line 216
    :pswitch_4
    :try_start_4
    iget-object p1, p0, Lcom/ice/box/fragments/License;->myBilling:Lcom/ice/box/iab/MyBilling;

    invoke-virtual/range {p1 .. p1}, Lcom/ice/box/iab/MyBilling;->purchaseSubscriptionMonthly()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 218
    :catch_3
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/fragments/License;->AlertDialogIabNotSupported()V

    :catch_4
    :goto_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x12295dd2 -> :sswitch_4
        0x12295dd5 -> :sswitch_3
        0x33025c7f -> :sswitch_2
        0x495d977f -> :sswitch_1
        0x4feb2552 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
