.class public Lcom/ice/box/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;


# static fields
.field public static currentRomVersion:I

.field public static currentRomVersionText:Ljava/lang/String;

.field public static isARHD:Z

.field public static isAppRunning:Z

.field public static isException:Z

.field public static isFragmentOpen:Z

.field public static isFreeVersion:Z

.field public static isICE:Z

.field public static isInstalledDonation:Z

.field public static isInstalledPro:Z

.field public static isLegacyLicense:Z

.field public static isMonthly:Z

.field public static isNightly:Z

.field public static isOP6:Z

.field public static isPremium10:Z

.field public static isPremium2:Z

.field public static isPremium5:Z

.field public static isS8:Z

.field public static isS9:Z

.field public static isSupportedDevice:Z

.field public static isYearly:Z

.field public static licenseRating:I

.field public static nightliesChangelog:Ljava/lang/String;

.field public static nightliesOfflineCurrentRevision:I

.field public static nightliesOnlineCurrentRevision:I

.field public static onlineRomVersion:I

.field public static onlineRomVersionText:Ljava/lang/String;


# instance fields
.field private checkForAppUpdate:Z

.field private countFullScreenAds:J

.field private drawer:Lcom/ice/box/helpers/MyDrawerLayout;

.field private mAds:Landroid/widget/ImageView;

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field private mThemeId:I

.field protected navigationView:Landroid/support/design/widget/NavigationView;

.field private sharedPref:Landroid/content/SharedPreferences;

.field private toolbar:Landroid/support/v7/widget/Toolbar;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const v0, 0x7f110126

    .line 105
    iput v0, p0, Lcom/ice/box/MainActivity;->mThemeId:I

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->alertRomUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/ice/box/MainActivity;)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->alertNightlyUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/ice/box/MainActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/ice/box/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ice/box/MainActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/ice/box/MainActivity;->mAds:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ice/box/MainActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/ice/box/MainActivity;->mAds:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ice/box/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p2}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ice/box/MainActivity;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/ice/box/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ice/box/MainActivity;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/ice/box/MainActivity;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method

