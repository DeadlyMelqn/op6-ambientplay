.class public Lcom/android/settings/SeekBarPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mContinuousUpdates:Z

.field private mDefaultProgress:I

.field private mMax:I

.field private mProgress:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShouldBlink:Z

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const v0, 0x7f0101d3

    .line 77
    const v1, 0x11100b4

    .line 75
    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/SeekBarPreference;->mDefaultProgress:I

    .line 56
    sget-object v2, Lcom/android/internal/R$styleable;->ProgressBar:[I

    .line 55
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SeekBarPreference;->setMax(I)V

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    sget-object v2, Lcom/android/internal/R$styleable;->SeekBarPreference:[I

    .line 60
    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 63
    const/4 v2, 0x0

    .line 64
    const v3, 0x10900bd

    .line 62
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 65
    .local v1, "layoutResId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/settings/SeekBarPreference;->setLayoutResource(I)V

    .line 68
    return-void
.end method

.method private setProgress(IZ)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "notifyChanged"    # Z

    .prologue
    .line 187
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_0

    .line 188
    iget p1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    .line 190
    :cond_0
    if-gez p1, :cond_1

    .line 191
    const/4 p1, 0x0

    .line 193
    :cond_1
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq p1, v0, :cond_2

    .line 194
    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->persistInt(I)Z

    .line 196
    if-eqz p2, :cond_2

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 200
    :cond_2
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method synthetic lambda$-com_android_settings_SeekBarPreference_3970(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 111
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 112
    .local v1, "centerY":I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 114
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 115
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 116
    iput-boolean v5, p0, Lcom/android/settings/SeekBarPreference;->mShouldBlink:Z

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 92
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 94
    const v2, 0x10203b9

    .line 93
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 95
    iget-object v2, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 97
    iget-object v2, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 100
    .local v0, "title":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v2, v2, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v2, :cond_1

    .line 104
    iget-object v2, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    check-cast v2, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v3, p0, Lcom/android/settings/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    .line 106
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/SeekBarPreference;->mShouldBlink:Z

    if-eqz v2, :cond_2

    .line 107
    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 108
    .local v1, "v":Landroid/view/View;
    new-instance v2, Lcom/android/settings/-$Lambda$WK0llntRamkMUBrGx-Is9oNa0D8;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/-$Lambda$WK0llntRamkMUBrGx-Is9oNa0D8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 119
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    return v2

    .line 143
    :cond_0
    const v1, 0x10203b9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 144
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 145
    return v2

    .line 147
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 224
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mContinuousUpdates:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 227
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/settings/SeekBarPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 268
    return-void

    :cond_0
    move-object v0, p1

    .line 272
    check-cast v0, Lcom/android/settings/SeekBarPreference$SavedState;

    .line 273
    .local v0, "myState":Lcom/android/settings/SeekBarPreference$SavedState;
    invoke-virtual {v0}, Lcom/android/settings/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 274
    iget v1, v0, Lcom/android/settings/SeekBarPreference$SavedState;->progress:I

    iput v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    .line 275
    iget v1, v0, Lcom/android/settings/SeekBarPreference$SavedState;->max:I

    iput v1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 277
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 250
    invoke-super {p0}, Lcom/android/settingslib/RestrictedPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 251
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    return-object v1

    .line 257
    :cond_0
    new-instance v0, Lcom/android/settings/SeekBarPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 258
    .local v0, "myState":Lcom/android/settings/SeekBarPreference$SavedState;
    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    iput v2, v0, Lcom/android/settings/SeekBarPreference$SavedState;->progress:I

    .line 259
    iget v2, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    iput v2, v0, Lcom/android/settings/SeekBarPreference$SavedState;->max:I

    .line 260
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 128
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 130
    return-void

    .line 129
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    .line 232
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 236
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SeekBarPreference;->mTrackingTouch:Z

    .line 237
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/settings/SeekBarPreference;->syncProgress(Landroid/widget/SeekBar;)V

    .line 240
    :cond_0
    return-void
.end method

.method public setContinuousUpdates(Z)V
    .locals 0
    .param p1, "continuousUpdates"    # Z

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/android/settings/SeekBarPreference;->mContinuousUpdates:Z

    .line 184
    return-void
.end method

.method public setDefaultProgress(I)V
    .locals 2
    .param p1, "defaultProgress"    # I

    .prologue
    .line 169
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mDefaultProgress:I

    if-eq v0, p1, :cond_0

    .line 170
    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mDefaultProgress:I

    .line 171
    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    instance-of v0, v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    check-cast v0, Lcom/android/settings/widget/DefaultIndicatorSeekBar;

    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mDefaultProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DefaultIndicatorSeekBar;->setDefaultProgress(I)V

    .line 175
    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 151
    iget v0, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_0

    .line 152
    iput p1, p0, Lcom/android/settings/SeekBarPreference;->mMax:I

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 155
    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(IZ)V

    .line 163
    return-void
.end method

.method public setShouldBlink(Z)V
    .locals 0
    .param p1, "shouldBlink"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/settings/SeekBarPreference;->mShouldBlink:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/SeekBarPreference;->notifyChanged()V

    .line 87
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 212
    .local v0, "progress":I
    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    if-eq v0, v1, :cond_0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/SeekBarPreference;->setProgress(IZ)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget v1, p0, Lcom/android/settings/SeekBarPreference;->mProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
