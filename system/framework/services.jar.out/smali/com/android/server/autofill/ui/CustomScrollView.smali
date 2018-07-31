.class public Lcom/android/server/autofill/ui/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomScrollView"


# instance fields
.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 37
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 50
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

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 38
    iput v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 55
    return-void
.end method

.method private calculateDimensions()V
    .locals 9

    .prologue
    .line 72
    iget v6, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 75
    .local v5, "typedValue":Landroid/util/TypedValue;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 76
    .local v4, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 78
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x1110012

    .line 79
    const/4 v8, 0x1

    .line 78
    invoke-virtual {v6, v7, v5, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 80
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/autofill/ui/CustomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 82
    .local v1, "childHeight":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v6

    float-to-int v3, v6

    .line 84
    .local v3, "maxHeight":I
    iget v6, v4, Landroid/graphics/Point;->x:I

    iput v6, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 85
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 86
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_1

    .line 87
    const-string/jumbo v6, "CustomScrollView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "calculateDimensions(): maxHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 88
    const-string/jumbo v8, ", childHeight="

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 88
    const-string/jumbo v8, ", w="

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 88
    iget v8, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 88
    const-string/jumbo v8, ", h="

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 88
    iget v8, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    .line 87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v0, "CustomScrollView"

    const-string/jumbo v1, "no children"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/ui/CustomScrollView;->calculateDimensions()V

    .line 68
    iget v0, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mWidth:I

    iget v1, p0, Lcom/android/server/autofill/ui/CustomScrollView;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/ui/CustomScrollView;->setMeasuredDimension(II)V

    .line 69
    return-void
.end method
