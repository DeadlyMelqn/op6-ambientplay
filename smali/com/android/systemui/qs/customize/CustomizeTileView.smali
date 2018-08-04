.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mAppLabel:Landroid/widget/TextView;

.field private mLabelMinLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/plugins/qs/QSIconView;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    .line 37
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabelMinLines:I

    .line 38
    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 40
    return-void
.end method

.method public getAppLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    return-void
.end method

.method public setShowAppLabel(Z)V
    .locals 2
    .param p1, "showAppLabel"    # Z

    .prologue
    .line 43
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 45
    return-void

    .line 43
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
