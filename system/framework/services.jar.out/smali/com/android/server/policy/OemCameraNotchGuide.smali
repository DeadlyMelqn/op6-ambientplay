.class public Lcom/android/server/policy/OemCameraNotchGuide;
.super Ljava/lang/Object;
.source "OemCameraNotchGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemCameraNotchGuide$H;,
        Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;
    }
.end annotation


# static fields
.field static final CAMERA_NOTCH_HEIGHT:I = 0x4f

.field public static final IS_SUPPORT_CAMERA_NOTCH:Z

.field private static final TAG:Ljava/lang/String; = "OemCameraNotchGuide"

.field public static mConfirmed:Z

.field public static mIsIgnoreCameraNotch:Z


# instance fields
.field private mContentLayout:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/policy/OemCameraNotchGuide$H;

.field mMarginNotchTop:I

.field mMarginNotchland:I

.field private mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

.field mRotation:I

.field mScreenHeight:I

.field mScreenWidth:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/OemCameraNotchGuide;)Lcom/android/server/policy/OemCameraNotchGuide$H;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mHandler:Lcom/android/server/policy/OemCameraNotchGuide$H;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/OemCameraNotchGuide;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/OemCameraNotchGuide;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide;
    .param p1, "-value"    # Landroid/view/ViewGroup;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContentLayout:Landroid/view/ViewGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/OemCameraNotchGuide;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/OemCameraNotchGuide;->handleHide()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/OemCameraNotchGuide;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/policy/OemCameraNotchGuide;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/OemCameraNotchGuide;->handleShow()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3a

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    .line 56
    sput-boolean v0, Lcom/android/server/policy/OemCameraNotchGuide;->IS_SUPPORT_CAMERA_NOTCH:Z

    .line 58
    sput-boolean v2, Lcom/android/server/policy/OemCameraNotchGuide;->mConfirmed:Z

    .line 59
    sput-boolean v2, Lcom/android/server/policy/OemCameraNotchGuide;->mIsIgnoreCameraNotch:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mRotation:I

    .line 70
    const-string/jumbo v2, "OemCameraNotchGuide"

    const-string/jumbo v3, "OemCameraNotchGuide init"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContext:Landroid/content/Context;

    .line 72
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "OemCameraNotchGuideThread"

    .line 73
    const/4 v3, -0x8

    .line 72
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 74
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v2, Lcom/android/server/policy/OemCameraNotchGuide$H;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/OemCameraNotchGuide$H;-><init>(Lcom/android/server/policy/OemCameraNotchGuide;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mHandler:Lcom/android/server/policy/OemCameraNotchGuide$H;

    .line 77
    iget-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mWindowManager:Landroid/view/WindowManager;

    .line 78
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 79
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/android/server/policy/OemCameraNotchGuide;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mScreenHeight:I

    .line 81
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mScreenWidth:I

    .line 82
    iget-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 83
    const v3, 0x505000e

    .line 82
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4f

    iput v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mMarginNotchland:I

    .line 85
    iget-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 86
    const v3, 0x5050012

    .line 85
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 87
    iget-object v3, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 88
    const v4, 0x505000a

    .line 87
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 85
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4f

    iput v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mMarginNotchTop:I

    .line 90
    return-void
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 339
    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mWindowManager:Landroid/view/WindowManager;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    invoke-virtual {v0}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "OemCameraNotchGuide"

    const-string/jumbo v1, "handleHide OemCameraNotchGuide"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 134
    iput-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "camera_notch_guided"

    const/4 v2, 0x1

    .line 136
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    return-void
.end method

.method private handleShow()V
    .locals 3

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/policy/OemCameraNotchGuide;->mConfirmed:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 101
    const-string/jumbo v1, "OemCameraNotchGuide"

    const-string/jumbo v2, "handleShow OemCameraNotchGuide"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v1, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    iget-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;-><init>(Lcom/android/server/policy/OemCameraNotchGuide;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .line 103
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    .line 104
    const/16 v2, 0x104

    .line 103
    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;->setSystemUiVisibility(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/policy/OemCameraNotchGuide;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 107
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mNotchTipsView:Lcom/android/server/policy/OemCameraNotchGuide$NotchTipsView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method


# virtual methods
.method public getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 112
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 115
    const/16 v3, 0x7de

    .line 116
    const v4, 0x1000120

    .line 121
    const/4 v5, -0x3

    move v2, v1

    .line 112
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 123
    const-string/jumbo v1, "OemCameraNotchGuide"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 125
    const/high16 v1, 0x50d0000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 127
    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mHandler:Lcom/android/server/policy/OemCameraNotchGuide$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemCameraNotchGuide$H;->sendEmptyMessage(I)Z

    .line 97
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/policy/OemCameraNotchGuide;->mHandler:Lcom/android/server/policy/OemCameraNotchGuide$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemCameraNotchGuide$H;->sendEmptyMessage(I)Z

    .line 94
    return-void
.end method
