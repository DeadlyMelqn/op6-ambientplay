.class public Lcom/android/settings/applications/LayoutPreference;
.super Landroid/support/v7/preference/Preference;
.source "LayoutPreference.java"


# instance fields
.field private final mClickListener:Landroid/view/View$OnClickListener;

.field mRootView:Landroid/view/View;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I

    .prologue
    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v3, Lcom/android/settings/applications/-$Lambda$t0r0Yza4fBUmQz35I0aG1dSmA4s;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lcom/android/settings/applications/-$Lambda$t0r0Yza4fBUmQz35I0aG1dSmA4s;-><init>(BLjava/lang/Object;)V

    iput-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 43
    sget-object v3, Lcom/android/internal/R$styleable;->Preference:[I

    .line 42
    invoke-virtual {p1, p2, v3, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 46
    .local v1, "layoutResource":I
    if-nez v1, :cond_0

    .line 47
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "LayoutPreference requires a layout to be defined"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/LayoutPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 51
    const/4 v4, 0x0

    .line 50
    invoke-virtual {v3, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, "view":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/settings/applications/LayoutPreference;->setView(Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Lcom/android/settings/applications/-$Lambda$t0r0Yza4fBUmQz35I0aG1dSmA4s;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/-$Lambda$t0r0Yza4fBUmQz35I0aG1dSmA4s;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 61
    invoke-direct {p0, p2}, Lcom/android/settings/applications/LayoutPreference;->setView(Landroid/view/View;)V

    .line 62
    return-void
.end method

.method private setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 65
    const v1, 0x7f0400ad

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LayoutPreference;->setLayoutResource(I)V

    .line 66
    const v1, 0x7f0a00ba

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 67
    .local v0, "allDetails":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 68
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    .line 71
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/LayoutPreference;->setShouldDisableView(Z)V

    .line 72
    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_settings_applications_LayoutPreference_1235(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/LayoutPreference;->performClick(Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 76
    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/applications/LayoutPreference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/applications/LayoutPreference;->isSelectable()Z

    move-result v2

    .line 79
    .local v2, "selectable":Z
    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 80
    iget-object v3, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 82
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    .line 83
    .local v0, "layout":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 84
    iget-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 85
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 86
    iget-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/LayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 89
    return-void
.end method
