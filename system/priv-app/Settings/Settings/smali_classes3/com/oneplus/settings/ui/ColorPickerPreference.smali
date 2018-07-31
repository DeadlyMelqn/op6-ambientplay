.class public Lcom/oneplus/settings/ui/ColorPickerPreference;
.super Lcom/oneplus/settings/ui/CustomDialogPreference;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mColor:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultColor:Ljava/lang/String;

.field private mDefaultColors:[Ljava/lang/String;

.field private mDisabledCellColor:I

.field mImageView:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageText:Ljava/lang/CharSequence;

.field private mPalette:[Ljava/lang/String;

.field private mPaletteNamesResIds:[I

.field private mRippleEffectColor:I

.field private mTmpColor:Ljava/lang/String;

.field private mUseColorLabelAsSummary:Z

.field private mViews:[Landroid/view/View;

.field private mVisibility:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/ColorPickerPreference;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/ui/ColorPickerPreference;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/oneplus/settings/ui/ColorPickerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/ui/ColorPickerPreference;
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 80
    iput-boolean v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    .line 86
    const v1, 0x7f0400da

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setLayoutResource(I)V

    .line 87
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    .line 88
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 90
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c036a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 88
    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    .line 93
    sget-object v1, Lcom/android/settings/R$styleable;->ColorPickerPreference:[I

    .line 92
    invoke-virtual {p1, p2, v1, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 94
    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mRippleEffectColor:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 96
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDisabledCellColor:I

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    const v1, 0x7f0f035d

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setNeutralButtonText(I)V

    .line 102
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setNegativeButtonText(I)V

    .line 103
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setPositiveButtonText(I)V

    .line 104
    const v1, 0x7f040151

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDialogLayoutResource(I)V

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    .line 107
    iput-boolean v5, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iput-boolean v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    goto :goto_0
.end method

.method private isDefaultColor()Z
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const/4 v1, 0x1

    return v1

    .line 479
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 484
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private setTmpColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 445
    return-void
.end method

.method private updateSummary()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 448
    iget-boolean v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ltz v1, :cond_1

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v0, -0x1

    .line 451
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_3

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 452
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    .end local v0    # "index":I
    :cond_1
    :goto_1
    return-void

    .line 450
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "index":I
    goto :goto_0

    .line 453
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->isDefaultColor()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 454
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 455
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f03aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 457
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 459
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isThemeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 460
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f047c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 464
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isThemeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 465
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f04e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 470
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f04fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 473
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f035f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 6
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 242
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDisabledCellColor:I

    .line 242
    :goto_0
    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 244
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/content/res/ColorStateList;

    .line 245
    new-array v2, v4, [[I

    .line 246
    new-array v3, v5, [I

    aput-object v3, v2, v5

    .line 248
    new-array v3, v4, [I

    .line 249
    iget v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mRippleEffectColor:I

    aput v4, v3, v5

    .line 244
    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 252
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2

    .line 243
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getDefaultColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 320
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 323
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onSetColorPalette([Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->updateSummary()V

    .line 327
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v2, v3

    .line 329
    .local v2, "paletteLenght":I
    if-eqz v2, :cond_0

    .line 330
    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 332
    const v3, 0x7f0a02a6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_0
    new-array v1, v5, [I

    .local v1, "ids":[I
    fill-array-data v1, :array_0

    .line 346
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    .line 347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 348
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget v5, v1, v0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v3, v0

    .line 349
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/ui/ColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 351
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v5, v3, v0

    if-lez v2, :cond_1

    new-instance v3, Lcom/oneplus/settings/ui/ColorPickerPreference$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference$1;-><init>(Lcom/oneplus/settings/ui/ColorPickerPreference;)V

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 363
    goto :goto_1

    .line 367
    :cond_2
    const v3, 0x7f0a00dd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    .line 368
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 369
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessage(Ljava/lang/CharSequence;)V

    .line 374
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->init()V

    .line 375
    return-void

    .line 371
    :cond_3
    const v3, 0x7f0f035e

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessage(I)V

    goto :goto_2

    .line 336
    :array_0
    .array-data 4
        0x7f0a029e
        0x7f0a02a0
        0x7f0a02a2
        0x7f0a02a4
        0x7f0a02a7
        0x7f0a02a9
        0x7f0a02ab
        0x7f0a02ad
    .end array-data
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 133
    const v2, 0x7f0a0209

    .line 132
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    .line 134
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .local v0, "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 139
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 145
    .local v1, "showColor":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 146
    iget-boolean v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    .end local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_0
    return-void

    .line 142
    .restart local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .restart local v1    # "showColor":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onDialogClosed(I)V
    .locals 5
    .param p1, "whichButton"    # I

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    .line 381
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    const/4 v2, 0x1

    .line 382
    .local v2, "positiveResult":Z
    :goto_0
    const/4 v3, -0x3

    if-ne p1, v3, :cond_2

    const/4 v0, 0x1

    .line 384
    .local v0, "defaultResult":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 385
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v3, :cond_3

    const/4 v1, 0x1

    .line 388
    :goto_2
    if-nez v1, :cond_0

    .line 389
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 399
    :cond_0
    :goto_3
    return-void

    .line 381
    .end local v0    # "defaultResult":Z
    .end local v2    # "positiveResult":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "positiveResult":Z
    goto :goto_0

    .line 382
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "defaultResult":Z
    goto :goto_1

    .line 386
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "equal":Z
    goto :goto_2

    .end local v1    # "equal":Z
    :cond_4
    const/4 v1, 0x0

    .local v1, "equal":Z
    goto :goto_2

    .line 391
    .end local v1    # "equal":Z
    :cond_5
    if-eqz v0, :cond_0

    .line 392
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    if-nez v3, :cond_6

    const/4 v1, 0x1

    .line 395
    :goto_4
    if-nez v1, :cond_0

    .line 396
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    goto :goto_3

    .line 393
    :cond_6
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .local v1, "equal":Z
    goto :goto_4

    .end local v1    # "equal":Z
    :cond_7
    const/4 v1, 0x0

    .local v1, "equal":Z
    goto :goto_4
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 425
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 427
    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 428
    return-void

    :cond_1
    move-object v0, p1

    .line 431
    check-cast v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    .line 432
    .local v0, "myState":Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 435
    iget-object v1, v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 437
    iget-object v1, v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    .line 439
    :cond_2
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 408
    invoke-super {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 411
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 413
    return-object v1

    .line 417
    :cond_0
    new-instance v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 419
    .local v0, "myState":Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iput-object v2, v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    .line 420
    return-object v0
.end method

.method protected onSetColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 284
    return-void
.end method

.method protected onSetColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .prologue
    .line 300
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 403
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 404
    return-void

    .line 403
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->updateSummary()V

    .line 195
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onSetColor(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    .local v0, "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 203
    move-object v1, p1

    .line 209
    .local v1, "showColor":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 211
    .end local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->persistString(Ljava/lang/String;)Z

    .line 212
    return-void

    .line 206
    .restart local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .restart local v1    # "showColor":Ljava/lang/String;
    goto :goto_0
.end method

.method public setColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setColorPalette([Ljava/lang/String;[I)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;
    .param p2, "colorStringResIds"    # [I

    .prologue
    .line 231
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    .line 233
    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 312
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setEnabled(Z)V

    .line 316
    return-void
.end method

.method public setImageViewVisibility()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    .line 154
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageResId"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public setMessageText(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 175
    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 170
    return-void
.end method

.method public setSelection(Ljava/lang/String;I)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .prologue
    .line 261
    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, -0x1

    .line 263
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_1

    .line 264
    const/16 v2, 0x8

    new-array v0, v2, [I

    .local v0, "ids":[I
    fill-array-data v0, :array_0

    .line 274
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v2, v2, v1

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .end local v0    # "ids":[I
    :cond_1
    return-void

    .line 262
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 264
    :array_0
    .array-data 4
        0x7f0a029f
        0x7f0a02a1
        0x7f0a02a3
        0x7f0a02a5
        0x7f0a02a8
        0x7f0a02aa
        0x7f0a02ac
        0x7f0a02ae
    .end array-data
.end method
