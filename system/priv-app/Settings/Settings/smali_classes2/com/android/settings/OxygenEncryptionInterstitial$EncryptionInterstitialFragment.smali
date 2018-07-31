.class public Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OxygenEncryptionInterstitial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenEncryptionInterstitial;
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
    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRequirePasswordState(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    .line 268
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x30

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    .line 195
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 272
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v6, 0x7f08008b

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->addPreferencesFromResource(I)V

    .line 107
    const-string/jumbo v6, "encrypt_dont_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 108
    const v7, 0x7f0a0016

    .line 107
    invoke-virtual {v6, v7}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 110
    const-string/jumbo v6, "encrypt_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    .line 111
    const-string/jumbo v6, "encrypt_dont_require_password"

    invoke-virtual {p0, v6}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 113
    const-string/jumbo v7, "for_fingerprint"

    .line 112
    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 114
    .local v2, "forFingerprint":Z
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 115
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "extra_password_quality"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    .line 116
    const-string/jumbo v6, "extra_unlock_method_intent"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    .line 120
    iget v6, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    sparse-switch v6, :sswitch_data_0

    .line 137
    if-eqz v2, :cond_2

    .line 138
    const v5, 0x7f0f1010

    .line 140
    .local v5, "msgId":I
    :goto_0
    const v1, 0x7f0f1013

    .line 141
    .local v1, "enableId":I
    const v0, 0x7f0f1016

    .line 144
    .local v0, "disableId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 145
    const v7, 0x7f040082

    const/4 v8, 0x0

    .line 144
    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 146
    .local v4, "message":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 147
    invoke-virtual {p0, v4}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setHeaderView(Landroid/view/View;)V

    .line 149
    iget-object v6, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 151
    iget-object v6, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mDontRequirePasswordToDecrypt:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 154
    const-string/jumbo v7, "extra_require_password"

    const/4 v8, 0x1

    .line 153
    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 155
    return-void

    .line 122
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v4    # "message":Landroid/widget/TextView;
    .end local v5    # "msgId":I
    :sswitch_0
    if-eqz v2, :cond_0

    .line 123
    const v5, 0x7f0f100f

    .line 125
    .restart local v5    # "msgId":I
    :goto_2
    const v1, 0x7f0f1012

    .line 126
    .restart local v1    # "enableId":I
    const v0, 0x7f0f1015

    .line 127
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 124
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v5    # "msgId":I
    :cond_0
    const v5, 0x7f0f100c

    .restart local v5    # "msgId":I
    goto :goto_2

    .line 130
    .end local v5    # "msgId":I
    :sswitch_1
    if-eqz v2, :cond_1

    .line 131
    const v5, 0x7f0f100e

    .line 133
    .restart local v5    # "msgId":I
    :goto_3
    const v1, 0x7f0f1011

    .line 134
    .restart local v1    # "enableId":I
    const v0, 0x7f0f1014

    .line 135
    .restart local v0    # "disableId":I
    goto :goto_1

    .line 132
    .end local v0    # "disableId":I
    .end local v1    # "enableId":I
    .end local v5    # "msgId":I
    :cond_1
    const v5, 0x7f0f100b

    .restart local v5    # "msgId":I
    goto :goto_3

    .line 139
    .end local v5    # "msgId":I
    :cond_2
    const v5, 0x7f0f100d

    .restart local v5    # "msgId":I
    goto :goto_0

    .line 120
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

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 262
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 225
    :pswitch_0
    iget v4, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mRequestedPasswordQuality:I

    sparse-switch v4, :sswitch_data_0

    .line 236
    const v3, 0x7f0f1019

    .line 237
    .local v3, "titleId":I
    const v2, 0x7f0f101c

    .line 243
    .local v2, "messageId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 245
    const/4 v5, -0x1

    .line 243
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 247
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    const-string/jumbo v0, ""

    .line 254
    .local v0, "exampleAccessibility":Ljava/lang/CharSequence;
    :goto_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 256
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {p0, v2, v5}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 258
    const v5, 0x104000a

    .line 254
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 259
    const/high16 v5, 0x1040000

    .line 254
    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 227
    .end local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "messageId":I
    .end local v3    # "titleId":I
    :sswitch_0
    const v3, 0x7f0f1018

    .line 228
    .restart local v3    # "titleId":I
    const v2, 0x7f0f101b

    .line 229
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 232
    .end local v2    # "messageId":I
    .end local v3    # "titleId":I
    :sswitch_1
    const v3, 0x7f0f1017

    .line 233
    .restart local v3    # "titleId":I
    const v2, 0x7f0f101a

    .line 234
    .restart local v2    # "messageId":I
    goto :goto_0

    .line 251
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 251
    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "exampleAccessibility":Ljava/lang/CharSequence;
    goto :goto_1

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 225
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    move-object v0, p2

    .line 174
    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 175
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 203
    :cond_0
    const-string/jumbo v2, "encrypt_require_password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 205
    .local v0, "accEn":Z
    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 206
    invoke-direct {p0, v3}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 207
    invoke-virtual {p0, v4}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->showDialog(I)V

    .line 216
    .end local v0    # "accEn":Z
    :goto_0
    return v4

    .line 209
    .restart local v0    # "accEn":Z
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    goto :goto_0

    .line 213
    .end local v0    # "accEn":Z
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setRequirePasswordState(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->startLockIntent()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    .line 160
    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 161
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    new-instance v1, Lcom/android/settings/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0201fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 168
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-void
.end method

.method protected startLockIntent()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_require_password"

    iget-boolean v2, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mPasswordRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->mUnlockMethodIntent:Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    invoke-static {}, Lcom/android/settings/OxygenEncryptionInterstitial;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no unlock intent to start"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->finish()V

    goto :goto_0
.end method
