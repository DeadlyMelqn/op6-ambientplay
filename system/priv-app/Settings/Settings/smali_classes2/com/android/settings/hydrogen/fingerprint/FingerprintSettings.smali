.class public Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings;
.super Lcom/android/settings/SubSettings;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintPreference;,
        Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;,
        Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$LearnMoreSpan;
    }
.end annotation


# static fields
.field public static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings"

.field private static final LOCKOUT_DURATION:J = 0x7530L

.field protected static final RESULT_FINISHED:I = 0x1

.field protected static final RESULT_SKIP:I = 0x2

.field protected static final RESULT_TIMEOUT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FingerprintSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method

.method public static getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 814
    const-string/jumbo v5, "fingerprint"

    .line 813
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 815
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 816
    :cond_0
    const-string/jumbo v5, "FingerprintSettings"

    const-string/jumbo v6, "No fingerprint hardware detected!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-object v7

    .line 819
    :cond_1
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-direct {v2, p0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 820
    .local v2, "fingerprintPreference":Landroid/support/v7/preference/Preference;
    const-string/jumbo v5, "fingerprint_settings"

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 821
    const v5, 0x7f0f0707

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 822
    invoke-virtual {v3, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v4

    .line 823
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 825
    .local v1, "fingerprintCount":I
    :goto_0
    if-lez v1, :cond_3

    .line 826
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 828
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    .line 827
    const v7, 0x7f130004

    .line 826
    invoke-virtual {v5, v7, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 829
    const-class v5, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "clazz":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$1;

    invoke-direct {v5, p1, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$1;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 851
    return-object v2

    .line 823
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "fingerprintCount":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "fingerprintCount":I
    goto :goto_0

    .line 832
    :cond_3
    const v5, 0x7f0f070c

    .line 831
    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 833
    const-class v5, Lcom/android/settings/hydrogen/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SubSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 116
    .local v0, "modIntent":Landroid/content/Intent;
    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 122
    const-class v0, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings$FingerprintSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SubSettings;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v1, 0x7f0f0707

    invoke-virtual {p0, v1}, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 130
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/settings/hydrogen/fingerprint/FingerprintSettings;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method
