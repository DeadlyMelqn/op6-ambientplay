.class public Lcom/android/systemui/qs/customize/CustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileView;
.source "CustomizeTileView.java"


# instance fields
.field private mAppLabel:Landroid/widget/TextView;

.field private mLabelMaxLines:I

.field private mLabelMinLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/plugins/qs/QSIconView;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 40
    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMinLines()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabelMinLines:I

    .line 47
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabelMaxLines:I

    .line 49
    const v0, 0x7f0a003e

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 54
    return-void
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/plugins/qs/QSTile$State;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    return-void
.end method

.method public setAppLabel(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setShowAppLabel(Z)V
    .locals 2
    .param p1, "showAppLabel"    # Z

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mAppLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabelMinLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizeTileView;->mLabelMaxLines:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 65
    :cond_0
    return-void

    .line 57
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
