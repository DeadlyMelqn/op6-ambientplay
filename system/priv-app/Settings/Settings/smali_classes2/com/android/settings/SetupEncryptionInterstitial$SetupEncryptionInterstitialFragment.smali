.class public Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;
.source "SetupEncryptionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupEncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createHeaderView()Landroid/widget/TextView;
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 174
    const v2, 0x7f0401b8

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 173
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    .local v0, "message":Landroid/widget/TextView;
    return-object v0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    move-object v0, p2

    .line 181
    check-cast v0, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;

    .line 182
    .local v0, "layout":Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    return-object v1
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 188
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 191
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 140
    invoke-super {p0, p1, p2}, Lcom/android/settings/EncryptionInterstitial$EncryptionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v2, p1

    .line 142
    check-cast v2, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;

    .line 143
    .local v2, "layout":Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 144
    const v6, 0x7f0d006b

    .line 143
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setDividerInset(I)V

    .line 145
    const v5, 0x7f0202ab

    .line 146
    const v6, 0x7f02044d

    .line 145
    invoke-virtual {v2, v5, v6}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setIllustration(II)V

    .line 148
    const v5, 0x7f02030c

    invoke-virtual {v2, v5}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setBackgroundTile(I)V

    .line 150
    invoke-virtual {v2}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v3

    .line 151
    .local v3, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v3, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 152
    invoke-virtual {v3}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v4

    .line 153
    .local v4, "nextButton":Landroid/widget/Button;
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    const v5, 0x7f0f1009

    invoke-virtual {v2, v5}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->setHeaderText(I)V

    .line 158
    invoke-virtual {v2}, Lcom/android/setupwizardlib/SetupWizardPreferenceLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v1

    .line 159
    .local v1, "headText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0392

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 162
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 163
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 168
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-void
.end method
