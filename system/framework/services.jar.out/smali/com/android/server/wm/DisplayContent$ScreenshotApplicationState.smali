.class final Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreenshotApplicationState"
.end annotation


# instance fields
.field appWin:Lcom/android/server/wm/WindowState;

.field maxLayer:I

.field minLayer:I

.field screenshotReady:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;-><init>()V

    return-void
.end method


# virtual methods
.method reset(Z)V
    .locals 2
    .param p1, "screenshotReady"    # Z

    .prologue
    const/4 v0, 0x0

    .line 3351
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->appWin:Lcom/android/server/wm/WindowState;

    .line 3352
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->maxLayer:I

    .line 3353
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    .line 3354
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->screenshotReady:Z

    .line 3355
    if-eqz p1, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;->minLayer:I

    .line 3356
    return-void

    .line 3355
    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method