.method private alertMattPiggy()V
    .locals 3

    .line 536
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ice/box/MainActivity$5;

    invoke-direct {v2, p0}, Lcom/ice/box/MainActivity$5;-><init>(Lcom/ice/box/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private alertNightlyUpdate()V
    .locals 7

    .line 521
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "nightlyupdate"

    const/4 v2, 0x0

    .line 522
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "nightlyupdate_start"

    .line 523
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "onlineNightlyVersion"

    const/4 v5, 0x1

    .line 524
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "localNightlyVersion"

    .line 525
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "isICE"

    .line 526
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    if-ge v5, v4, :cond_0

    .line 529
    iget-object p0, p0, Lcom/ice/box/MainActivity;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->createNightlyNotification()V

    :cond_0
    return-void
.end method

.method private alertRomUpdate()V
    .locals 7

    .line 509
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "romupdate"

    const/4 v2, 0x0

    .line 510
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "romupdate_start"

    .line 511
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "localStableVersion"

    const/4 v5, 0x1

    .line 512
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "onlineStableVersion"

    .line 513
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "isICE"

    .line 514
    invoke-interface {v0, v6, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    if-ge v4, v5, :cond_0

    .line 516
    iget-object p0, p0, Lcom/ice/box/MainActivity;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->createRomNotification()V

    :cond_0
    return-void
.end method

.method private checkWriteSettings()V
    .locals 4

    .line 689
    invoke-static/range {p0 .. p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Landroid/content/Intent;

    invoke-direct/range {v0 .. v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    .line 691
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 693
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 695
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ice/box/MainActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/ice/box/MainActivity$8;-><init>(Lcom/ice/box/MainActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ice/box/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/ice/box/MainActivity$9;-><init>(Lcom/ice/box/MainActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 724
    invoke-virtual/range {v1 .. v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private doAdvertising()V
    .locals 3

    .line 555
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isFreeVersion"

    const/4 v2, 0x0

    .line 557
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f09001d

    if-nez v0, :cond_0

    .line 559
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/AdView;

    if-eqz p0, :cond_3

    const/16 v0, 0x8

    .line 561
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    .line 567
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 569
    :cond_1
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v1 .. v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 574
    new-instance v1, Lcom/ice/box/MainActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/ice/box/MainActivity$6;-><init>(Lcom/ice/box/MainActivity;Lcom/google/android/gms/ads/AdView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private doInterstitialAd()V
    .locals 5

    .line 605
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isFreeVersion"

    const/4 v2, 0x0

    .line 606
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-wide v1, p0, Lcom/ice/box/MainActivity;->countFullScreenAds:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ice/box/MainActivity;->countFullScreenAds:J

    .line 610
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "countFullScreenAds"

    iget-wide v2, p0, Lcom/ice/box/MainActivity;->countFullScreenAds:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 611
    iget-wide v0, p0, Lcom/ice/box/MainActivity;->countFullScreenAds:J

    const-wide/16 v2, 0x6

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 612
    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ice/box/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 613
    iget-object v0, p0, Lcom/ice/box/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 615
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 616
    iget-object v1, p0, Lcom/ice/box/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 617
    iget-object v0, p0, Lcom/ice/box/MainActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/ice/box/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/ice/box/MainActivity$7;-><init>(Lcom/ice/box/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    :cond_0
    return-void
.end method

.method public static isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z
    .locals 3

    const-string v0, "ICEDEBUG"

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "licenseRating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/ice/box/MainActivity;->licenseRating:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 656
    sget p0, Lcom/ice/box/MainActivity;->licenseRating:I

    if-lt p0, p3, :cond_3

    .line 657
    sget-boolean p0, Lcom/ice/box/MainActivity;->isNightly:Z

    if-eqz p0, :cond_1

    .line 658
    sget p0, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    if-lt p0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 660
    :cond_1
    sget p0, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-lt p0, p2, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 663
    :cond_3
    sget p0, Lcom/ice/box/MainActivity;->licenseRating:I

    if-lt p0, p3, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 666
    :cond_5
    sget v0, Lcom/ice/box/MainActivity;->licenseRating:I

    if-lt v0, p3, :cond_10

    const-string p3, "galaxyS8"

    .line 667
    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    sget-boolean p3, Lcom/ice/box/MainActivity;->isS8:Z

    if-nez p3, :cond_8

    :cond_6
    const-string p3, "galaxyS8"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    sget-boolean p3, Lcom/ice/box/MainActivity;->isS9:Z

    if-nez p3, :cond_8

    :cond_7
    const-string p3, "onePlus6"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    sget-boolean p0, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p0, :cond_c

    :cond_8
    const-string p0, "ICEDEBUG"

    const-string p3, "working known device"

    .line 668
    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    sget-boolean p0, Lcom/ice/box/MainActivity;->isNightly:Z

    if-eqz p0, :cond_a

    .line 670
    sget p0, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    if-lt p0, p1, :cond_9

    move v1, v2

    :cond_9
    return v1

    .line 672
    :cond_a
    sget p0, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-lt p0, p2, :cond_b

    move v1, v2

    :cond_b
    return v1

    :cond_c
    const-string p0, "ICEDEBUG"

    const-string p3, "working UNknown device"

    .line 675
    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    sget-boolean p0, Lcom/ice/box/MainActivity;->isNightly:Z

    if-eqz p0, :cond_e

    .line 677
    sget p0, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    if-lt p0, p1, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 679
    :cond_e
    sget p0, Lcom/ice/box/MainActivity;->currentRomVersion:I

    if-lt p0, p2, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 683
    :cond_10
    sget p0, Lcom/ice/box/MainActivity;->licenseRating:I

    if-lt p0, p3, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method private switchFragment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 368
    new-instance v0, Landroid/os/Handler;

    invoke-direct/range {v0 .. v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ice/box/MainActivity$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/ice/box/MainActivity$4;-><init>(Lcom/ice/box/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/ice/box/MainActivity;->drawer:Lcom/ice/box/helpers/MyDrawerLayout;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Lcom/ice/box/helpers/MyDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/ice/box/MainActivity;->drawer:Lcom/ice/box/helpers/MyDrawerLayout;

    invoke-virtual {v0, v1}, Lcom/ice/box/helpers/MyDrawerLayout;->closeDrawer(I)V

    .line 286
    sget-boolean v0, Lcom/ice/box/MainActivity;->isICE:Z

    const v1, 0x7f100023

    if-eqz v0, :cond_1

    .line 287
    sget-boolean v0, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz v0, :cond_0

    const-string v0, "OP_Home"

    .line 288
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Home"

    .line 290
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    sget-boolean v0, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz v0, :cond_2

    const-string v0, "OP_HBM"

    .line 293
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    :cond_2
    sget-boolean v0, Lcom/ice/box/MainActivity;->isSupportedDevice:Z

    if-eqz v0, :cond_4

    .line 297
    sget-boolean v0, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v0, :cond_3

    const-string v0, "Home"

    .line 298
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Unsupported_ROM_Home"

    .line 300
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "Unsupported_Device_Home"

    .line 303
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :goto_0
    sget-boolean v0, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    .line 308
    iget-object p0, p0, Lcom/ice/box/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 310
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->requestWindowFeature(I)Z

    .line 120
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    .line 124
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isS8"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isS8:Z

    .line 125
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isS9"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isS9:Z

    .line 126
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isARHD"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isARHD:Z

    .line 127
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isOP6"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    .line 128
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isICE"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isICE:Z

    .line 129
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isSupportedDevice"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isSupportedDevice:Z

    .line 130
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isNightly"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isNightly:Z

    .line 131
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "licenseRating"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/ice/box/MainActivity;->licenseRating:I

    .line 132
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersion"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/ice/box/MainActivity;->currentRomVersion:I

    const-string p1, "ICEDEBUG"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentRomVersion "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/ice/box/MainActivity;->currentRomVersion:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localStableVersionText"

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ice/box/MainActivity;->currentRomVersionText:Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersion"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/ice/box/MainActivity;->onlineRomVersion:I

    .line 136
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineStableVersionText"

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ice/box/MainActivity;->onlineRomVersionText:Ljava/lang/String;

    .line 137
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "localNightlyVersion"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/ice/box/MainActivity;->nightliesOfflineCurrentRevision:I

    .line 138
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "onlineNightlyVersion"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/ice/box/MainActivity;->nightliesOnlineCurrentRevision:I

    .line 139
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "nightliesChangelog"

    const-string v3, ""

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/ice/box/MainActivity;->nightliesChangelog:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isInstalledPro"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isInstalledPro:Z

    .line 141
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isInstalledDonation"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isInstalledDonation:Z

    .line 142
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isMonthly"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isMonthly:Z

    .line 143
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isYearly"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isYearly:Z

    .line 144
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isPremium2"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isPremium2:Z

    .line 145
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isPremium5"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isPremium5:Z

    .line 146
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isPremium10"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isPremium10:Z

    .line 147
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isFreeVersion"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isFreeVersion:Z

    .line 148
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isLegacyLicense"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isLegacyLicense:Z

    .line 149
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "isException"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/ice/box/MainActivity;->isException:Z

    .line 152
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "fullScreenAds"

    const-wide/16 v3, 0x0

    invoke-interface {p1, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/ice/box/MainActivity;->countFullScreenAds:J

    .line 153
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "check_app_updates"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ice/box/MainActivity;->checkForAppUpdate:Z

    .line 156
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "THEMEID"

    iget v3, p0, Lcom/ice/box/MainActivity;->mThemeId:I

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/MainActivity;->mThemeId:I

    .line 157
    iget p1, p0, Lcom/ice/box/MainActivity;->mThemeId:I

    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->setTheme(I)V

    .line 160
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    const-string v1, "updates"

    invoke-virtual {p1, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/ice/box/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/ice/box/MainActivity$1;-><init>(Lcom/ice/box/MainActivity;)V

    .line 161
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    const-string p1, "ICEDEBUG"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "token "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v3

    invoke-virtual/range {v3 .. v3}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v1, "hbm_autostart"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 175
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ice/box/services/LightSensorService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enabled"

    .line 176
    iget-object v3, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v4, "hbm_autostart"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sticky"

    .line 177
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 180
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/ice/box/services/LightSensorService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enabled"

    .line 181
    iget-object v3, p0, Lcom/ice/box/MainActivity;->sharedPref:Landroid/content/SharedPreferences;

    const-string v4, "hbm_autostart"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sticky"

    const/4 v3, 0x2

    .line 182
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 189
    :cond_1
    :goto_0
    new-instance p1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-direct {p1, p0}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ice/box/MainActivity;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    const p1, 0x7f0c001b

    .line 190
    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->setContentView(I)V

    const p1, 0x7f0900fe

    .line 191
    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iput-object p1, p0, Lcom/ice/box/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 192
    iget-object p1, p0, Lcom/ice/box/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const p1, 0x7f0900ad

    .line 193
    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/NavigationView;

    iput-object v1, p0, Lcom/ice/box/MainActivity;->navigationView:Landroid/support/design/widget/NavigationView;

    const v1, 0x7f090058

    .line 194
    invoke-virtual {p0, v1}, Lcom/ice/box/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ice/box/helpers/MyDrawerLayout;

    iput-object v1, p0, Lcom/ice/box/MainActivity;->drawer:Lcom/ice/box/helpers/MyDrawerLayout;

    .line 195
    new-instance v1, Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v5, p0, Lcom/ice/box/MainActivity;->drawer:Lcom/ice/box/helpers/MyDrawerLayout;

    iget-object v6, p0, Lcom/ice/box/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v7, 0x7f1000d6

    const v8, 0x7f1000d5

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    .line 197
    iget-object v3, p0, Lcom/ice/box/MainActivity;->drawer:Lcom/ice/box/helpers/MyDrawerLayout;

    invoke-virtual {v3, v1}, Lcom/ice/box/helpers/MyDrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 198
    invoke-virtual/range {v1 .. v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 199
    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/NavigationView;

    if-eqz p1, :cond_2

    .line 201
    invoke-virtual {p1, p0}, Landroid/support/design/widget/NavigationView;->setNavigationItemSelectedListener(Landroid/support/design/widget/NavigationView$OnNavigationItemSelectedListener;)V

    .line 203
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->checkWriteSettings()V

    .line 206
    sget-boolean v1, Lcom/ice/box/MainActivity;->isICE:Z

    const v3, 0x7f100023

    if-eqz v1, :cond_4

    .line 207
    sget-boolean v1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz v1, :cond_3

    const-string v1, "OP_Home"

    .line 208
    invoke-virtual {p0, v3}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "Home"

    .line 210
    invoke-virtual {p0, v3}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 212
    :cond_4
    sget-boolean v1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz v1, :cond_5

    const-string v1, "OP_HBM"

    .line 213
    invoke-virtual {p0, v3}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_5
    sget-boolean v1, Lcom/ice/box/MainActivity;->isSupportedDevice:Z

    if-eqz v1, :cond_7

    .line 217
    sget-boolean v1, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v1, :cond_6

    const-string v1, "Home"

    .line 218
    invoke-virtual {p0, v3}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "Unsupported_ROM_Home"

    .line 220
    invoke-virtual {p0, v3}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string v1, "Unsupported_Device_Home"

    .line 223
    invoke-virtual {p0, v3}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_1
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/NavigationView;

    invoke-virtual/range {v1 .. v1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doAdvertising()V

    .line 230
    sget-boolean p0, Lcom/ice/box/MainActivity;->isICE:Z

    const v1, 0x7f0900a5

    const v3, 0x7f090026

    const v4, 0x7f0900ac

    const v5, 0x7f0900a8

    if-eqz p0, :cond_9

    sget-boolean p0, Lcom/ice/box/MainActivity;->isS8:Z

    if-nez p0, :cond_8

    sget-boolean p0, Lcom/ice/box/MainActivity;->isS9:Z

    if-eqz p0, :cond_9

    .line 231
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const v2, 0x7f09009f

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const v1, 0x7f0900a2

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const v1, 0x7f0900a1

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const v1, 0x7f0900a4

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const v1, 0x7f0900a3

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const p1, 0x7f0900a0

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 241
    :cond_9
    sget-boolean p0, Lcom/ice/box/MainActivity;->isICE:Z

    const v6, 0x7f0900a6

    if-eqz p0, :cond_a

    sget-boolean p0, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p0, :cond_a

    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 243
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 245
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const v0, 0x7f0900a9

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const-string v0, "onePlus6"

    const/16 v3, 0x1e

    const/16 v4, 0x1f

    invoke-static {v0, v3, v4, v2}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const-string p1, "onePlus6"

    const/16 v0, 0x2e

    const/16 v1, 0x22

    invoke-static {p1, v0, v1, v2}, Lcom/ice/box/MainActivity;->isEnvironmentHigherThanOrEqual(Ljava/lang/String;III)Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 248
    :cond_a
    sget-boolean p0, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p0, :cond_b

    .line 249
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    const v1, 0x7f09009e

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/support/design/widget/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {p0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p1, 0x7f090070

    .line 319
    invoke-virtual {p0, p1}, Lcom/ice/box/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 320
    iget v0, p0, Lcom/ice/box/MainActivity;->mThemeId:I

    const v1, 0x7f110125

    if-ne v0, v1, :cond_1

    .line 322
    :try_start_0
    sget-boolean v0, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080080

    .line 323
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f08007f

    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "ICEDEBUG"

    .line 328
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz v0, :cond_2

    const v0, 0x7f080081

    .line 333
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f08007e

    .line 335
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p1, "ICEDEBUG"

    .line 338
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onDestroy()V
    .locals 4

    .line 647
    invoke-super/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 648
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 649
    invoke-interface/range {v0 .. v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "fullScreenAds"

    iget-wide v2, p0, Lcom/ice/box/MainActivity;->countFullScreenAds:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x0

    .line 650
    sput-boolean p0, Lcom/ice/box/MainActivity;->isAppRunning:Z

    return-void
.end method

.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 383
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f090026

    const/4 v1, 0x1

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    .line 502
    sput-boolean p1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    goto/16 :goto_0

    .line 405
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 406
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    .line 407
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    const v0, 0x7f1000d3

    if-eqz p1, :cond_0

    const-string p1, "OP_UI"

    .line 408
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "UI"

    .line 410
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 497
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 498
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "SysInfo"

    const v0, 0x7f1000d2

    .line 499
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 493
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "Settings"

    const v0, 0x7f10001e

    .line 494
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 434
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 435
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "OP_Remap"

    const v0, 0x7f1000ce

    .line 436
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 424
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 425
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    .line 426
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    const v0, 0x7f1000cd

    if-eqz p1, :cond_1

    const-string p1, "OP_Misc"

    .line 427
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "Misc"

    .line 429
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 487
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 488
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "License"

    const v0, 0x7f100108

    .line 489
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 415
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "OP_HBM"

    const v0, 0x7f1000cb

    .line 416
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 455
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    .line 456
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    const v0, 0x7f10010c

    if-eqz p1, :cond_2

    const-string p1, "OP_ColorsStatusbar"

    .line 457
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "ColorsStatusbar"

    .line 460
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :pswitch_8
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 476
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "ColorsQuickSettings"

    const v0, 0x7f1000ee

    .line 477
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 482
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "ColorsNotification"

    const v0, 0x7f1000e2

    .line 483
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 465
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 466
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "ColorsNavBar"

    const v0, 0x7f1000d4

    .line 467
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 470
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 471
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "ColorsHeader"

    const v0, 0x7f10008a

    .line 472
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 450
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "ColorsBackupRestore"

    const/high16 v0, 0x7f100000

    .line 451
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :pswitch_d
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 420
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    const-string p1, "Buttons"

    const v0, 0x7f1000c9

    .line 421
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :pswitch_e
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    .line 386
    sget-boolean p1, Lcom/ice/box/MainActivity;->isICE:Z

    const v0, 0x7f100023

    if-eqz p1, :cond_4

    .line 387
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    if-eqz p1, :cond_3

    const-string p1, "OP_Home"

    .line 388
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "Home"

    .line 390
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_4
    sget-boolean p1, Lcom/ice/box/MainActivity;->isSupportedDevice:Z

    if-eqz p1, :cond_6

    .line 394
    sget-boolean p1, Lcom/ice/box/MainActivity;->isARHD:Z

    if-eqz p1, :cond_5

    const-string p1, "Home"

    .line 395
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p1, "Unsupported_ROM_Home"

    .line 397
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p1, "Unsupported_Device_Home"

    .line 400
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/MainActivity;->doInterstitialAd()V

    .line 441
    sput-boolean v1, Lcom/ice/box/MainActivity;->isFragmentOpen:Z

    .line 442
    sget-boolean p1, Lcom/ice/box/MainActivity;->isOP6:Z

    const v0, 0x7f1000c8

    if-eqz p1, :cond_8

    const-string p1, "OP_App"

    .line 443
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string p1, "App"

    .line 445
    invoke-virtual {p0, v0}, Lcom/ice/box/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ice/box/MainActivity;->switchFragment(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :goto_0
    iget-object p0, p0, Lcom/ice/box/MainActivity;->drawer:Lcom/ice/box/helpers/MyDrawerLayout;

    const p1, 0x800003

    invoke-virtual {p0, p1}, Lcom/ice/box/helpers/MyDrawerLayout;->closeDrawer(I)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f09009e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 346
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09000e

    if-eq v0, v1, :cond_1

    const v1, 0x7f090012

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/MainActivity;->finish()V

    .line 353
    new-instance v0, Landroid/os/Handler;

    invoke-direct/range {v0 .. v0}, Landroid/os/Handler;-><init>()V

    .line 354
    new-instance v1, Lcom/ice/box/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/ice/box/MainActivity$3;-><init>(Lcom/ice/box/MainActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 348
    :cond_1
    new-instance v0, Lcom/ice/box/helpers/ChangeLog;

    invoke-direct {v0, p0}, Lcom/ice/box/helpers/ChangeLog;-><init>(Landroid/content/Context;)V

    .line 349
    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/ChangeLog;->getFullLogDialog()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/app/AlertDialog;->show()V

    .line 364
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 5

    .line 257
    invoke-super/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 258
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isNightly"

    const/4 v2, 0x0

    .line 259
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 260
    new-instance v1, Landroid/os/Handler;

    invoke-direct/range {v1 .. v1}, Landroid/os/Handler;-><init>()V

    .line 261
    new-instance v2, Lcom/ice/box/MainActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/ice/box/MainActivity$2;-><init>(Lcom/ice/box/MainActivity;Z)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    new-instance v0, Lcom/ice/box/helpers/ChangeLog;

    invoke-direct {v0, p0}, Lcom/ice/box/helpers/ChangeLog;-><init>(Landroid/content/Context;)V

    .line 279
    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/ChangeLog;->firstRun()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/ChangeLog;->getLogDialog()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
