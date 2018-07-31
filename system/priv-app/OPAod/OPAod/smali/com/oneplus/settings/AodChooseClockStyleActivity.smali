.class public Lcom/oneplus/settings/AodChooseClockStyleActivity;
.super Landroid/app/Activity;
.source "AodChooseClockStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static KEY_AOD_CLOCK_STYLE:Ljava/lang/String; = null

.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_WHITE:I


# instance fields
.field private mAnalogClock:Landroid/widget/RelativeLayout;

.field private mAnalogClockBorder:Landroid/view/View;

.field private mAnalogClockDes:Landroid/widget/TextView;

.field private mAnalogClockSelected:Landroid/widget/TextView;

.field private mAnalogClockThumb:Landroid/widget/ImageView;

.field private mBackground:Landroid/widget/LinearLayout;

.field private mClassicClock:Landroid/widget/RelativeLayout;

.field private mClassicClockBorder:Landroid/view/View;

.field private mClassicClockDes:Landroid/widget/TextView;

.field private mClassicClockSelected:Landroid/widget/TextView;

.field private mClassicClockThumb:Landroid/widget/ImageView;

.field private mDefaultClock:Landroid/widget/RelativeLayout;

.field private mDefaultClockBorder:Landroid/view/View;

.field private mDefaultClockDes:Landroid/widget/TextView;

.field private mDefaultClockSelected:Landroid/widget/TextView;

.field private mDefaultClockThumb:Landroid/widget/ImageView;

.field private mDigitalClock:Landroid/widget/RelativeLayout;

.field private mDigitalClockBorder:Landroid/view/View;

.field private mDigitalClockDes:Landroid/widget/TextView;

.field private mDigitalClockSelected:Landroid/widget/TextView;

.field private mDigitalClockThumb:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "aod_clock_style"

    sput-object v0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkCurretClockStyle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-direct {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->resetSelectedVisibility()V

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 143
    .local v1, "style":I
    if-nez v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockSelected:Landroid/widget/TextView;

    .line 153
    .local v0, "selectedView":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    return-void

    .line 145
    .end local v0    # "selectedView":Landroid/widget/TextView;
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockSelected:Landroid/widget/TextView;

    .restart local v0    # "selectedView":Landroid/widget/TextView;
    goto :goto_0

    .line 147
    .end local v0    # "selectedView":Landroid/widget/TextView;
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockSelected:Landroid/widget/TextView;

    .restart local v0    # "selectedView":Landroid/widget/TextView;
    goto :goto_0

    .line 150
    .end local v0    # "selectedView":Landroid/widget/TextView;
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockSelected:Landroid/widget/TextView;

    .restart local v0    # "selectedView":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public static getThemeColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_black_mode"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 8

    .prologue
    const v7, 0x7f0e003d

    const v6, 0x7f0a02a0

    const v5, 0x7f0a029f

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 70
    const v1, 0x7f0e0036

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mBackground:Landroid/widget/LinearLayout;

    .line 72
    const v1, 0x7f0e0037

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    .line 73
    const v1, 0x7f0e0038

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    .line 74
    const v1, 0x7f0e0039

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    .line 75
    const v1, 0x7f0e003a

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockDes:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockDes:Landroid/widget/TextView;

    const v2, 0x7f0d0037

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 79
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockThumb:Landroid/widget/ImageView;

    .line 80
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockThumb:Landroid/widget/ImageView;

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockSelected:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0040

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockBorder:Landroid/view/View;

    .line 84
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockDes:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockDes:Landroid/widget/TextView;

    const v2, 0x7f0d0038

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockThumb:Landroid/widget/ImageView;

    .line 87
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockThumb:Landroid/widget/ImageView;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockSelected:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0040

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockBorder:Landroid/view/View;

    .line 91
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockDes:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockDes:Landroid/widget/TextView;

    const v2, 0x7f0d0039

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockThumb:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockThumb:Landroid/widget/ImageView;

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockSelected:Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0040

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockBorder:Landroid/view/View;

    .line 98
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e003f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockDes:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockDes:Landroid/widget/TextView;

    const v2, 0x7f0d003a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockThumb:Landroid/widget/ImageView;

    .line 101
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockThumb:Landroid/widget/ImageView;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e003e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockSelected:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0040

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockBorder:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 111
    invoke-static {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 112
    const/16 v0, 0x2000

    .line 113
    .local v0, "systemUiVisibility":I
    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 115
    .end local v0    # "systemUiVisibility":I
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mBackground:Landroid/widget/LinearLayout;

    const v2, 0x7f0a02ba

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 116
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockBorder:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockBorder:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockBorder:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockBorder:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mBackground:Landroid/widget/LinearLayout;

    const v2, 0x7f0a02df

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 127
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 128
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockDes:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockBorder:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockBorder:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockBorder:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockBorder:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private resetSelectedVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClockSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClockSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClockSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClockSelected:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 172
    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->finish()V

    .line 173
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/settings/AodClockPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDefaultClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 187
    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mClassicClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 189
    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mAnalogClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 191
    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 192
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/AodChooseClockStyleActivity;->mDigitalClock:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 193
    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    invoke-direct {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->init()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->finish()V

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    invoke-direct {p0}, Lcom/oneplus/settings/AodChooseClockStyleActivity;->checkCurretClockStyle()V

    .line 179
    return-void
.end method
