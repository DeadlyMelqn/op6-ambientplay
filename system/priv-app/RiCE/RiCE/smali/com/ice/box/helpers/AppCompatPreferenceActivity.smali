.class public abstract Lcom/ice/box/helpers/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppCompatPreferenceActivity.java"


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    return-object p0
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    return-object p0
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 0

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 82
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 94
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 70
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onPostResume()V

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 88
    invoke-super/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 76
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 60
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/Toolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/helpers/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method
