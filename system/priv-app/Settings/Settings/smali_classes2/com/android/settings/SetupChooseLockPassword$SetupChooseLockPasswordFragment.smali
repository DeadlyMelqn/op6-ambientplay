.class public Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

.field private mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    const v0, 0x7f0401b2

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    iput-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 148
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 149
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v0
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 186
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->handleNext()V

    .line 191
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1, p2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-static {v1}, Lcom/android/setupwizardlib/util/SystemBarHelper;->setImeInsetView(Landroid/view/View;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v2, 0x7f0a017a

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    .local v0, "headText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0392

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    return-void
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 178
    return-void
.end method
