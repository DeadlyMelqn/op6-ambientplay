.class Landroid/view/View$TooltipInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipInfo"
.end annotation


# instance fields
.field mAnchorX:I

.field mAnchorY:I

.field mHideTooltipRunnable:Ljava/lang/Runnable;

.field mShowTooltipRunnable:Ljava/lang/Runnable;

.field mTooltipFromLongClick:Z

.field mTooltipPopup:Lcom/android/internal/view/TooltipPopup;

.field mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View$TooltipInfo;)V
    .locals 0
    .param p1, "-this0"    # Landroid/view/View$TooltipInfo;

    .prologue
    invoke-direct {p0}, Landroid/view/View$TooltipInfo;-><init>()V

    return-void
.end method
