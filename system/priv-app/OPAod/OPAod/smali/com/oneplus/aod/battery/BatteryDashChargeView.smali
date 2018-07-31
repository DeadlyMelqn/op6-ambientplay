.class public Lcom/oneplus/aod/battery/BatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "BatteryDashChargeView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDark:Z

.field private mDarkIntensity:F

.field private mIconTint:I

.field private mLevel:I

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    iput v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    .line 33
    iput v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mIconTint:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    .line 52
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private applyIconTint()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method private getImageResId()I
    .locals 6

    .prologue
    const/16 v5, 0x1d

    const/16 v4, 0x17

    const/16 v3, 0x11

    const/16 v2, 0xb

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "resId":I
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-nez v1, :cond_2

    .line 101
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1

    .line 102
    const v0, 0x7f02005b

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    const v0, 0x7f02005c

    goto :goto_0

    .line 104
    :cond_2
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_4

    .line 105
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_3

    .line 106
    const v0, 0x7f02005d

    goto :goto_0

    .line 107
    :cond_3
    const v0, 0x7f02006c

    goto :goto_0

    .line 108
    :cond_4
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_6

    .line 109
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_5

    .line 110
    const v0, 0x7f02006d

    goto :goto_0

    .line 111
    :cond_5
    const v0, 0x7f02006e

    goto :goto_0

    .line 112
    :cond_6
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-le v1, v3, :cond_8

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v4, :cond_8

    .line 113
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_7

    .line 114
    const v0, 0x7f02006f

    goto :goto_0

    .line 115
    :cond_7
    const v0, 0x7f020070

    goto :goto_0

    .line 116
    :cond_8
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-le v1, v4, :cond_a

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v5, :cond_a

    .line 117
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_9

    .line 118
    const v0, 0x7f020071

    goto :goto_0

    .line 119
    :cond_9
    const v0, 0x7f020072

    goto :goto_0

    .line 120
    :cond_a
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-le v1, v5, :cond_c

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-gt v1, v2, :cond_c

    .line 121
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_b

    .line 122
    const v0, 0x7f020073

    goto :goto_0

    .line 123
    :cond_b
    const v0, 0x7f020074

    goto :goto_0

    .line 124
    :cond_c
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-le v1, v2, :cond_e

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x29

    if-gt v1, v2, :cond_e

    .line 125
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_d

    .line 126
    const v0, 0x7f020075

    goto :goto_0

    .line 127
    :cond_d
    const v0, 0x7f020076

    goto/16 :goto_0

    .line 128
    :cond_e
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x29

    if-le v1, v2, :cond_10

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-gt v1, v2, :cond_10

    .line 129
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_f

    .line 130
    const v0, 0x7f020077

    goto/16 :goto_0

    .line 131
    :cond_f
    const v0, 0x7f020078

    goto/16 :goto_0

    .line 132
    :cond_10
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-le v1, v2, :cond_12

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x35

    if-gt v1, v2, :cond_12

    .line 133
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_11

    .line 134
    const v0, 0x7f020079

    goto/16 :goto_0

    .line 135
    :cond_11
    const v0, 0x7f02007a

    goto/16 :goto_0

    .line 136
    :cond_12
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x35

    if-le v1, v2, :cond_14

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-gt v1, v2, :cond_14

    .line 137
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_13

    .line 138
    const v0, 0x7f02007b

    goto/16 :goto_0

    .line 139
    :cond_13
    const v0, 0x7f02007c

    goto/16 :goto_0

    .line 140
    :cond_14
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-le v1, v2, :cond_16

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x41

    if-gt v1, v2, :cond_16

    .line 141
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_15

    .line 142
    const v0, 0x7f02005e

    goto/16 :goto_0

    .line 143
    :cond_15
    const v0, 0x7f02005f

    goto/16 :goto_0

    .line 144
    :cond_16
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x41

    if-le v1, v2, :cond_18

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-gt v1, v2, :cond_18

    .line 145
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_17

    .line 146
    const v0, 0x7f020060

    goto/16 :goto_0

    .line 147
    :cond_17
    const v0, 0x7f020061

    goto/16 :goto_0

    .line 148
    :cond_18
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-le v1, v2, :cond_1a

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x4d

    if-gt v1, v2, :cond_1a

    .line 149
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_19

    .line 150
    const v0, 0x7f020062

    goto/16 :goto_0

    .line 151
    :cond_19
    const v0, 0x7f020063

    goto/16 :goto_0

    .line 152
    :cond_1a
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x4d

    if-le v1, v2, :cond_1c

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-gt v1, v2, :cond_1c

    .line 153
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1b

    .line 154
    const v0, 0x7f020064

    goto/16 :goto_0

    .line 155
    :cond_1b
    const v0, 0x7f020065

    goto/16 :goto_0

    .line 156
    :cond_1c
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-le v1, v2, :cond_1e

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x59

    if-gt v1, v2, :cond_1e

    .line 157
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1d

    .line 158
    const v0, 0x7f020066

    goto/16 :goto_0

    .line 159
    :cond_1d
    const v0, 0x7f020067

    goto/16 :goto_0

    .line 160
    :cond_1e
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x59

    if-le v1, v2, :cond_20

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-gt v1, v2, :cond_20

    .line 161
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1f

    .line 162
    const v0, 0x7f020068

    goto/16 :goto_0

    .line 163
    :cond_1f
    const v0, 0x7f020069

    goto/16 :goto_0

    .line 164
    :cond_20
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    .line 165
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_21

    .line 166
    const v0, 0x7f02006a

    goto/16 :goto_0

    .line 167
    :cond_21
    const v0, 0x7f02006b

    goto/16 :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 74
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 75
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F
    .param p3, "tintArea"    # Landroid/graphics/Rect;

    .prologue
    .line 57
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mIconTint:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDarkIntensity:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 59
    :goto_0
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mIconTint:I

    .line 60
    iput p2, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDarkIntensity:F

    .line 61
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->applyIconTint()V

    .line 65
    :cond_1
    return-void

    .line 58
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .local v0, "changed":Z
    goto :goto_0
.end method

.method public setLevel(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "force"    # Z

    .prologue
    .line 91
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_1

    .line 92
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    .line 93
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->getImageResId()I

    move-result v0

    .line 94
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setImageResource(I)V

    .line 96
    .end local v0    # "resId":I
    :cond_1
    return-void
.end method

.method public updateDisplayAndTextSize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setLevel(IZ)V

    .line 87
    return-void
.end method
