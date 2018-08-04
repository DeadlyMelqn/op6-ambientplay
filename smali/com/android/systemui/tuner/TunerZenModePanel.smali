.class public Lcom/android/systemui/tuner/TunerZenModePanel;
.super Landroid/widget/LinearLayout;
.source "TunerZenModePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerZenModePanel$1;
    }
.end annotation


# instance fields
.field private mButtons:Landroid/view/View;

.field private mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

.field private mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mDone:Landroid/view/View;

.field private mDoneListener:Landroid/view/View$OnClickListener;

.field private mEditing:Z

.field private mHeaderSwitch:Landroid/view/View;

.field private mMoreSettings:Landroid/view/View;

.field private final mUpdate:Ljava/lang/Runnable;

.field private mZenMode:I

.field private mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/tuner/TunerZenModePanel;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/tuner/TunerZenModePanel;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->updatePanel()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 141
    new-instance v0, Lcom/android/systemui/tuner/TunerZenModePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerZenModePanel$1;-><init>(Lcom/android/systemui/tuner/TunerZenModePanel;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    .line 52
    return-void
.end method

.method private postUpdatePanel()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/TunerZenModePanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mUpdate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/tuner/TunerZenModePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    return-void
.end method

.method private updatePanel()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 135
    iget v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 136
    .local v0, "zenOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const v4, 0x1020017

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 137
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/volume/ZenModePanel;->setVisibility(I)V

    .line 138
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void

    .line 135
    .end local v0    # "zenOn":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "zenOn":Z
    goto :goto_0

    :cond_1
    move v1, v3

    .line 137
    goto :goto_1

    :cond_2
    move v2, v3

    .line 138
    goto :goto_2
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 5
    .param p1, "zenModeController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    const v4, 0x7f0a02b2

    const/4 v3, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 56
    invoke-virtual {p0, v4}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    const v2, 0x7f1103d9

    .line 59
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const v1, 0x7f0a02f2

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/ZenModePanel;

    iput-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    .line 62
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 63
    const v1, 0x7f0a02b0

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    .line 64
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    const v2, 0x102001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1103e4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mButtons:Landroid/view/View;

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    .line 68
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1103dc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 71
    invoke-virtual {p0, v4}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 72
    .local v0, "detail_header":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    const v1, 0x7f0a00cb

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mHeaderSwitch:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 92
    iget v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    if-nez v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "DndFavoriteZen"

    .line 94
    const/4 v3, 0x3

    .line 93
    invoke-static {v1, v2, v3}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    .line 95
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v2, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    const-string/jumbo v3, "TunerZenModePanel"

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iput v3, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    .line 99
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    const-string/jumbo v2, "TunerZenModePanel"

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mMoreSettings:Landroid/view/View;

    if-ne p1, v1, :cond_3

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDone:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 107
    iput-boolean v3, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 108
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/TunerZenModePanel;->setVisibility(I)V

    .line 109
    iget-object v1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDoneListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mEditing:Z

    .line 81
    return-void
.end method

.method public setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V
    .locals 1
    .param p1, "zenPanelCallback"    # Lcom/android/systemui/volume/ZenModePanel$Callback;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mCallback:Lcom/android/systemui/volume/ZenModePanel$Callback;

    .line 85
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenModePanel:Lcom/android/systemui/volume/ZenModePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/ZenModePanel;->setCallback(Lcom/android/systemui/volume/ZenModePanel$Callback;)V

    .line 86
    return-void
.end method

.method public setDoneListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mDoneListener:Landroid/view/View$OnClickListener;

    .line 132
    return-void
.end method

.method public setZenState(I)V
    .locals 0
    .param p1, "zenMode"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/systemui/tuner/TunerZenModePanel;->mZenMode:I

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerZenModePanel;->postUpdatePanel()V

    .line 120
    return-void
.end method
