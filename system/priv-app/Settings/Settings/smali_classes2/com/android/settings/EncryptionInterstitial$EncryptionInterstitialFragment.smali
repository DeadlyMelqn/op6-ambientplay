.class public Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/EncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncryptionInterstitialFragment"
.end annotation


# static fields
.field private static final ACCESSIBILITY_WARNING_DIALOG:I = 0x1

.field private static final KEY_ENCRYPT_DONT_REQUIRE_PASSWORD:Ljava/lang/String; = "encrypt_dont_require_password"

.field private static final KEY_ENCRYPT_REQUIRE_PASSWORD:Ljava/lang/String; = "encrypt_require_password"


# instance fields
.field private mDontRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

.field private mPasswordRequired:Z

.field private mRequestedPasswordQuality:I

.field private mRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

.field private mUnlockMethodIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 237
    return-void
.end method


# virtual methods
.method protected createHeaderView()Landroid/widget/TextView;
    .locals 5

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 143
    const v2, 0x7f040082

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 142
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    .local v0, "message":Landroid/widget/TextView;
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x30

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    .line 164
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 241
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 242
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v6, 0x7f08008b

    invoke-virtual {p0, v6}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->addPreferencesFromResource(I)V

    .line 92
    const-string/jumbo v6, "encrypt_dont_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 93
    const v7, 0x7f0a0016

    .line 92
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 95
    const-string/jumbo v6, "encrypt_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    .line 96
    const-string/jumbo v6, "encrypt_dont_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 98
    const-string/jumbo v7, "for_fingerprint"

    .line 97
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 99
    .local v2, "forFingerprint":Z
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 100
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "extra_password_quality"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    .line 101
    const-string/jumbo v6, "extra_unlock_method_intent"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    .line 105
    iget v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    sparse-switch v6, :sswitch_data_0

    .line 122
    if-eqz v2, :cond_2

    .line 123
    const v5, 0x7f0f1010

    .line 125
    .local v5, "msgId":I
    :goto_0
    const v1, 0x7f0f1013

    .line 126
    .local v1, "enableId":I
    const v0, 0x7f0f1016

    .line 129
    .local v0, "disableId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->createHeaderView()Landroid/widget/TextView;

    move-result-object v4

    .line 130
    .local v4, "message":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 131
    invoke-virtual {p0, v4}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setHeaderView(Landroid/view/View;)V

    .line 133
    iget-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 135
    iget-object v6, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 138
    const-string/jumbo v7, "extra_require_password"

    const/4 v8, 0x1

    .line 137
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 139
    return-void

    .line 107
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v4    # "message":Landroid/widget/TextView;
    .end local v5    # "msgId":I
    :sswitch_0
    if-eqz v2, :cond_0

    .line 108
    const v5, 0x7f0f100f

    .line 110
    .restart local v5    # "msgId":I
    :goto_2
    const v1, 0x7f0f1012

    .line 111
    .restart local v1    # "enableId":I
    const v0, 0x7f0f1015

    .line 112
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 109
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v5    # "msgId":I
    :cond_0
    const v5, 0x7f0f100c

    .restart local v5    # "msgId":I
    goto :goto_2

    .line 115
    .end local v5    # "msgId":I
    :sswitch_1
    if-eqz v2, :cond_1

    .line 116
    const v5, 0x7f0f100e

    .line 118
    .restart local v5    # "msgId":I
    :goto_3
    const v1, 0x7f0f1011

    .line 119
    .restart local v1    # "enableId":I
    const v0, 0x7f0f1014

    .line 120
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 117
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v5    # "msgId":I
    :cond_1
    const v5, 0x7f0f100b

    .restart local v5    # "msgId":I
    goto :goto_3

    .line 124
    .end local v5    # "msgId":I
    :cond_2
    const v5, 0x7f0f100d

    .restart local v5    # "msgId":I
    goto :goto_0

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 231
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 194
    :pswitch_0
    iget v4, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    sparse-switch v4, :sswitch_data_0

    .line 205
    const v3, 0x7f0f1019

    .line 206
    .local v3, "titleId":I
    const v2, 0x7f0f101c

    .line 212
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 214
    const/4 v5, -0x1

    .line 212
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    const-string/jumbo v0, ""

    .line 223
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 225
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 223
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 227
    const v5, 0x104000a

    .line 223
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 228
    const/high16 v5, 0x1040000

    .line 223
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 196
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v3    # "titleId":I
    :sswitch_0
    const v3, 0x7f0f1018

    .line 197
    .restart local v3    # "titleId":I
    const v2, 0x7f0f101b

    .line 198
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 201
    .end local v2    # "messageId":I
    .end local v3    # "titleId":I
    :sswitch_1
    const v3, 0x7f0f1017

    .line 202
    .restart local v3    # "titleId":I
    const v2, 0x7f0f101a

    .line 203
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 220
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 220
    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 168
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, "encrypt_require_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 174
    .local v0, "accEn":Z
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 175
    invoke-direct {p0, v4}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 176
    invoke-virtual {p0, v3}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->showDialog(I)V

    .line 185
    .end local v0    # "accEn":Z
    :goto_0
    return v3

    .line 178
    .restart local v0    # "accEn":Z
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    goto :goto_0

    .line 182
    .end local v0    # "accEn":Z
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    goto :goto_0
.end method

.method protected startLockIntent()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_require_password"

    iget-boolean v2, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v0, p0, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/android/settings/EncryptionInterstitial;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    goto :goto_0
.end method
