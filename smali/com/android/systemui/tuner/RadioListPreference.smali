.class public Lcom/android/systemui/tuner/RadioListPreference;
.super Lcom/android/systemui/tuner/CustomListPreference;
.source "RadioListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;
    }
.end annotation


# instance fields
.field private mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSummary:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tuner/RadioListPreference;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/tuner/RadioListPreference;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_tuner_RadioListPreference_2612(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0
    .param p0, "d"    # Landroid/app/Dialog;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/tuner/CustomListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 0
    .param p1, "positiveResult"    # Z

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogClosed(Z)V

    .line 101
    return-void
.end method

.method protected onDialogCreated(Landroid/app/DialogFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 6
    .param p1, "fragment"    # Landroid/app/DialogFragment;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 68
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1030223

    invoke-direct {v0, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 69
    .local v0, "d":Landroid/app/Dialog;
    const v4, 0x102017d

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    .line 70
    .local v2, "t":Landroid/widget/Toolbar;
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f0a0093

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/tuner/RadioListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x101030b

    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v4, Lcom/android/systemui/tuner/-$Lambda$ly57dRawtR5LaF2KOH8zt99ex04;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Lcom/android/systemui/tuner/-$Lambda$ly57dRawtR5LaF2KOH8zt99ex04;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v1, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;

    invoke-direct {v1}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;-><init>()V

    .line 78
    .local v1, "f":Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;
    invoke-virtual {v1, p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->setPreference(Lcom/android/systemui/tuner/RadioListPreference;)V

    .line 79
    invoke-static {v3}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 81
    const v5, 0x1020002

    .line 79
    invoke-virtual {v4, v5, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 83
    return-object v0
.end method

.method protected onDialogStateRestored(Landroid/app/DialogFragment;Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/DialogFragment;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0a0093

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/tuner/CustomListPreference;->onDialogStateRestored(Landroid/app/DialogFragment;Landroid/app/Dialog;Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, "view":Landroid/view/View;
    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;

    .line 93
    .local v0, "radioFragment":Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->setPreference(Lcom/android/systemui/tuner/RadioListPreference;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 49
    iput-object p2, p0, Lcom/android/systemui/tuner/RadioListPreference;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 50
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/systemui/tuner/CustomListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    .line 56
    return-void
.end method
