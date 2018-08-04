.class public Lcom/android/systemui/RoundedCorners;
.super Lcom/android/systemui/SystemUI;
.source "RoundedCorners.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;
    }
.end annotation


# instance fields
.field private mBottomOverlay:Landroid/view/View;

.field private mDensity:F

.field private mOverlay:Landroid/view/View;

.field private mRoundedDefault:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/RoundedCorners;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mBottomOverlay:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/RoundedCorners;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/RoundedCorners;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method private getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    .line 151
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 152
    const/4 v1, -0x1

    .line 153
    const/4 v2, -0x2

    .line 154
    const/16 v3, 0x7e8

    .line 155
    const v4, 0x20800138

    .line 161
    const/4 v5, -0x3

    .line 151
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 162
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x100010

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 164
    const-string/jumbo v1, "RoundedOverlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 166
    return-object v0
.end method

.method private setSize(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pixelSize"    # I

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 188
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-void
.end method

.method private setupPadding(I)V
    .locals 6
    .param p1, "padding"    # I

    .prologue
    .line 136
    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/RoundedCorners;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 137
    .local v1, "sb":Lcom/android/systemui/statusbar/phone/StatusBar;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v2

    .line 138
    :goto_0
    if-eqz v2, :cond_0

    .line 139
    const v3, 0x7f0a0143

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo v4, "sysui_rounded_content_padding"

    .line 140
    const/4 v5, 0x2

    .line 139
    invoke-static {v3, v4, p1, v5}, Lcom/android/systemui/tuner/TunablePadding;->addTunablePadding(Landroid/view/View;Ljava/lang/String;II)Lcom/android/systemui/tuner/TunablePadding;

    .line 142
    invoke-static {v2}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    .line 143
    .local v0, "fragmentHostManager":Lcom/android/systemui/fragments/FragmentHostManager;
    const-string/jumbo v3, "CollapsedStatusBarFragment"

    .line 144
    new-instance v4, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;

    const v5, 0x7f0a0276

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;-><init>(II)V

    .line 143
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 145
    const-string/jumbo v3, "QS"

    .line 146
    new-instance v4, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;

    const v5, 0x7f0a010e

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/RoundedCorners$TunablePaddingTagListener;-><init>(II)V

    .line 145
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 148
    .end local v0    # "fragmentHostManager":Lcom/android/systemui/fragments/FragmentHostManager;
    :cond_0
    return-void

    .line 137
    :cond_1
    const/4 v2, 0x0

    .local v2, "statusBar":Landroid/view/View;
    goto :goto_0
.end method

.method private setupRounding()V
    .locals 11

    .prologue
    const v10, 0x7f0d00f7

    const v9, 0x7f0a021c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 75
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 76
    const/4 v4, 0x0

    .line 75
    invoke-virtual {v3, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    .line 77
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 78
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 79
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 81
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 82
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/RoundedCorners;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 81
    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 84
    const/4 v4, 0x0

    .line 83
    invoke-virtual {v3, v10, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/RoundedCorners;->mBottomOverlay:Landroid/view/View;

    .line 85
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    .line 86
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 87
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mBottomOverlay:Landroid/view/View;

    const v4, 0x7f0a0178

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setRotation(F)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/RoundedCorners;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 89
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x50

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 90
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 91
    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mBottomOverlay:Landroid/view/View;

    .line 90
    invoke-interface {v3, v4, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 94
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 96
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/android/systemui/RoundedCorners;->mDensity:F

    .line 98
    const-class v3, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "sysui_rounded_size"

    aput-object v5, v4, v7

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 101
    new-instance v2, Lcom/android/systemui/RoundedCorners$1;

    iget-object v4, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Handler;

    .line 102
    const-string/jumbo v5, "accessibility_display_inversion_enabled"

    .line 101
    invoke-direct {v2, p0, v4, v3, v5}, Lcom/android/systemui/RoundedCorners$1;-><init>(Lcom/android/systemui/RoundedCorners;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 113
    .local v2, "setting":Lcom/android/systemui/qs/SecureSetting;
    invoke-virtual {v2, v8}, Lcom/android/systemui/qs/SecureSetting;->setListening(Z)V

    .line 114
    invoke-virtual {v2, v7}, Lcom/android/systemui/qs/SecureSetting;->onChange(Z)V

    .line 116
    iget-object v3, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    new-instance v4, Lcom/android/systemui/RoundedCorners$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/RoundedCorners$2;-><init>(Lcom/android/systemui/RoundedCorners;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0a021c

    const v4, 0x7f0a0178

    .line 172
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    if-nez v2, :cond_0

    return-void

    .line 173
    :cond_0
    const-string/jumbo v2, "sysui_rounded_size"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    iget v1, p0, Lcom/android/systemui/RoundedCorners;->mRoundedDefault:I

    .line 176
    .local v1, "size":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/RoundedCorners;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 179
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/RoundedCorners;->setSize(Landroid/view/View;I)V

    .line 180
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mOverlay:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/RoundedCorners;->setSize(Landroid/view/View;I)V

    .line 181
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/RoundedCorners;->setSize(Landroid/view/View;I)V

    .line 182
    iget-object v2, p0, Lcom/android/systemui/RoundedCorners;->mBottomOverlay:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/RoundedCorners;->setSize(Landroid/view/View;I)V

    .line 184
    .end local v1    # "size":I
    :cond_1
    return-void

    .line 177
    .restart local v1    # "size":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    const v2, 0x7f0702b8

    .line 62
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/RoundedCorners;->mRoundedDefault:I

    .line 64
    iget v1, p0, Lcom/android/systemui/RoundedCorners;->mRoundedDefault:I

    if-eqz v1, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/RoundedCorners;->setupRounding()V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/RoundedCorners;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    const v2, 0x7f0702b7

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 69
    .local v0, "padding":I
    if-eqz v0, :cond_1

    .line 70
    invoke-direct {p0, v0}, Lcom/android/systemui/RoundedCorners;->setupPadding(I)V

    .line 72
    :cond_1
    return-void
.end method
