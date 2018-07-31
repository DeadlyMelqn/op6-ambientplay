.class public Lcom/android/settings/OxygenSetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;
.source "OxygenSetupEncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OxygenSetupEncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    move-object v0, p2

    .line 107
    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 108
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/android/settings/OxygenEncryptionInterstitial$EncryptionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 92
    .local v0, "layout":Lcom/android/setupwizardlib/GlifPreferenceLayout;
    new-instance v1, Lcom/android/settings/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 94
    const v2, 0x7f0d006d

    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerInset(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/OxygenSetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0201fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 97
    const v1, 0x7f0f1009

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setHeaderText(I)V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/OxygenSetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 102
    return-void
.end method
