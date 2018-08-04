.class public Lcom/android/systemui/tuner/PowerNotificationControlsFragment;
.super Landroid/app/Fragment;
.source "PowerNotificationControlsFragment.java"


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/tuner/PowerNotificationControlsFragment;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private isEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_importance_slider"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 90
    .local v0, "setting":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const v0, 0x7f0d00b0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x188

    const/4 v2, 0x0

    .line 84
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x188

    const/4 v2, 0x1

    .line 77
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 79
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    const v3, 0x7f0a027c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "switchBar":Landroid/view/View;
    const v3, 0x1020040

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 52
    .local v2, "switchWidget":Landroid/widget/Switch;
    const v3, 0x7f0a0280

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    .local v1, "switchText":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const v3, 0x7f1104a0

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v3, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment$1;-><init>(Lcom/android/systemui/tuner/PowerNotificationControlsFragment;Landroid/widget/Switch;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void

    .line 56
    :cond_0
    const v3, 0x7f11049f

    invoke-virtual {p0, v3}, Lcom/android/systemui/tuner/PowerNotificationControlsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
