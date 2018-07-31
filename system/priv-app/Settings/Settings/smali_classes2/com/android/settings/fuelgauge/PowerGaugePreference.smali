.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Lcom/android/settings/TintablePreference;
.source "PowerGaugePreference.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconSize:I

.field private mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPowerState:I

.field private mProgress:Ljava/lang/CharSequence;

.field private mProgressView:Landroid/widget/TextView;

.field private mSwitch:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "info"    # Lcom/android/settings/fuelgauge/BatteryEntry;

    .prologue
    .line 61
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;
    .param p5, "info"    # Lcom/android/settings/fuelgauge/BatteryEntry;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TintablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    .line 76
    iput-object p3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 77
    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p0, p3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_0
    const v1, 0x7f040179

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setWidgetLayoutResource(I)V

    .line 81
    iput-object p5, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 84
    if-nez p4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0386

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIconSize:I

    .line 89
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    .line 91
    return-void

    .line 84
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p4

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private convertToSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 4
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "color"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<font color=\"#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "colorfulTxt":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 177
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    .line 182
    .local v1, "encode":Landroid/text/Spanned;
    :goto_0
    return-object v1

    .line 179
    .end local v1    # "encode":Landroid/text/Spanned;
    :cond_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .restart local v1    # "encode":Landroid/text/Spanned;
    goto :goto_0
.end method

.method private setButtonVisible()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 165
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 138
    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 139
    if-eqz p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 149
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-ne v2, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const v3, 0x7f0f0408

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "txt":Ljava/lang/String;
    const-string/jumbo v1, "D94B41"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->convertToSpanned(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setButtonVisible()V

    .line 161
    return-void

    .line 152
    .end local v0    # "txt":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    const v3, 0x7f0f0409

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0    # "txt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    .end local v0    # "txt":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .restart local v0    # "txt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    return-object v0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/TintablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 193
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 194
    .local v0, "icon":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIconSize:I

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIconSize:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 196
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :cond_0
    const v3, 0x7f0a02c6

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    .line 201
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 202
    .local v1, "mTextButtonColor":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0f0404

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setButtonVisible()V

    .line 213
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 214
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 215
    .local v2, "titleView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    .end local v2    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 96
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mSwitch:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method public setPercent(D)V
    .locals 1
    .param p1, "percentOfTotal"    # D

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/settings/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 109
    return-void
.end method

.method public setPercent(DD)V
    .locals 3
    .param p1, "percentOfMax"    # D
    .param p3, "percentOfTotal"    # D

    .prologue
    .line 99
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p3

    double-to-int v0, v0

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->updatePowerState()V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 104
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPowerState:I

    .line 118
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->updatePowerState()V

    .line 119
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 123
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgressView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgressView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 127
    return-void
.end method
