.class public Lcom/android/settings/OxygenEncryptionInterstitial;
.super Lcom/android/settings/SettingsActivity;
.source "OxygenEncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;
    }
.end annotation


# static fields
.field private static final CHOOSE_LOCK_REQUEST:I = 0x64

.field protected static final EXTRA_PASSWORD_QUALITY:Ljava/lang/String; = "extra_password_quality"

.field public static final EXTRA_REQUIRE_PASSWORD:Ljava/lang/String; = "extra_require_password"

.field protected static final EXTRA_UNLOCK_METHOD_INTENT:Ljava/lang/String; = "extra_unlock_method_intent"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/OxygenEncryptionInterstitial;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings/EncryptionInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/OxygenEncryptionInterstitial;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "requirePasswordDefault"    # Z
    .param p3, "unlockMethodIntent"    # Landroid/content/Intent;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/EncryptionInterstitial;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string/jumbo v1, "extra_password_quality"

    .line 67
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 69
    const-string/jumbo v1, ":settings:show_fragment_title_resid"

    const v2, 0x7f0f1009

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 70
    const-string/jumbo v1, "extra_require_password"

    .line 67
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "extra_unlock_method_intent"

    .line 67
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 56
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 62
    const-class v0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v1, 0x7f0a032f

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenEncryptionInterstitial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 79
    return-void
.end method
