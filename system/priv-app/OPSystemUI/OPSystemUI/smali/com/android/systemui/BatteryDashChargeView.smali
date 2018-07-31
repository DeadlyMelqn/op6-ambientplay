.class public Lcom/android/systemui/BatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "BatteryDashChargeView.java"


# instance fields
.field private mDark:Z

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    .line 40
    return-void
.end method

.method private getImageResId()I
    .locals 6

    .prologue
    const/16 v5, 0x1d

    const/16 v4, 0x17

    const/16 v3, 0x11

    const/16 v2, 0xb

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "resId":I
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-nez v1, :cond_2

    .line 65
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1

    .line 66
    const v0, 0x7f080276

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    const v0, 0x7f080277

    goto :goto_0

    .line 68
    :cond_2
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_4

    .line 69
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_3

    .line 70
    const v0, 0x7f080278

    goto :goto_0

    .line 71
    :cond_3
    const v0, 0x7f080287

    goto :goto_0

    .line 72
    :cond_4
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_6

    .line 73
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_5

    .line 74
    const v0, 0x7f080288

    goto :goto_0

    .line 75
    :cond_5
    const v0, 0x7f080289

    goto :goto_0

    .line 76
    :cond_6
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-le v1, v3, :cond_8

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v4, :cond_8

    .line 77
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_7

    .line 78
    const v0, 0x7f08028a

    goto :goto_0

    .line 79
    :cond_7
    const v0, 0x7f08028b

    goto :goto_0

    .line 80
    :cond_8
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-le v1, v4, :cond_a

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v5, :cond_a

    .line 81
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_9

    .line 82
    const v0, 0x7f08028c

    goto :goto_0

    .line 83
    :cond_9
    const v0, 0x7f08028d

    goto :goto_0

    .line 84
    :cond_a
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-le v1, v5, :cond_c

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-gt v1, v2, :cond_c

    .line 85
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_b

    .line 86
    const v0, 0x7f08028e

    goto :goto_0

    .line 87
    :cond_b
    const v0, 0x7f08028f

    goto :goto_0

    .line 88
    :cond_c
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-le v1, v2, :cond_e

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x29

    if-gt v1, v2, :cond_e

    .line 89
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_d

    .line 90
    const v0, 0x7f080290

    goto :goto_0

    .line 91
    :cond_d
    const v0, 0x7f080291

    goto/16 :goto_0

    .line 92
    :cond_e
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x29

    if-le v1, v2, :cond_10

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-gt v1, v2, :cond_10

    .line 93
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_f

    .line 94
    const v0, 0x7f080292

    goto/16 :goto_0

    .line 95
    :cond_f
    const v0, 0x7f080293

    goto/16 :goto_0

    .line 96
    :cond_10
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-le v1, v2, :cond_12

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x35

    if-gt v1, v2, :cond_12

    .line 97
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_11

    .line 98
    const v0, 0x7f080294

    goto/16 :goto_0

    .line 99
    :cond_11
    const v0, 0x7f080295

    goto/16 :goto_0

    .line 100
    :cond_12
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x35

    if-le v1, v2, :cond_14

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-gt v1, v2, :cond_14

    .line 101
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_13

    .line 102
    const v0, 0x7f080296

    goto/16 :goto_0

    .line 103
    :cond_13
    const v0, 0x7f080297

    goto/16 :goto_0

    .line 104
    :cond_14
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-le v1, v2, :cond_16

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x41

    if-gt v1, v2, :cond_16

    .line 105
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_15

    .line 106
    const v0, 0x7f080279

    goto/16 :goto_0

    .line 107
    :cond_15
    const v0, 0x7f08027a

    goto/16 :goto_0

    .line 108
    :cond_16
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x41

    if-le v1, v2, :cond_18

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-gt v1, v2, :cond_18

    .line 109
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_17

    .line 110
    const v0, 0x7f08027b

    goto/16 :goto_0

    .line 111
    :cond_17
    const v0, 0x7f08027c

    goto/16 :goto_0

    .line 112
    :cond_18
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-le v1, v2, :cond_1a

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x4d

    if-gt v1, v2, :cond_1a

    .line 113
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_19

    .line 114
    const v0, 0x7f08027d

    goto/16 :goto_0

    .line 115
    :cond_19
    const v0, 0x7f08027e

    goto/16 :goto_0

    .line 116
    :cond_1a
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x4d

    if-le v1, v2, :cond_1c

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-gt v1, v2, :cond_1c

    .line 117
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1b

    .line 118
    const v0, 0x7f08027f

    goto/16 :goto_0

    .line 119
    :cond_1b
    const v0, 0x7f080280

    goto/16 :goto_0

    .line 120
    :cond_1c
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-le v1, v2, :cond_1e

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x59

    if-gt v1, v2, :cond_1e

    .line 121
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1d

    .line 122
    const v0, 0x7f080281

    goto/16 :goto_0

    .line 123
    :cond_1d
    const v0, 0x7f080282

    goto/16 :goto_0

    .line 124
    :cond_1e
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x59

    if-le v1, v2, :cond_20

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-gt v1, v2, :cond_20

    .line 125
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1f

    .line 126
    const v0, 0x7f080283

    goto/16 :goto_0

    .line 127
    :cond_1f
    const v0, 0x7f080284

    goto/16 :goto_0

    .line 128
    :cond_20
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_0

    .line 129
    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_21

    .line 130
    const v0, 0x7f080285

    goto/16 :goto_0

    .line 131
    :cond_21
    const v0, 0x7f080286

    goto/16 :goto_0
.end method


# virtual methods
.method public setIconTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 44
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryDashChargeView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 45
    return-void
.end method

.method public setLevel(IZ)V
    .locals 2
    .param p1, "level"    # I
    .param p2, "force"    # Z

    .prologue
    .line 55
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_1

    .line 56
    :cond_0
    iput p1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/BatteryDashChargeView;->getImageResId()I

    move-result v0

    .line 58
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryDashChargeView;->setImageResource(I)V

    .line 60
    .end local v0    # "resId":I
    :cond_1
    return-void
.end method

.method public updateDisplayAndTextSize()V
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setLevel(IZ)V

    .line 51
    return-void
.end method
