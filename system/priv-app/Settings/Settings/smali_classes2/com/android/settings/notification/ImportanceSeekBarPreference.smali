.class public Lcom/android/settings/notification/ImportanceSeekBarPreference;
.super Lcom/android/settings/SeekBarPreference;
.source "ImportanceSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ImportanceSeekBarPreference$1;,
        Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImportanceSeekBarPref"


# instance fields
.field private mActiveSliderAlpha:F

.field private mActiveSliderTint:Landroid/content/res/ColorStateList;

.field private mAutoOn:Z

.field private mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

.field private mHandler:Landroid/os/Handler;

.field private mInactiveSliderAlpha:F

.field private mInactiveSliderTint:Landroid/content/res/ColorStateList;

.field private mMinProgress:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSummary:Ljava/lang/String;

.field private mSummaryTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ImportanceSeekBarPreference;
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->applyAuto(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/notification/ImportanceSeekBarPreference;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/notification/ImportanceSeekBarPreference;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->postNotifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mActiveSliderAlpha:F

    .line 198
    new-instance v1, Lcom/android/settings/notification/ImportanceSeekBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference$1;-><init>(Lcom/android/settings/notification/ImportanceSeekBarPreference;)V

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 58
    const v1, 0x7f04015f

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setLayoutResource(I)V

    .line 60
    const v1, 0x7f0c0358

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 59
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 62
    const v1, 0x7f0c0359

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 61
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .line 63
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mHandler:Landroid/os/Handler;

    .line 65
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 66
    iput v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mInactiveSliderAlpha:F

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method private applyAuto(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 121
    iget-boolean v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setProgress(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    invoke-interface {v0, v1, v2}, Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    .line 130
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->applyAutoUi(Landroid/widget/ImageView;)V

    .line 131
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    .line 128
    const/16 v1, -0x3e8

    .line 127
    invoke-interface {v0, v1, v2}, Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    goto :goto_0
.end method

.method private applyAutoUi(Landroid/widget/ImageView;)V
    .locals 5
    .param p1, "autoButton"    # Landroid/widget/ImageView;

    .prologue
    .line 134
    iget-object v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v4, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 136
    iget-boolean v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_1

    iget v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mInactiveSliderAlpha:F

    .line 137
    .local v0, "alpha":F
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mActiveSliderTint:Landroid/content/res/ColorStateList;

    .line 138
    .local v2, "starTint":Landroid/content/res/ColorStateList;
    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 139
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 140
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setAlpha(F)V

    .line 143
    iget-boolean v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    if-eqz v3, :cond_0

    .line 144
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->setProgress(I)V

    .line 146
    const/16 v3, -0x3e8

    .line 145
    invoke-direct {p0, v3}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getProgressSummary(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void

    .line 136
    .end local v0    # "alpha":F
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "starTint":Landroid/content/res/ColorStateList;
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mActiveSliderAlpha:F

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 137
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mInactiveSliderTint:Landroid/content/res/ColorStateList;

    .restart local v2    # "starTint":Landroid/content/res/ColorStateList;
    goto :goto_1
.end method

.method private getProgressSummary(I)Ljava/lang/String;
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 171
    packed-switch p1, :pswitch_data_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f90

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f8a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f8b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 177
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f8c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f8d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 181
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f8e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 183
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0f8f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private postNotifyChanged()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 196
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 106
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    .line 108
    const v1, 0x10203b9

    .line 107
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 110
    const v1, 0x7f0a02b4

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, "autoButton":Landroid/widget/ImageView;
    invoke-direct {p0, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->applyAutoUi(Landroid/widget/ImageView;)V

    .line 112
    new-instance v1, Lcom/android/settings/notification/ImportanceSeekBarPreference$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/ImportanceSeekBarPreference$2;-><init>(Lcom/android/settings/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 159
    iget v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mMinProgress:I

    if-ge p2, v0, :cond_0

    .line 160
    iget v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mMinProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 161
    iget p2, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mMinProgress:I

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0, p2}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getProgressSummary(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    invoke-interface {v0, p2, p3}, Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;->onImportanceChanged(IZ)V

    .line 168
    return-void
.end method

.method public setAutoOn(Z)V
    .locals 0
    .param p1, "autoOn"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mAutoOn:Z

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->notifyChanged()V

    .line 101
    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mCallback:Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;

    .line 85
    return-void
.end method

.method public setMinimumProgress(I)V
    .locals 0
    .param p1, "minProgress"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mMinProgress:I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->notifyChanged()V

    .line 90
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ImportanceSeekBarPreference;->getProgressSummary(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ImportanceSeekBarPreference;->mSummary:Ljava/lang/String;

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 96
    return-void
.end method
