.class public Lcom/caverock/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I = null

.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I = null

.field private static final BEZIER_ARC_FACTOR:F = 0.5522848f

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final LUMINANCE_FACTOR_SHIFT:I = 0xf

.field private static final LUMINANCE_TO_ALPHA_BLUE:I = 0x93a

.field private static final LUMINANCE_TO_ALPHA_GREEN:I = 0x5b92

.field private static final LUMINANCE_TO_ALPHA_RED:I = 0x1b33

.field private static final TAG:Ljava/lang/String; = "SVGAndroidRenderer"


# instance fields
.field private bitmapStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private canvas:Landroid/graphics/Canvas;

.field private canvasStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Canvas;",
            ">;"
        }
    .end annotation
.end field

.field private canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

.field private directRenderingMode:Z

.field private document:Lcom/caverock/androidsvg/SVG;

.field private dpi:F

.field private matrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private parentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I
    .locals 3

    .prologue
    .line 85
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->values()[Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [I

    .local v0, "-l_0_R":Ljava/lang/Object;
    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    return-object v0

    .end local v0    # "-l_0_R":Ljava/lang/Object;
    :cond_0
    return-object v1

    .restart local v0    # "-l_0_R":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I
    .locals 3

    .prologue
    .line 85
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->values()[Lcom/caverock/androidsvg/SVG$Style$FillRule;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [I

    .local v0, "-l_0_R":Ljava/lang/Object;
    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule:[I

    return-object v0

    .end local v0    # "-l_0_R":Ljava/lang/Object;
    :cond_0
    return-object v1

    .restart local v0    # "-l_0_R":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I
    .locals 3

    .prologue
    .line 85
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->values()[Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [I

    .local v0, "-l_0_R":Ljava/lang/Object;
    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Round:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->Square:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps:[I

    return-object v0

    .end local v0    # "-l_0_R":Ljava/lang/Object;
    :cond_0
    return-object v1

    .restart local v0    # "-l_0_R":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I
    .locals 3

    .prologue
    .line 85
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    if-nez v1, :cond_0

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->values()[Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    move-result-object v1

    array-length v1, v1

    new-array v0, v1, [I

    .local v0, "-l_0_R":Ljava/lang/Object;
    :try_start_0
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Bevel:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Round:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    return-object v0

    .end local v0    # "-l_0_R":Ljava/lang/Object;
    :cond_0
    return-object v1

    .restart local v0    # "-l_0_R":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/graphics/Canvas;Lcom/caverock/androidsvg/SVG$Box;F)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "defaultDPI"    # F

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 209
    iput p3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    .line 210
    iput-object p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 211
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z
    .locals 1

    .prologue
    .line 1877
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v0
.end method

.method static synthetic access$3(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$4(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 496
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 0

    .prologue
    .line 2461
    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 490
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GraphicsElement;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 3578
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3580
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3582
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3585
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-nez v1, :cond_2

    .line 3589
    :goto_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-nez v1, :cond_3

    .line 3591
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-nez v1, :cond_4

    .line 3593
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-nez v1, :cond_5

    .line 3595
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-nez v1, :cond_6

    .line 3598
    return-void

    .line 3581
    :cond_0
    return-void

    .line 3583
    :cond_1
    return-void

    .line 3586
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 3590
    check-cast v1, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .line 3600
    .local v0, "path":Landroid/graphics/Path;
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3602
    invoke-virtual {v0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3603
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3604
    return-void

    .end local v0    # "path":Landroid/graphics/Path;
    :cond_4
    move-object v1, p1

    .line 3592
    check-cast v1, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    goto :goto_1

    .end local v0    # "path":Landroid/graphics/Path;
    :cond_5
    move-object v1, p1

    .line 3594
    check-cast v1, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    goto :goto_1

    .end local v0    # "path":Landroid/graphics/Path;
    :cond_6
    move-object v1, p1

    .line 3596
    check-cast v1, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    goto :goto_1
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    .line 3553
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3555
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3557
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3560
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-nez v1, :cond_2

    .line 3563
    :goto_0
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v1, p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 3565
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v1, :cond_3

    .line 3568
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3571
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3572
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3573
    return-void

    .line 3556
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_0
    return-void

    .line 3558
    :cond_1
    return-void

    .line 3561
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 3566
    .restart local v0    # "path":Landroid/graphics/Path;
    :cond_3
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "allowUse"    # Z
    .param p3, "combinedPath"    # Landroid/graphics/Path;
    .param p4, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v2, 0x0

    .line 3487
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3491
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3493
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-nez v0, :cond_1

    .line 3499
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-nez v0, :cond_3

    .line 3501
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-nez v0, :cond_4

    .line 3503
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-nez v0, :cond_5

    .line 3506
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Invalid %s element found in clipPath definition"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3510
    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3511
    return-void

    .line 3488
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    return-void

    .line 3494
    :cond_1
    if-nez p2, :cond_2

    .line 3497
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "<use> elements inside a <clipPath> cannot reference another <use>"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3495
    :cond_2
    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3500
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3502
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_4
    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3504
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_5
    check-cast p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3634
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v7, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3636
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3639
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-nez v7, :cond_5

    .line 3643
    :goto_0
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    if-nez v7, :cond_6

    :cond_0
    move v5, v8

    .line 3644
    .local v5, "x":F
    :goto_1
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-nez v7, :cond_7

    :cond_1
    move v6, v8

    .line 3645
    .local v6, "y":F
    :goto_2
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-nez v7, :cond_8

    :cond_2
    move v0, v8

    .line 3646
    .local v0, "dx":F
    :goto_3
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-nez v7, :cond_9

    :cond_3
    move v1, v8

    .line 3649
    .local v1, "dy":F
    :goto_4
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v7, v8, :cond_a

    .line 3658
    :goto_5
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v7, :cond_c

    .line 3663
    :goto_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3665
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 3666
    .local v3, "textAsPath":Landroid/graphics/Path;
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float v8, v5, v0

    add-float v9, v6, v1

    invoke-direct {v7, p0, v8, v9, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3668
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3669
    invoke-virtual {p2, v3, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3670
    return-void

    .line 3637
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v3    # "textAsPath":Landroid/graphics/Path;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_4
    return-void

    .line 3640
    :cond_5
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v7}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 3643
    :cond_6
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_1

    .line 3644
    .restart local v5    # "x":F
    :cond_7
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_2

    .line 3645
    .restart local v6    # "y":F
    :cond_8
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_3

    .line 3646
    .restart local v0    # "dx":F
    :cond_9
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto/16 :goto_4

    .line 3650
    .restart local v1    # "dy":F
    :cond_a
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v4

    .line 3651
    .local v4, "textWidth":F
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v7, v8, :cond_b

    .line 3654
    sub-float/2addr v5, v4

    goto/16 :goto_5

    .line 3652
    :cond_b
    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v4, v7

    sub-float/2addr v5, v7

    goto/16 :goto_5

    .line 3659
    .end local v4    # "textWidth":F
    :cond_c
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v2, p0, v5, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 3660
    .local v2, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 3661
    new-instance v7, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v8, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    iget-object v10, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    iget-object v11, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v7, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_6
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v3, 0x0

    .line 3609
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3611
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3613
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3616
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-nez v1, :cond_2

    .line 3620
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3621
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v0, :cond_3

    .line 3626
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3628
    invoke-direct {p0, v0, v3, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3629
    return-void

    .line 3612
    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    return-void

    .line 3614
    :cond_1
    return-void

    .line 3617
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    .line 3622
    .restart local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "Use reference \'%s\' not found"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3623
    return-void
.end method

.method private static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 72
    .param p0, "lastX"    # F
    .param p1, "lastY"    # F
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "angle"    # F
    .param p5, "largeArcFlag"    # Z
    .param p6, "sweepFlag"    # Z
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "pather"    # Lcom/caverock/androidsvg/SVG$PathInterface;

    .prologue
    .line 2463
    cmpl-float v4, p0, p7

    if-nez v4, :cond_0

    cmpl-float v4, p1, p8

    if-nez v4, :cond_0

    .line 2467
    return-void

    .line 2471
    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, p2, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, p3, v4

    if-nez v4, :cond_2

    .line 2472
    :cond_1
    move-object/from16 v0, p9

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-interface {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    .line 2473
    return-void

    .line 2477
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 2478
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 2481
    move/from16 v0, p4

    float-to-double v4, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    rem-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v11, v4

    .line 2482
    .local v11, "angleRad":F
    float-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 2483
    .local v20, "cosAngle":D
    float-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    .line 2490
    .local v48, "sinAngle":D
    sub-float v4, p0, p7

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v30, v4, v6

    .line 2491
    .local v30, "dx2":D
    sub-float v4, p1, p8

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v32, v4, v6

    .line 2494
    .local v32, "dy2":D
    mul-double v4, v20, v30

    mul-double v6, v48, v32

    add-double v64, v4, v6

    .line 2495
    .local v64, "x1":D
    move-wide/from16 v0, v48

    neg-double v4, v0

    mul-double v4, v4, v30

    mul-double v6, v20, v32

    add-double v68, v4, v6

    .line 2497
    .local v68, "y1":D
    mul-float v4, p2, p2

    float-to-double v0, v4

    move-wide/from16 v42, v0

    .line 2498
    .local v42, "rx_sq":D
    mul-float v4, p3, p3

    float-to-double v0, v4

    move-wide/from16 v44, v0

    .line 2499
    .local v44, "ry_sq":D
    mul-double v66, v64, v64

    .line 2500
    .local v66, "x1_sq":D
    mul-double v70, v68, v68

    .line 2505
    .local v70, "y1_sq":D
    div-double v4, v66, v42

    div-double v6, v70, v44

    add-double v40, v4, v6

    .line 2506
    .local v40, "radiiCheck":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v40, v4

    if-lez v4, :cond_3

    .line 2507
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float p2, p2, v4

    .line 2508
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float p3, p3, v4

    .line 2509
    mul-float v4, p2, p2

    float-to-double v0, v4

    move-wide/from16 v42, v0

    .line 2510
    mul-float v4, p3, p3

    float-to-double v0, v4

    move-wide/from16 v44, v0

    .line 2514
    :cond_3
    move/from16 v0, p5

    move/from16 v1, p6

    if-eq v0, v1, :cond_7

    const/4 v4, 0x1

    :goto_0
    int-to-double v0, v4

    move-wide/from16 v46, v0

    .line 2515
    .local v46, "sign":D
    mul-double v4, v42, v44

    mul-double v6, v42, v70

    sub-double/2addr v4, v6

    mul-double v6, v44, v66

    sub-double/2addr v4, v6

    mul-double v6, v42, v70

    mul-double v8, v44, v66

    add-double/2addr v6, v8

    div-double v50, v4, v6

    .line 2516
    .local v50, "sq":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v50, v4

    if-gez v4, :cond_4

    const-wide/16 v50, 0x0

    .line 2517
    :cond_4
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double v18, v46, v4

    .line 2518
    .local v18, "coef":D
    move/from16 v0, p2

    float-to-double v4, v0

    mul-double v4, v4, v68

    move/from16 v0, p3

    float-to-double v6, v0

    div-double/2addr v4, v6

    mul-double v24, v18, v4

    .line 2519
    .local v24, "cx1":D
    move/from16 v0, p3

    float-to-double v4, v0

    mul-double v4, v4, v64

    move/from16 v0, p2

    float-to-double v6, v0

    div-double/2addr v4, v6

    neg-double v4, v4

    mul-double v28, v18, v4

    .line 2522
    .local v28, "cy1":D
    add-float v4, p0, p7

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v52, v4, v6

    .line 2523
    .local v52, "sx2":D
    add-float v4, p1, p8

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v54, v4, v6

    .line 2524
    .local v54, "sy2":D
    mul-double v4, v20, v24

    mul-double v6, v48, v28

    sub-double/2addr v4, v6

    add-double v22, v52, v4

    .line 2525
    .local v22, "cx":D
    mul-double v4, v48, v24

    mul-double v6, v20, v28

    add-double/2addr v4, v6

    add-double v26, v54, v4

    .line 2528
    .local v26, "cy":D
    sub-double v4, v64, v24

    move/from16 v0, p2

    float-to-double v6, v0

    div-double v56, v4, v6

    .line 2529
    .local v56, "ux":D
    sub-double v4, v68, v28

    move/from16 v0, p3

    float-to-double v6, v0

    div-double v58, v4, v6

    .line 2530
    .local v58, "uy":D
    move-wide/from16 v0, v64

    neg-double v4, v0

    sub-double v4, v4, v24

    move/from16 v0, p2

    float-to-double v6, v0

    div-double v60, v4, v6

    .line 2531
    .local v60, "vx":D
    move-wide/from16 v0, v68

    neg-double v4, v0

    sub-double v4, v4, v28

    move/from16 v0, p3

    float-to-double v6, v0

    div-double v62, v4, v6

    .line 2535
    .local v62, "vy":D
    mul-double v4, v56, v56

    mul-double v6, v58, v58

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 2536
    .local v36, "n":D
    move-wide/from16 v38, v56

    .line 2537
    .local v38, "p":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v58, v4

    if-gez v4, :cond_8

    const-wide/high16 v46, -0x4010000000000000L    # -1.0

    .line 2538
    :goto_1
    div-double v4, v56, v36

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    mul-double v4, v4, v46

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    .line 2541
    .local v14, "angleStart":D
    mul-double v4, v56, v56

    mul-double v6, v58, v58

    add-double/2addr v4, v6

    mul-double v6, v60, v60

    mul-double v8, v62, v62

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 2542
    mul-double v4, v56, v60

    mul-double v6, v58, v62

    add-double v38, v4, v6

    .line 2543
    mul-double v4, v56, v62

    mul-double v6, v58, v60

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    const-wide/high16 v46, -0x4010000000000000L    # -1.0

    .line 2544
    :goto_2
    div-double v4, v38, v36

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    mul-double v4, v4, v46

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    .line 2545
    .local v12, "angleExtent":D
    if-eqz p6, :cond_a

    .line 2547
    :cond_5
    if-nez p6, :cond_b

    .line 2550
    :cond_6
    :goto_3
    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v12, v4

    .line 2551
    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v14, v4

    .line 2557
    invoke-static {v14, v15, v12, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v16

    .line 2560
    .local v16, "bezierPoints":[F
    new-instance v34, Landroid/graphics/Matrix;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Matrix;-><init>()V

    .line 2561
    .local v34, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, v34

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2562
    move-object/from16 v0, v34

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2563
    move-wide/from16 v0, v22

    double-to-float v4, v0

    move-wide/from16 v0, v26

    double-to-float v5, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2564
    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2570
    move-object/from16 v0, v16

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    aput p7, v16, v4

    .line 2571
    move-object/from16 v0, v16

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput p8, v16, v4

    .line 2574
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    move-object/from16 v0, v16

    array-length v4, v0

    move/from16 v0, v17

    if-ge v0, v4, :cond_c

    .line 2576
    aget v5, v16, v17

    add-int/lit8 v4, v17, 0x1

    aget v6, v16, v4

    add-int/lit8 v4, v17, 0x2

    aget v7, v16, v4

    add-int/lit8 v4, v17, 0x3

    aget v8, v16, v4

    add-int/lit8 v4, v17, 0x4

    aget v9, v16, v4

    add-int/lit8 v4, v17, 0x5

    aget v10, v16, v4

    move-object/from16 v4, p9

    invoke-interface/range {v4 .. v10}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 2574
    add-int/lit8 v17, v17, 0x6

    goto :goto_4

    .line 2514
    .end local v12    # "angleExtent":D
    .end local v14    # "angleStart":D
    .end local v16    # "bezierPoints":[F
    .end local v17    # "i":I
    .end local v18    # "coef":D
    .end local v22    # "cx":D
    .end local v24    # "cx1":D
    .end local v26    # "cy":D
    .end local v28    # "cy1":D
    .end local v34    # "m":Landroid/graphics/Matrix;
    .end local v36    # "n":D
    .end local v38    # "p":D
    .end local v46    # "sign":D
    .end local v50    # "sq":D
    .end local v52    # "sx2":D
    .end local v54    # "sy2":D
    .end local v56    # "ux":D
    .end local v58    # "uy":D
    .end local v60    # "vx":D
    .end local v62    # "vy":D
    :cond_7
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 2537
    .restart local v18    # "coef":D
    .restart local v22    # "cx":D
    .restart local v24    # "cx1":D
    .restart local v26    # "cy":D
    .restart local v28    # "cy1":D
    .restart local v36    # "n":D
    .restart local v38    # "p":D
    .restart local v46    # "sign":D
    .restart local v50    # "sq":D
    .restart local v52    # "sx2":D
    .restart local v54    # "sy2":D
    .restart local v56    # "ux":D
    .restart local v58    # "uy":D
    .restart local v60    # "vx":D
    .restart local v62    # "vy":D
    :cond_8
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    .line 2543
    .restart local v14    # "angleStart":D
    :cond_9
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_2

    .line 2545
    .restart local v12    # "angleExtent":D
    :cond_a
    const-wide/16 v4, 0x0

    cmpl-double v4, v12, v4

    if-lez v4, :cond_5

    .line 2546
    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double/2addr v12, v4

    goto/16 :goto_3

    .line 2547
    :cond_b
    const-wide/16 v4, 0x0

    cmpg-double v4, v12, v4

    if-gez v4, :cond_6

    .line 2548
    const-wide v4, 0x4076800000000000L    # 360.0

    add-double/2addr v12, v4

    goto/16 :goto_3

    .line 2578
    .restart local v16    # "bezierPoints":[F
    .restart local v17    # "i":I
    .restart local v34    # "m":Landroid/graphics/Matrix;
    :cond_c
    return-void
.end method

.method private static arcToBeziers(DD)[F
    .locals 22
    .param p0, "angleStart"    # D
    .param p2, "angleExtent"    # D

    .prologue
    .line 2597
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x4056800000000000L    # 90.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v13, v0

    .line 2599
    .local v13, "numSegments":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    .line 2600
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    .line 2601
    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v16, p2, v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    .line 2604
    .local v4, "angleIncrement":F
    float-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide v18, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double v16, v16, v18

    float-to-double v0, v4

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    div-double v6, v16, v18

    .line 2606
    .local v6, "controlLength":D
    mul-int/lit8 v16, v13, 0x6

    move/from16 v0, v16

    new-array v5, v0, [F

    .line 2607
    .local v5, "coords":[F
    const/4 v14, 0x0

    .line 2609
    .local v14, "pos":I
    const/4 v12, 0x0

    .local v12, "i":I
    move v15, v14

    .end local v14    # "pos":I
    .local v15, "pos":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 2611
    int-to-float v0, v12

    move/from16 v16, v0

    mul-float v16, v16, v4

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, p0, v16

    .line 2613
    .local v2, "angle":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 2614
    .local v8, "dx":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 2616
    .local v10, "dy":D
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    mul-double v16, v6, v10

    sub-double v16, v8, v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v15

    .line 2617
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .restart local v15    # "pos":I
    mul-double v16, v6, v8

    add-double v16, v16, v10

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v14

    .line 2619
    float-to-double v0, v4

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 2620
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 2621
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 2622
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    mul-double v16, v6, v10

    add-double v16, v16, v8

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v15

    .line 2623
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .restart local v15    # "pos":I
    mul-double v16, v6, v8

    sub-double v16, v10, v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v5, v14

    .line 2625
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "pos":I
    .restart local v14    # "pos":I
    double-to-float v0, v8

    move/from16 v16, v0

    aput v16, v5, v15

    .line 2626
    add-int/lit8 v15, v14, 0x1

    .end local v14    # "pos":I
    .restart local v15    # "pos":I
    double-to-float v0, v10

    move/from16 v16, v0

    aput v16, v5, v14

    .line 2609
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2628
    .end local v2    # "angle":D
    .end local v8    # "dx":D
    .end local v10    # "dy":D
    :cond_0
    return-object v5
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;
    .locals 11
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1158
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_0

    move v2, v0

    .line 1159
    .local v2, "_x1":F
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_1

    move v3, v0

    .line 1160
    .local v3, "_y1":F
    :goto_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_2

    move v6, v0

    .line 1161
    .local v6, "_x2":F
    :goto_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v1, :cond_3

    move v7, v0

    .line 1163
    .local v7, "_y2":F
    :goto_3
    new-instance v10, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1164
    .local v10, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v6, v2

    sub-float v5, v7, v3

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v8, v6, v2

    sub-float v9, v7, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-object v10

    .line 1158
    .end local v2    # "_x1":F
    .end local v3    # "_y1":F
    .end local v6    # "_x2":F
    .end local v7    # "_y2":F
    .end local v10    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    .line 1159
    .restart local v2    # "_x1":F
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_1

    .line 1160
    .restart local v3    # "_y1":F
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_2

    .line 1161
    .restart local v6    # "_x2":F
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_3
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1215
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v9, v2

    .line 1217
    .local v9, "numPoints":I
    const/4 v2, 0x2

    if-lt v9, v2, :cond_0

    .line 1220
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1221
    .local v8, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v10

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v5, v11

    move-object v1, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1222
    .local v0, "lastPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    const/4 v3, 0x0

    .local v3, "x":F
    const/4 v4, 0x0

    .line 1224
    .local v4, "y":F
    const/4 v7, 0x2

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_1

    .line 1225
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v2, v7

    .line 1226
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v5, v7, 0x1

    aget v4, v2, v5

    .line 1227
    invoke-virtual {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1228
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v5, v3, v2

    iget v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v6, v4, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1230
    .local v1, "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    move-object v0, v1

    .line 1224
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 1218
    .end local v0    # "lastPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .end local v1    # "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v7    # "i":I
    .end local v8    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 1234
    .restart local v0    # "lastPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    .restart local v7    # "i":I
    .restart local v8    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :cond_1
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-nez v2, :cond_3

    .line 1248
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_2
    :goto_1
    return-object v8

    .line 1235
    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v10

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v11

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_2

    .line 1236
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v3, v2, v10

    .line 1237
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v2, v11

    .line 1238
    invoke-virtual {v0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1239
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v5, v3, v2

    iget v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v6, v4, v2

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1243
    .restart local v1    # "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 1244
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-interface {v8, v10, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 998
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 999
    .local v0, "pathBounds":Landroid/graphics/RectF;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1000
    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v1
.end method

.method private calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F
    .locals 2
    .param p1, "parentTextObj"    # Lcom/caverock/androidsvg/SVG$TextContainer;

    .prologue
    .line 1610
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;)V

    .line 1611
    .local v0, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1612
    iget v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return v1
.end method

.method private calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p2, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 1899
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1901
    .local v2, "m":Landroid/graphics/Matrix;
    if-nez p3, :cond_1

    .line 1902
    :cond_0
    return-object v2

    .line 1901
    :cond_1
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1904
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v9, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v5, v8, v9

    .line 1905
    .local v5, "xScale":F
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iget v9, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v7, v8, v9

    .line 1906
    .local v7, "yScale":F
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    neg-float v4, v8

    .line 1907
    .local v4, "xOffset":F
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    neg-float v6, v8

    .line 1910
    .local v6, "yOffset":F
    sget-object v8, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v8}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1920
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v8

    sget-object v9, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-eq v8, v9, :cond_3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1922
    .local v3, "scale":F
    :goto_0
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v1, v8, v3

    .line 1923
    .local v1, "imageW":F
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v0, v8, v3

    .line 1925
    .local v0, "imageH":F
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v8

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1939
    :goto_1
    :pswitch_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v8

    .line 1942
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 1959
    :goto_2
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v9, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1960
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1961
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1962
    return-object v2

    .line 1912
    .end local v0    # "imageH":F
    .end local v1    # "imageW":F
    .end local v3    # "scale":F
    :cond_2
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v9, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1913
    invoke-virtual {v2, v5, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1914
    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1915
    return-object v2

    .line 1920
    :cond_3
    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_0

    .line 1930
    .restart local v0    # "imageH":F
    .restart local v1    # "imageW":F
    .restart local v3    # "scale":F
    :pswitch_1
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v1

    div-float/2addr v8, v10

    sub-float/2addr v4, v8

    goto :goto_1

    .line 1935
    :pswitch_2
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v1

    sub-float/2addr v4, v8

    goto :goto_1

    .line 1947
    :pswitch_3
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v0

    div-float/2addr v8, v10

    sub-float/2addr v6, v8

    goto :goto_2

    .line 1952
    :pswitch_4
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v0

    sub-float/2addr v6, v8

    goto :goto_2

    .line 1925
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1942
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 1
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    .line 3423
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 3424
    return-void
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 11
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3429
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 3433
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v5

    .line 3434
    .local v5, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v5, :cond_3

    move-object v2, v5

    .line 3439
    check-cast v2, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 3442
    .local v2, "clipPath":Lcom/caverock/androidsvg/SVG$ClipPath;
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 3447
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    if-nez v9, :cond_5

    :cond_0
    move v6, v8

    .line 3449
    .local v6, "userUnits":Z
    :goto_0
    instance-of v9, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v9, :cond_6

    .line 3454
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3456
    if-eqz v6, :cond_7

    .line 3463
    :goto_1
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-nez v7, :cond_8

    .line 3470
    :goto_2
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v7

    iput-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3472
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3474
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 3475
    .local v3, "combinedPath":Landroid/graphics/Path;
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_8_R":Ljava/lang/Object;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3477
    .local v1, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v1, v8, v3, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_3

    .line 3430
    .end local v0    # "-l_8_R":Ljava/lang/Object;
    .end local v1    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v2    # "clipPath":Lcom/caverock/androidsvg/SVG$ClipPath;
    .end local v3    # "combinedPath":Landroid/graphics/Path;
    .end local v5    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v6    # "userUnits":Z
    :cond_2
    return-void

    .line 3435
    .restart local v5    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    aput-object v9, v8, v7

    const-string/jumbo v7, "ClipPath reference \'%s\' not found"

    invoke-static {v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3436
    return-void

    .line 3443
    .restart local v2    # "clipPath":Lcom/caverock/androidsvg/SVG$ClipPath;
    :cond_4
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v7, v7, v7, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3444
    return-void

    .line 3447
    :cond_5
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    move v6, v7

    goto :goto_0

    .line 3449
    .restart local v6    # "userUnits":Z
    :cond_6
    if-nez v6, :cond_1

    .line 3450
    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    const-string/jumbo v7, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    invoke-static {v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3451
    return-void

    .line 3458
    :cond_7
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 3459
    .local v4, "m":Landroid/graphics/Matrix;
    iget v7, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v9, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3460
    iget v7, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v9, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3461
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 3465
    .end local v4    # "m":Landroid/graphics/Matrix;
    :cond_8
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v7, v9}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 3479
    .restart local v0    # "-l_8_R":Ljava/lang/Object;
    .restart local v3    # "combinedPath":Landroid/graphics/Path;
    :cond_9
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3481
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3482
    return-void
.end method

.method private checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    const/4 v3, 0x0

    .line 3039
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-nez v0, :cond_0

    .line 3042
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-nez v0, :cond_1

    .line 3045
    :goto_1
    return-void

    .line 3040
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    goto :goto_0

    .line 3043
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    invoke-direct {p0, v3, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    goto :goto_1
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1854
    const-string/jumbo v2, "data:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1856
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_2

    .line 1859
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1860
    .local v0, "comma":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 1861
    :cond_0
    return-object v5

    .line 1855
    .end local v0    # "comma":I
    :cond_1
    return-object v5

    .line 1857
    :cond_2
    return-object v5

    .line 1860
    .restart local v0    # "comma":I
    :cond_3
    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    .line 1862
    add-int/lit8 v2, v0, -0x7

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ";base64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1864
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1865
    .local v1, "imageData":[B
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 1863
    .end local v1    # "imageData":[B
    :cond_4
    return-object v5
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 7
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontWeight"    # Ljava/lang/Integer;
    .param p3, "fontStyle"    # Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2298
    const/4 v0, 0x0

    .line 2301
    .local v0, "font":Landroid/graphics/Typeface;
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    if-eq p3, v5, :cond_0

    move v1, v3

    .line 2302
    .local v1, "italic":Z
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0x1f4

    if-gt v5, v6, :cond_1

    .line 2303
    if-nez v1, :cond_3

    move v2, v3

    .line 2305
    .local v2, "typefaceStyle":I
    :goto_1
    const-string/jumbo v3, "serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2307
    const-string/jumbo v3, "sans-serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2309
    const-string/jumbo v3, "monospace"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2311
    const-string/jumbo v3, "cursive"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2313
    const-string/jumbo v3, "fantasy"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2316
    .end local v0    # "font":Landroid/graphics/Typeface;
    :goto_2
    return-object v0

    .end local v1    # "italic":Z
    .end local v2    # "typefaceStyle":I
    .restart local v0    # "font":Landroid/graphics/Typeface;
    :cond_0
    move v1, v4

    .line 2301
    goto :goto_0

    .line 2302
    .restart local v1    # "italic":Z
    :cond_1
    if-nez v1, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    .line 2303
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 2306
    .restart local v2    # "typefaceStyle":I
    :cond_4
    sget-object v3, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2308
    :cond_5
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2310
    :cond_6
    sget-object v3, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2312
    :cond_7
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2

    .line 2314
    :cond_8
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2
.end method

.method private checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .prologue
    .line 413
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 416
    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 417
    .local v0, "bobj":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 419
    :goto_0
    return-void

    .line 414
    .end local v0    # "bobj":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_0
    return-void

    .line 418
    .restart local v0    # "bobj":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    goto :goto_0
.end method

.method private clamp255(F)I
    .locals 4
    .param p1, "val"    # F

    .prologue
    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 2322
    const/high16 v3, 0x43800000    # 256.0f

    mul-float/2addr v3, p1

    float-to-int v0, v3

    .line 2323
    .local v0, "i":I
    if-ltz v0, :cond_0

    if-gt v0, v1, :cond_1

    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private clipStatePop()V
    .locals 1

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 3532
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3533
    return-void
.end method

.method private clipStatePush()V
    .locals 2

    .prologue
    .line 3520
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 3522
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3524
    return-void
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 506
    return-void
.end method

.method private decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .locals 6
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "paintref"    # Lcom/caverock/androidsvg/SVG$PaintReference;

    .prologue
    const/4 v5, 0x0

    .line 3053
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3054
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v0, :cond_0

    .line 3067
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-nez v1, :cond_4

    .line 3069
    :goto_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    if-nez v1, :cond_5

    .line 3071
    :goto_1
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    if-nez v1, :cond_6

    .line 3074
    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_2
    return-void

    .line 3056
    .restart local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "%s reference \'%s\' not found"

    if-nez p1, :cond_1

    const-string/jumbo v1, "Stroke"

    :goto_3
    aput-object v1, v2, v5

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v2, v4

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3057
    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v1, :cond_2

    .line 3060
    if-nez p1, :cond_3

    .line 3063
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3065
    :goto_4
    return-void

    .line 3056
    :cond_1
    const-string/jumbo v1, "Fill"

    goto :goto_3

    .line 3058
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v1, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_4

    .line 3061
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v5, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_4

    :cond_4
    move-object v1, v0

    .line 3068
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    .line 3070
    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V

    goto :goto_1

    .line 3072
    :cond_6
    check-cast v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V

    goto :goto_2
.end method

.method private display()Z
    .locals 1

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1873
    const/4 v0, 0x1

    return v0

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    .line 428
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v2, v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-nez v2, :cond_1

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 440
    return-void

    .line 430
    :cond_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v2, Lcom/caverock/androidsvg/SVG$PaintReference;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 431
    .local v1, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 432
    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 433
    .local v0, "pattern":Lcom/caverock/androidsvg/SVG$Pattern;
    invoke-direct {p0, p1, p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V

    .line 434
    return-void
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .locals 7
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 448
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-eq v5, v6, :cond_1

    .line 482
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 456
    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 457
    .local v4, "transformedPath":Landroid/graphics/Path;
    invoke-virtual {p1, v0, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 459
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 462
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    .line 463
    .local v3, "shader":Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 464
    .local v1, "currentShaderMatrix":Landroid/graphics/Matrix;
    if-nez v3, :cond_2

    .line 472
    :goto_1
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 475
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 477
    if-eqz v3, :cond_0

    .line 478
    invoke-virtual {v3, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {v3, v1}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 466
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 467
    .local v2, "newShaderMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 468
    invoke-virtual {v3, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1
.end method

.method private duplicateCanvas()V
    .locals 6

    .prologue
    .line 738
    :try_start_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 739
    .local v1, "newBM":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 741
    .local v2, "newCanvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 742
    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    return-void

    .line 743
    .end local v1    # "newBM":Landroid/graphics/Bitmap;
    .end local v2    # "newCanvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Not enough memory to create temporary bitmaps for mask processing"

    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    throw v0
.end method

.method private enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextContainer;
    .param p2, "textprocessor"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;

    .prologue
    const/4 v4, 0x0

    .line 1409
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1412
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1413
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    const/4 v1, 0x1

    .line 1415
    .local v1, "isFirstChild":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1417
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1419
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-nez v3, :cond_1

    .line 1422
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1424
    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1410
    .end local v1    # "isFirstChild":Z
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    :cond_0
    return-void

    .line 1420
    .restart local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local v1    # "isFirstChild":Z
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    :cond_1
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-direct {p0, v5, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 1426
    :cond_3
    return-void
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 498
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SVGAndroidRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-void
.end method

.method private extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "parent"    # Lcom/caverock/androidsvg/SVG$TextContainer;
    .param p2, "str"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v4, 0x0

    .line 1696
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1697
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    const/4 v1, 0x1

    .line 1699
    .local v1, "isFirstChild":Z
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1701
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1703
    .local v0, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-nez v3, :cond_0

    .line 1705
    instance-of v3, v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-nez v3, :cond_1

    .line 1708
    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1704
    .restart local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 1706
    .restart local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_1
    check-cast v0, Lcom/caverock/androidsvg/SVG$TextSequence;

    .end local v0    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    iget-object v5, v0, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-direct {p0, v5, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    .line 1710
    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 6
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$GradientElement;
    .param p2, "href"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3302
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v2

    .line 3303
    .local v2, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v2, :cond_0

    .line 3308
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-eqz v3, :cond_1

    .line 3312
    if-eq v2, p1, :cond_2

    move-object v1, v2

    .line 3317
    check-cast v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    .line 3319
    .local v1, "grRef":Lcom/caverock/androidsvg/SVG$GradientElement;
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 3321
    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_4

    .line 3323
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v3, :cond_5

    .line 3325
    :goto_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3330
    :goto_3
    :try_start_0
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-nez v3, :cond_7

    .line 3333
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .end local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3338
    :goto_4
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 3340
    :goto_5
    return-void

    .line 3305
    .end local v1    # "grRef":Lcom/caverock/androidsvg/SVG$GradientElement;
    .restart local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const-string/jumbo v4, "Gradient reference \'%s\' not found"

    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3306
    return-void

    .line 3309
    :cond_1
    new-array v3, v4, [Ljava/lang/Object;

    const-string/jumbo v4, "Gradient href attributes must point to other gradient elements"

    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3310
    return-void

    .line 3313
    :cond_2
    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const-string/jumbo v4, "Circular reference in gradient href attribute \'%s\'"

    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3314
    return-void

    .line 3320
    .restart local v1    # "grRef":Lcom/caverock/androidsvg/SVG$GradientElement;
    :cond_3
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_0

    .line 3322
    :cond_4
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    goto :goto_1

    .line 3324
    :cond_5
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    goto :goto_2

    .line 3326
    :cond_6
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v3, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    goto :goto_3

    .line 3331
    :cond_7
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v3, v0

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .end local v2    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 3336
    :catch_0
    move-exception v3

    goto :goto_4

    .line 3339
    :cond_8
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 1
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    .param p2, "grRef"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .prologue
    .line 3345
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 3347
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    .line 3349
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    .line 3351
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_3

    .line 3353
    :goto_3
    return-void

    .line 3346
    :cond_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_0

    .line 3348
    :cond_1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 3350
    :cond_2
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2

    .line 3352
    :cond_3
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 1
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    .param p2, "grRef"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .prologue
    .line 3358
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    .line 3360
    :goto_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    .line 3362
    :goto_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    .line 3364
    :goto_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_3

    .line 3366
    :goto_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_4

    .line 3368
    :goto_4
    return-void

    .line 3359
    :cond_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_0

    .line 3361
    :cond_1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    .line 3363
    :cond_2
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2

    .line 3365
    :cond_3
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    .line 3367
    :cond_4
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_4
.end method

.method private fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 5
    .param p1, "pattern"    # Lcom/caverock/androidsvg/SVG$Pattern;
    .param p2, "href"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4018
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v2, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 4019
    .local v1, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v1, :cond_0

    .line 4024
    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v2, :cond_1

    .line 4028
    if-eq v1, p1, :cond_2

    move-object v0, v1

    .line 4033
    check-cast v0, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 4035
    .local v0, "pRef":Lcom/caverock/androidsvg/SVG$Pattern;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 4037
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    .line 4039
    :goto_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-eqz v2, :cond_5

    .line 4041
    :goto_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_6

    .line 4043
    :goto_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_7

    .line 4045
    :goto_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_8

    .line 4047
    :goto_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_9

    .line 4050
    :goto_6
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 4052
    :goto_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_b

    .line 4054
    :goto_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v2, :cond_c

    .line 4058
    :goto_9
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 4060
    :goto_a
    return-void

    .line 4021
    .end local v0    # "pRef":Lcom/caverock/androidsvg/SVG$Pattern;
    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const-string/jumbo v3, "Pattern reference \'%s\' not found"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4022
    return-void

    .line 4025
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "Pattern href attributes must point to other pattern elements"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4026
    return-void

    .line 4029
    :cond_2
    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const-string/jumbo v3, "Circular reference in pattern href attribute \'%s\'"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4030
    return-void

    .line 4036
    .restart local v0    # "pRef":Lcom/caverock/androidsvg/SVG$Pattern;
    :cond_3
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_0

    .line 4038
    :cond_4
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    goto :goto_1

    .line 4040
    :cond_5
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    goto :goto_2

    .line 4042
    :cond_6
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_3

    .line 4044
    :cond_7
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_4

    .line 4046
    :cond_8
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_5

    .line 4048
    :cond_9
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_6

    .line 4051
    :cond_a
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    goto :goto_7

    .line 4053
    :cond_b
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_8

    .line 4055
    :cond_c
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_9

    .line 4059
    :cond_d
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V
    .locals 34
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "pattern"    # Lcom/caverock/androidsvg/SVG$Pattern;

    .prologue
    .line 3888
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    if-nez v29, :cond_2

    :cond_0
    const/16 v18, 0x0

    .line 3892
    .local v18, "patternUnitsAreUser":Z
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_3

    .line 3895
    :goto_1
    if-nez v18, :cond_4

    .line 3905
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    if-nez v29, :cond_9

    const/16 v27, 0x0

    .line 3906
    .local v27, "x":F
    :goto_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    if-nez v29, :cond_a

    const/16 v28, 0x0

    .line 3907
    .local v28, "y":F
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    if-nez v29, :cond_b

    const/16 v26, 0x0

    .line 3908
    .local v26, "w":F
    :goto_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    if-nez v29, :cond_c

    const/4 v11, 0x0

    .line 3909
    .local v11, "h":F
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v30, v0

    mul-float v30, v30, v27

    add-float v27, v29, v30

    .line 3910
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v30, v0

    mul-float v30, v30, v28

    add-float v28, v29, v30

    .line 3911
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v29, v0

    mul-float v26, v26, v29

    .line 3912
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v29, v0

    mul-float v11, v11, v29

    .line 3914
    :goto_6
    const/16 v29, 0x0

    cmpl-float v29, v26, v29

    if-eqz v29, :cond_1

    const/16 v29, 0x0

    cmpl-float v29, v11, v29

    if-nez v29, :cond_d

    .line 3915
    :cond_1
    return-void

    .line 3888
    .end local v11    # "h":F
    .end local v18    # "patternUnitsAreUser":Z
    .end local v26    # "w":F
    .end local v27    # "x":F
    .end local v28    # "y":F
    :cond_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_0

    const/16 v18, 0x1

    goto/16 :goto_0

    .line 3893
    .restart local v18    # "patternUnitsAreUser":Z
    :cond_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3897
    :cond_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    if-nez v29, :cond_5

    const/16 v27, 0x0

    .line 3898
    .restart local v27    # "x":F
    :goto_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    if-nez v29, :cond_6

    const/16 v28, 0x0

    .line 3899
    .restart local v28    # "y":F
    :goto_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    if-nez v29, :cond_7

    const/16 v26, 0x0

    .line 3900
    .restart local v26    # "w":F
    :goto_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    if-nez v29, :cond_8

    const/4 v11, 0x0

    .restart local v11    # "h":F
    :goto_a
    goto :goto_6

    .line 3897
    .end local v11    # "h":F
    .end local v26    # "w":F
    .end local v27    # "x":F
    .end local v28    # "y":F
    :cond_5
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v27

    goto :goto_7

    .line 3898
    .restart local v27    # "x":F
    :cond_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v28

    goto :goto_8

    .line 3899
    .restart local v28    # "y":F
    :cond_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v26

    goto :goto_9

    .line 3900
    .restart local v26    # "w":F
    :cond_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    goto :goto_a

    .line 3905
    .end local v26    # "w":F
    .end local v27    # "x":F
    .end local v28    # "y":F
    :cond_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v27

    goto/16 :goto_2

    .line 3906
    .restart local v27    # "x":F
    :cond_a
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v28

    goto/16 :goto_3

    .line 3907
    .restart local v28    # "y":F
    :cond_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v26

    goto/16 :goto_4

    .line 3908
    .restart local v26    # "w":F
    :cond_c
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v29, v0

    const/high16 v30, 0x3f800000    # 1.0f

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    goto/16 :goto_5

    .line 3918
    .restart local v11    # "h":F
    :cond_d
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v29, v0

    if-nez v29, :cond_f

    sget-object v19, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3921
    .local v19, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3926
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 3927
    .local v7, "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v7, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 3928
    iget-object v0, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 3929
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3932
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v16, v0

    .line 3934
    .local v16, "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    if-nez v29, :cond_10

    .line 3959
    :cond_e
    :goto_c
    move-object/from16 v0, v16

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v29, v0

    sub-float v29, v29, v27

    div-float v29, v29, v26

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v26

    add-float v14, v27, v29

    .line 3960
    .local v14, "originX":F
    move-object/from16 v0, v16

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v29, v0

    sub-float v29, v29, v28

    div-float v29, v29, v11

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v11

    add-float v15, v28, v29

    .line 3962
    .local v15, "originY":F
    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v22

    .line 3963
    .local v22, "right":F
    invoke-virtual/range {v16 .. v16}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v8

    .line 3964
    .local v8, "bottom":F
    new-instance v23, Lcom/caverock/androidsvg/SVG$Box;

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 3965
    .local v23, "stepViewBox":Lcom/caverock/androidsvg/SVG$Box;
    move/from16 v25, v15

    .local v25, "stepY":F
    :goto_d
    cmpg-float v29, v25, v8

    if-gez v29, :cond_20

    const/16 v29, 0x1

    :goto_e
    if-nez v29, :cond_16

    .line 4007
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4008
    return-void

    .line 3918
    .end local v7    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .end local v8    # "bottom":F
    .end local v14    # "originX":F
    .end local v15    # "originY":F
    .end local v16    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .end local v19    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v22    # "right":F
    .end local v23    # "stepViewBox":Lcom/caverock/androidsvg/SVG$Box;
    .end local v25    # "stepY":F
    :cond_f
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v19, v0

    goto/16 :goto_b

    .line 3936
    .restart local v7    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .restart local v16    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v19    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3940
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    .line 3941
    .local v13, "inverse":Landroid/graphics/Matrix;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 3942
    const/16 v29, 0x8

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v30, v0

    aput v30, v20, v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v29, v0

    const/16 v30, 0x1

    aput v29, v20, v30

    const/16 v29, 0x2

    .line 3943
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v30

    aput v30, v20, v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v29, v0

    const/16 v30, 0x3

    aput v29, v20, v30

    const/16 v29, 0x4

    .line 3944
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v30

    aput v30, v20, v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v29

    const/16 v30, 0x5

    aput v29, v20, v30

    const/16 v29, 0x6

    .line 3945
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v30, v0

    aput v30, v20, v29

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v29

    const/16 v30, 0x7

    aput v29, v20, v30

    .line 3946
    .local v20, "pts":[F
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 3948
    new-instance v21, Landroid/graphics/RectF;

    const/16 v29, 0x0

    aget v29, v20, v29

    const/16 v30, 0x1

    aget v30, v20, v30

    const/16 v31, 0x0

    aget v31, v20, v31

    const/16 v32, 0x1

    aget v32, v20, v32

    move-object/from16 v0, v21

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3949
    .local v21, "rect":Landroid/graphics/RectF;
    const/4 v12, 0x2

    .local v12, "i":I
    :goto_f
    const/16 v29, 0x6

    move/from16 v0, v29

    if-gt v12, v0, :cond_15

    .line 3950
    aget v29, v20, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_11

    aget v29, v20, v12

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 3951
    :cond_11
    aget v29, v20, v12

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_12

    aget v29, v20, v12

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 3952
    :cond_12
    add-int/lit8 v29, v12, 0x1

    aget v29, v20, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    cmpg-float v29, v29, v30

    if-gez v29, :cond_13

    add-int/lit8 v29, v12, 0x1

    aget v29, v20, v29

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 3953
    :cond_13
    add-int/lit8 v29, v12, 0x1

    aget v29, v20, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v30, v0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_14

    add-int/lit8 v29, v12, 0x1

    aget v29, v20, v29

    move/from16 v0, v29

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 3949
    :cond_14
    add-int/lit8 v12, v12, 0x2

    goto :goto_f

    .line 3955
    :cond_15
    new-instance v16, Lcom/caverock/androidsvg/SVG$Box;

    .end local v16    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v29, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v31, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v32, v0

    sub-float v31, v31, v32

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v33, v0

    sub-float v32, v32, v33

    move-object/from16 v0, v16

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .restart local v16    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    goto/16 :goto_c

    .line 3967
    .end local v12    # "i":I
    .end local v13    # "inverse":Landroid/graphics/Matrix;
    .end local v20    # "pts":[F
    .end local v21    # "rect":Landroid/graphics/RectF;
    .restart local v8    # "bottom":F
    .restart local v14    # "originX":F
    .restart local v15    # "originY":F
    .restart local v22    # "right":F
    .restart local v23    # "stepViewBox":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v25    # "stepY":F
    :cond_16
    move/from16 v24, v14

    .local v24, "stepX":F
    :goto_10
    cmpg-float v29, v24, v22

    if-gez v29, :cond_1f

    const/16 v29, 0x1

    :goto_11
    if-nez v29, :cond_17

    .line 3965
    add-float v25, v25, v11

    goto/16 :goto_d

    .line 3969
    :cond_17
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 3970
    move/from16 v0, v25

    move-object/from16 v1, v23

    iput v0, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 3972
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_19

    .line 3978
    :goto_12
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v29, v0

    if-nez v29, :cond_1a

    .line 3984
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    if-nez v29, :cond_1b

    :cond_18
    const/16 v17, 0x1

    .line 3986
    .local v17, "patternContentUnitsAreUser":Z
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3987
    if-eqz v17, :cond_1c

    .line 3992
    .end local v17    # "patternContentUnitsAreUser":Z
    :goto_14
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v10

    .line 3995
    .local v10, "compositing":Z
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "-l_21_R":Ljava/lang/Object;
    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3996
    .local v9, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_15

    .line 3975
    .end local v6    # "-l_21_R":Ljava/lang/Object;
    .end local v9    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v10    # "compositing":Z
    :cond_19
    move-object/from16 v0, v23

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v29, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v30, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v31, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_12

    .line 3980
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v29, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_14

    .line 3984
    :cond_1b
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-nez v29, :cond_18

    const/16 v17, 0x0

    goto/16 :goto_13

    .line 3988
    .restart local v17    # "patternContentUnitsAreUser":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_14

    .line 3999
    .end local v17    # "patternContentUnitsAreUser":Z
    .restart local v6    # "-l_21_R":Ljava/lang/Object;
    .restart local v10    # "compositing":Z
    :cond_1d
    if-nez v10, :cond_1e

    .line 4003
    :goto_16
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3967
    add-float v24, v24, v26

    goto/16 :goto_10

    .line 4000
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_16

    .line 3967
    .end local v6    # "-l_21_R":Ljava/lang/Object;
    .end local v10    # "compositing":Z
    :cond_1f
    const/16 v29, 0x0

    goto/16 :goto_11

    .line 3965
    .end local v24    # "stepX":F
    :cond_20
    const/16 v29, 0x0

    goto/16 :goto_e
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .prologue
    .line 2987
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 2988
    .local v0, "newState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 2989
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    return-object v1
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "newState"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .prologue
    const/4 v4, 0x0

    .line 2995
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2999
    .local v2, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgElementBase;>;"
    :goto_0
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v3, :cond_0

    .line 3002
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v3, :cond_1

    .line 3004
    iget-object p1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0

    :cond_0
    move-object v3, p1

    .line 3000
    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 3008
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_5_R":Ljava/lang/Object;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 3009
    .local v1, "ancestor":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    invoke-direct {p0, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    goto :goto_2

    .line 3012
    .end local v1    # "ancestor":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_2
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v3

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3013
    iget-object v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v3, :cond_3

    .line 3018
    :goto_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 3021
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    iput-boolean v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 3023
    return-object p2

    .line 3014
    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_3
.end method

.method private getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-ne v0, v1, :cond_1

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0

    .line 1350
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 3538
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_0

    .line 3540
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3546
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3539
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3543
    :pswitch_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3540
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_0

    .line 2331
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$FillRule()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Style$FillRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2337
    :pswitch_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2330
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2334
    :pswitch_1
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 511
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SVGAndroidRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void
.end method

.method private isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 4
    .param p1, "style"    # Lcom/caverock/androidsvg/SVG$Style;
    .param p2, "flag"    # J

    .prologue
    .line 1968
    iget-wide v0, p1, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private makeLinearGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 24
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .prologue
    .line 3079
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 3082
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    :cond_0
    const/16 v20, 0x0

    .line 3083
    .local v20, "userUnits":Z
    :goto_1
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    .line 3086
    .local v18, "paint":Landroid/graphics/Paint;
    :goto_2
    if-nez v20, :cond_5

    .line 3096
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-nez v22, :cond_a

    const/4 v4, 0x0

    .line 3097
    .local v4, "_x1":F
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-nez v22, :cond_b

    const/4 v5, 0x0

    .line 3098
    .local v5, "_y1":F
    :goto_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    const/high16 v6, 0x3f800000    # 1.0f

    .line 3099
    .local v6, "_x2":F
    :goto_5
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-nez v22, :cond_d

    const/4 v7, 0x0

    .line 3103
    .local v7, "_y2":F
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3106
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3109
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 3110
    .local v16, "m":Landroid/graphics/Matrix;
    if-eqz v20, :cond_e

    .line 3115
    :goto_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    if-nez v22, :cond_f

    .line 3121
    :goto_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v17

    .line 3122
    .local v17, "numStops":I
    if-eqz v17, :cond_10

    .line 3132
    move/from16 v0, v17

    new-array v8, v0, [I

    .line 3133
    .local v8, "colours":[I
    move/from16 v0, v17

    new-array v9, v0, [F

    .line 3134
    .local v9, "positions":[F
    const/4 v14, 0x0

    .line 3135
    .local v14, "i":I
    const/high16 v15, -0x40800000    # -1.0f

    .line 3136
    .local v15, "lastOffset":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "-l_17_R":Ljava/lang/Object;
    :goto_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/caverock/androidsvg/SVG$SvgObject;

    .local v12, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object/from16 v19, v12

    .line 3138
    check-cast v19, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3139
    .local v19, "stop":Lcom/caverock/androidsvg/SVG$Stop;
    if-nez v14, :cond_12

    .line 3140
    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    aput v22, v9, v14

    .line 3141
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 3148
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v13, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3152
    .local v13, "col":Lcom/caverock/androidsvg/SVG$Colour;
    if-eqz v13, :cond_13

    .line 3154
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v22

    shl-int/lit8 v22, v22, 0x18

    iget v0, v13, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move/from16 v23, v0

    or-int v22, v22, v23

    aput v22, v8, v14

    .line 3155
    add-int/lit8 v14, v14, 0x1

    .line 3157
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_9

    .line 3080
    .end local v4    # "_x1":F
    .end local v5    # "_y1":F
    .end local v6    # "_x2":F
    .end local v7    # "_y2":F
    .end local v8    # "colours":[I
    .end local v9    # "positions":[F
    .end local v11    # "-l_17_R":Ljava/lang/Object;
    .end local v12    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v13    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    .end local v14    # "i":I
    .end local v15    # "lastOffset":F
    .end local v16    # "m":Landroid/graphics/Matrix;
    .end local v17    # "numStops":I
    .end local v18    # "paint":Landroid/graphics/Paint;
    .end local v19    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    .end local v20    # "userUnits":Z
    :cond_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3082
    :cond_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v20, 0x1

    goto/16 :goto_1

    .line 3083
    .restart local v20    # "userUnits":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    goto/16 :goto_2

    .line 3088
    .restart local v18    # "paint":Landroid/graphics/Paint;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v21

    .line 3089
    .local v21, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    const/4 v4, 0x0

    .line 3090
    .restart local v4    # "_x1":F
    :goto_c
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    const/4 v5, 0x0

    .line 3091
    .restart local v5    # "_y1":F
    :goto_d
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    move-object/from16 v0, v21

    iget v6, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 3092
    .restart local v6    # "_x2":F
    :goto_e
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    if-nez v22, :cond_9

    const/4 v7, 0x0

    .restart local v7    # "_y2":F
    :goto_f
    goto/16 :goto_6

    .line 3089
    .end local v4    # "_x1":F
    .end local v5    # "_y1":F
    .end local v6    # "_x2":F
    .end local v7    # "_y2":F
    :cond_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_c

    .line 3090
    .restart local v4    # "_x1":F
    :cond_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_d

    .line 3091
    .restart local v5    # "_y1":F
    :cond_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_e

    .line 3092
    .restart local v6    # "_x2":F
    :cond_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_f

    .line 3096
    .end local v4    # "_x1":F
    .end local v5    # "_y1":F
    .end local v6    # "_x2":F
    .end local v21    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :cond_a
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto/16 :goto_3

    .line 3097
    .restart local v4    # "_x1":F
    :cond_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    goto/16 :goto_4

    .line 3098
    .restart local v5    # "_y1":F
    :cond_c
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v6

    goto/16 :goto_5

    .line 3099
    .restart local v6    # "_x2":F
    :cond_d
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v7

    goto/16 :goto_6

    .line 3112
    .restart local v7    # "_y2":F
    .restart local v16    # "m":Landroid/graphics/Matrix;
    :cond_e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3113
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v23, v0

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_7

    .line 3117
    :cond_f
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_8

    .line 3124
    .restart local v17    # "numStops":I
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3125
    if-nez p1, :cond_11

    .line 3128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3129
    :goto_10
    return-void

    .line 3126
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_10

    .line 3139
    .restart local v8    # "colours":[I
    .restart local v9    # "positions":[F
    .restart local v11    # "-l_17_R":Ljava/lang/Object;
    .restart local v12    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local v14    # "i":I
    .restart local v15    # "lastOffset":F
    .restart local v19    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    :cond_12
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    cmpl-float v22, v22, v15

    if-gez v22, :cond_1

    .line 3145
    aput v15, v9, v14

    goto/16 :goto_a

    .line 3153
    .restart local v13    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    :cond_13
    sget-object v13, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    goto/16 :goto_b

    .line 3161
    .end local v12    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v13    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    .end local v19    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    :cond_14
    cmpl-float v22, v4, v6

    if-nez v22, :cond_15

    cmpl-float v22, v5, v7

    if-eqz v22, :cond_17

    :cond_15
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    .line 3168
    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3169
    .local v10, "tileMode":Landroid/graphics/Shader$TileMode;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v22, v0

    if-nez v22, :cond_18

    .line 3177
    :cond_16
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3180
    new-instance v3, Landroid/graphics/LinearGradient;

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3181
    .local v3, "gr":Landroid/graphics/LinearGradient;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3182
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3183
    return-void

    .line 3162
    .end local v3    # "gr":Landroid/graphics/LinearGradient;
    .end local v10    # "tileMode":Landroid/graphics/Shader$TileMode;
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3163
    add-int/lit8 v22, v17, -0x1

    aget v22, v8, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3164
    return-void

    .line 3171
    .restart local v10    # "tileMode":Landroid/graphics/Shader$TileMode;
    :cond_18
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v22, v0

    sget-object v23, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_19

    .line 3173
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v22, v0

    sget-object v23, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 3174
    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_11

    .line 3172
    :cond_19
    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_11
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 25
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;

    .prologue
    .line 3801
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    const/4 v13, 0x0

    .line 3802
    .local v13, "cx":F
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    const/4 v7, 0x0

    .line 3803
    .local v7, "cy":F
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v24

    .line 3805
    .local v24, "r":F
    sub-float v17, v13, v24

    .line 3806
    .local v17, "left":F
    sub-float v3, v7, v24

    .line 3807
    .local v3, "top":F
    add-float v4, v13, v24

    .line 3808
    .local v4, "right":F
    add-float v12, v7, v24

    .line 3810
    .local v12, "bottom":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_2

    .line 3814
    :goto_2
    const v2, 0x3f0d6289

    mul-float v23, v24, v2

    .line 3816
    .local v23, "cp":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3817
    .local v1, "p":Landroid/graphics/Path;
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3818
    add-float v2, v13, v23

    sub-float v5, v7, v23

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3819
    add-float v10, v7, v23

    add-float v11, v13, v23

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3820
    sub-float v15, v13, v23

    add-float v18, v7, v23

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3821
    sub-float v18, v7, v23

    sub-float v19, v13, v23

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3822
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3823
    return-object v1

    .line 3801
    .end local v1    # "p":Landroid/graphics/Path;
    .end local v3    # "top":F
    .end local v4    # "right":F
    .end local v7    # "cy":F
    .end local v12    # "bottom":F
    .end local v13    # "cx":F
    .end local v17    # "left":F
    .end local v23    # "cp":F
    .end local v24    # "r":F
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    goto :goto_0

    .line 3802
    .restart local v13    # "cx":F
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    .line 3811
    .restart local v3    # "top":F
    .restart local v4    # "right":F
    .restart local v7    # "cy":F
    .restart local v12    # "bottom":F
    .restart local v17    # "left":F
    .restart local v24    # "r":F
    :cond_2
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v24

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v24

    move/from16 v0, v17

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_2
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 27
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;

    .prologue
    .line 3829
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    const/4 v13, 0x0

    .line 3830
    .local v13, "cx":F
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    const/4 v7, 0x0

    .line 3831
    .local v7, "cy":F
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v25

    .line 3832
    .local v25, "rx":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v26

    .line 3834
    .local v26, "ry":F
    sub-float v17, v13, v25

    .line 3835
    .local v17, "left":F
    sub-float v3, v7, v26

    .line 3836
    .local v3, "top":F
    add-float v4, v13, v25

    .line 3837
    .local v4, "right":F
    add-float v12, v7, v26

    .line 3839
    .local v12, "bottom":F
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_2

    .line 3843
    :goto_2
    const v2, 0x3f0d6289

    mul-float v23, v25, v2

    .line 3844
    .local v23, "cpx":F
    const v2, 0x3f0d6289

    mul-float v24, v26, v2

    .line 3846
    .local v24, "cpy":F
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3847
    .local v1, "p":Landroid/graphics/Path;
    invoke-virtual {v1, v13, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3848
    add-float v2, v13, v23

    sub-float v5, v7, v24

    move v6, v4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3849
    add-float v10, v7, v24

    add-float v11, v13, v23

    move-object v8, v1

    move v9, v4

    move v14, v12

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3850
    sub-float v15, v13, v23

    add-float v18, v7, v24

    move-object v14, v1

    move/from16 v16, v12

    move/from16 v19, v17

    move/from16 v20, v7

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3851
    sub-float v18, v7, v24

    sub-float v19, v13, v23

    move-object/from16 v16, v1

    move/from16 v20, v3

    move/from16 v21, v13

    move/from16 v22, v3

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3852
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 3853
    return-object v1

    .line 3829
    .end local v1    # "p":Landroid/graphics/Path;
    .end local v3    # "top":F
    .end local v4    # "right":F
    .end local v7    # "cy":F
    .end local v12    # "bottom":F
    .end local v13    # "cx":F
    .end local v17    # "left":F
    .end local v23    # "cpx":F
    .end local v24    # "cpy":F
    .end local v25    # "rx":F
    .end local v26    # "ry":F
    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    goto :goto_0

    .line 3830
    .restart local v13    # "cx":F
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    .line 3840
    .restart local v3    # "top":F
    .restart local v4    # "right":F
    .restart local v7    # "cy":F
    .restart local v12    # "bottom":F
    .restart local v17    # "left":F
    .restart local v25    # "rx":F
    .restart local v26    # "ry":F
    :cond_2
    new-instance v2, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v5, v5, v25

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v6, v6, v26

    move/from16 v0, v17

    invoke-direct {v2, v0, v3, v5, v6}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_2
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;

    .prologue
    const/4 v5, 0x0

    .line 3721
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 3722
    .local v1, "x1":F
    :goto_0
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 3723
    .local v3, "y1":F
    :goto_1
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 3724
    .local v2, "x2":F
    :goto_2
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_3

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 3726
    .local v4, "y2":F
    :goto_3
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v5, :cond_4

    .line 3730
    :goto_4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 3731
    .local v0, "p":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3732
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3733
    return-object v0

    .end local v0    # "p":Landroid/graphics/Path;
    .end local v1    # "x1":F
    .end local v2    # "x2":F
    .end local v3    # "y1":F
    .end local v4    # "y2":F
    :cond_0
    move v1, v5

    .line 3721
    goto :goto_0

    .restart local v1    # "x1":F
    :cond_1
    move v3, v5

    .line 3722
    goto :goto_1

    .restart local v3    # "y1":F
    :cond_2
    move v2, v5

    .line 3723
    goto :goto_2

    .restart local v2    # "x2":F
    :cond_3
    move v4, v5

    .line 3724
    goto :goto_3

    .line 3727
    .restart local v4    # "y2":F
    :cond_4
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    sub-float v8, v2, v1

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v4, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_4
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;

    .prologue
    const/4 v3, 0x0

    .line 3859
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 3861
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v3

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3862
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3863
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v0

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3862
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 3865
    :cond_0
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-nez v2, :cond_1

    .line 3868
    :goto_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_2

    .line 3872
    :goto_2
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3873
    return-object v1

    .line 3866
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_1

    .line 3869
    :cond_2
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_2
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 23
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;

    .prologue
    .line 3741
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_2

    .line 3744
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_3

    .line 3746
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_4

    .line 3749
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v20

    .line 3750
    .local v20, "rx":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    .line 3752
    .local v21, "ry":F
    :goto_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, v20

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 3753
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move/from16 v0, v21

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 3754
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_5

    const/4 v3, 0x0

    .line 3755
    .local v3, "x":F
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_6

    const/4 v6, 0x0

    .line 3756
    .local v6, "y":F
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v22

    .line 3757
    .local v22, "w":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v18

    .line 3759
    .local v18, "h":F
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v4, :cond_7

    .line 3763
    :goto_3
    add-float v19, v3, v22

    .line 3764
    .local v19, "right":F
    add-float v11, v6, v18

    .line 3766
    .local v11, "bottom":F
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 3767
    .local v2, "p":Landroid/graphics/Path;
    const/4 v4, 0x0

    cmpl-float v4, v20, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    cmpl-float v4, v21, v4

    if-nez v4, :cond_8

    .line 3770
    :cond_1
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3771
    move/from16 v0, v19

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3772
    move/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3773
    invoke-virtual {v2, v3, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3774
    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3794
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 3795
    return-object v2

    .line 3741
    .end local v2    # "p":Landroid/graphics/Path;
    .end local v3    # "x":F
    .end local v6    # "y":F
    .end local v11    # "bottom":F
    .end local v18    # "h":F
    .end local v19    # "right":F
    .end local v20    # "rx":F
    .end local v21    # "ry":F
    .end local v22    # "w":F
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_0

    .line 3742
    const/16 v20, 0x0

    .line 3743
    .restart local v20    # "rx":F
    const/16 v21, 0x0

    .restart local v21    # "ry":F
    goto/16 :goto_0

    .line 3745
    .end local v20    # "rx":F
    .end local v21    # "ry":F
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    .restart local v21    # "ry":F
    move/from16 v20, v21

    .restart local v20    # "rx":F
    goto/16 :goto_0

    .line 3747
    .end local v20    # "rx":F
    .end local v21    # "ry":F
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v21

    .restart local v21    # "ry":F
    move/from16 v20, v21

    .restart local v20    # "rx":F
    goto/16 :goto_0

    .line 3754
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_1

    .line 3755
    .restart local v3    # "x":F
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto/16 :goto_2

    .line 3760
    .restart local v6    # "y":F
    .restart local v18    # "h":F
    .restart local v22    # "w":F
    :cond_7
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    move/from16 v0, v22

    move/from16 v1, v18

    invoke-direct {v4, v3, v6, v0, v1}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_3

    .line 3781
    .restart local v2    # "p":Landroid/graphics/Path;
    .restart local v11    # "bottom":F
    .restart local v19    # "right":F
    :cond_8
    const v4, 0x3f0d6289

    mul-float v16, v20, v4

    .line 3782
    .local v16, "cpx":F
    const v4, 0x3f0d6289

    mul-float v17, v21, v4

    .line 3784
    .local v17, "cpy":F
    add-float v4, v6, v21

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3785
    add-float v4, v6, v21

    sub-float v4, v4, v17

    add-float v5, v3, v20

    sub-float v5, v5, v16

    add-float v7, v3, v20

    move v8, v6

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3786
    sub-float v4, v19, v20

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3787
    sub-float v4, v19, v20

    add-float v5, v4, v16

    add-float v4, v6, v21

    sub-float v8, v4, v17

    add-float v10, v6, v21

    move-object v4, v2

    move/from16 v7, v19

    move/from16 v9, v19

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3788
    sub-float v4, v11, v21

    move/from16 v0, v19

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3789
    sub-float v4, v11, v21

    add-float v9, v4, v17

    sub-float v4, v19, v20

    add-float v10, v4, v16

    sub-float v12, v19, v20

    move-object v7, v2

    move/from16 v8, v19

    move v13, v11

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3790
    add-float v4, v3, v20

    invoke-virtual {v2, v4, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3791
    add-float v4, v3, v20

    sub-float v10, v4, v16

    sub-float v4, v11, v21

    add-float v13, v4, v17

    sub-float v15, v11, v21

    move-object v9, v2

    move v12, v3

    move v14, v3

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 3792
    add-float v4, v6, v21

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4
.end method

.method private makeRadialGradiant(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 23
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .prologue
    .line 3188
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_2

    .line 3191
    :goto_0
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    :cond_0
    const/16 v20, 0x0

    .line 3192
    .local v20, "userUnits":Z
    :goto_1
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    .line 3195
    .local v18, "paint":Landroid/graphics/Paint;
    :goto_2
    if-nez v20, :cond_5

    .line 3204
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    const/high16 v4, 0x3f000000    # 0.5f

    .line 3205
    .local v4, "_cx":F
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_a

    const/high16 v5, 0x3f000000    # 0.5f

    .line 3206
    .local v5, "_cy":F
    :goto_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    const/high16 v6, 0x3f000000    # 0.5f

    .line 3212
    .local v6, "_r":F
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3215
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3218
    new-instance v16, Landroid/graphics/Matrix;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Matrix;-><init>()V

    .line 3219
    .local v16, "m":Landroid/graphics/Matrix;
    if-eqz v20, :cond_c

    .line 3224
    :goto_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    .line 3230
    :goto_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v17

    .line 3231
    .local v17, "numStops":I
    if-eqz v17, :cond_e

    .line 3241
    move/from16 v0, v17

    new-array v7, v0, [I

    .line 3242
    .local v7, "colours":[I
    move/from16 v0, v17

    new-array v8, v0, [F

    .line 3243
    .local v8, "positions":[F
    const/4 v14, 0x0

    .line 3244
    .local v14, "i":I
    const/high16 v15, -0x40800000    # -1.0f

    .line 3245
    .local v15, "lastOffset":F
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "-l_16_R":Ljava/lang/Object;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/caverock/androidsvg/SVG$SvgObject;

    .local v11, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object/from16 v19, v11

    .line 3247
    check-cast v19, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3248
    .local v19, "stop":Lcom/caverock/androidsvg/SVG$Stop;
    if-nez v14, :cond_10

    .line 3249
    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    aput v21, v8, v14

    .line 3250
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 3257
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v12, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3261
    .local v12, "col":Lcom/caverock/androidsvg/SVG$Colour;
    if-eqz v12, :cond_11

    .line 3263
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v21

    shl-int/lit8 v21, v21, 0x18

    iget v0, v12, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move/from16 v22, v0

    or-int v21, v21, v22

    aput v21, v7, v14

    .line 3264
    add-int/lit8 v14, v14, 0x1

    .line 3266
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_8

    .line 3189
    .end local v4    # "_cx":F
    .end local v5    # "_cy":F
    .end local v6    # "_r":F
    .end local v7    # "colours":[I
    .end local v8    # "positions":[F
    .end local v10    # "-l_16_R":Ljava/lang/Object;
    .end local v11    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v12    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    .end local v14    # "i":I
    .end local v15    # "lastOffset":F
    .end local v16    # "m":Landroid/graphics/Matrix;
    .end local v17    # "numStops":I
    .end local v18    # "paint":Landroid/graphics/Paint;
    .end local v19    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    .end local v20    # "userUnits":Z
    :cond_2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3191
    :cond_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_0

    const/16 v20, 0x1

    goto/16 :goto_1

    .line 3192
    .restart local v20    # "userUnits":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    goto/16 :goto_2

    .line 3197
    .restart local v18    # "paint":Landroid/graphics/Paint;
    :cond_5
    new-instance v13, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v21, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v22, 0x42480000    # 50.0f

    move/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v13, v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 3198
    .local v13, "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    .line 3199
    .restart local v4    # "_cx":F
    :goto_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    .line 3200
    .restart local v5    # "_cy":F
    :goto_c
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    .restart local v6    # "_r":F
    :goto_d
    goto/16 :goto_5

    .line 3198
    .end local v4    # "_cx":F
    .end local v5    # "_cy":F
    .end local v6    # "_r":F
    :cond_6
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_b

    .line 3199
    .restart local v4    # "_cx":F
    :cond_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_c

    .line 3200
    .restart local v5    # "_cy":F
    :cond_8
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_d

    .line 3204
    .end local v4    # "_cx":F
    .end local v5    # "_cy":F
    .end local v13    # "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    :cond_9
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto/16 :goto_3

    .line 3205
    .restart local v4    # "_cx":F
    :cond_a
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    goto/16 :goto_4

    .line 3206
    .restart local v5    # "_cy":F
    :cond_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v6

    goto/16 :goto_5

    .line 3221
    .restart local v6    # "_r":F
    .restart local v16    # "m":Landroid/graphics/Matrix;
    :cond_c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3222
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto/16 :goto_6

    .line 3226
    :cond_d
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto/16 :goto_7

    .line 3233
    .restart local v17    # "numStops":I
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3234
    if-nez p1, :cond_f

    .line 3237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3238
    :goto_e
    return-void

    .line 3235
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_e

    .line 3248
    .restart local v7    # "colours":[I
    .restart local v8    # "positions":[F
    .restart local v10    # "-l_16_R":Ljava/lang/Object;
    .restart local v11    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local v14    # "i":I
    .restart local v15    # "lastOffset":F
    .restart local v19    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    :cond_10
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    cmpl-float v21, v21, v15

    if-gez v21, :cond_1

    .line 3254
    aput v15, v8, v14

    goto/16 :goto_9

    .line 3262
    .restart local v12    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    :cond_11
    sget-object v12, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    goto/16 :goto_a

    .line 3270
    .end local v11    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v12    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    .end local v19    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    :cond_12
    const/16 v21, 0x0

    cmpl-float v21, v6, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_14

    .line 3277
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3278
    .local v9, "tileMode":Landroid/graphics/Shader$TileMode;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    if-nez v21, :cond_15

    .line 3286
    :cond_13
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3289
    new-instance v3, Landroid/graphics/RadialGradient;

    invoke-direct/range {v3 .. v9}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3290
    .local v3, "gr":Landroid/graphics/RadialGradient;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3291
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3292
    return-void

    .line 3271
    .end local v3    # "gr":Landroid/graphics/RadialGradient;
    .end local v9    # "tileMode":Landroid/graphics/Shader$TileMode;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3272
    add-int/lit8 v21, v17, -0x1

    aget v21, v7, v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3273
    return-void

    .line 3280
    .restart local v9    # "tileMode":Landroid/graphics/Shader$TileMode;
    :cond_15
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    sget-object v22, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_16

    .line 3282
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v21, v0

    sget-object v22, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 3283
    sget-object v9, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_f

    .line 3281
    :cond_16
    sget-object v9, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_f
.end method

.method private parentPop()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 376
    return-void
.end method

.method private parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    const/4 v4, 0x0

    .line 702
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 720
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 721
    return-void

    .line 702
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v2, :cond_0

    .line 704
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 705
    .local v1, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    .line 706
    check-cast v1, Lcom/caverock/androidsvg/SVG$Mask;

    .end local v1    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 708
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processMaskBitmaps()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 711
    .local v0, "maskedContent":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Canvas;

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 712
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 714
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 715
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 716
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 717
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private processMaskBitmaps()Landroid/graphics/Bitmap;
    .locals 27

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 755
    .local v1, "mask":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Bitmap;

    .line 759
    .local v22, "maskedContent":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 760
    .local v4, "w":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    .line 761
    .local v20, "h":I
    new-array v2, v4, [I

    .line 762
    .local v2, "maskBuf":[I
    new-array v0, v4, [I

    move-object/from16 v23, v0

    .line 763
    .local v23, "maskedContentBuf":[I
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    move/from16 v0, v20

    if-ge v6, v0, :cond_2

    .line 765
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 766
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move v10, v4

    move v12, v6

    move v13, v4

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 767
    const/16 v26, 0x0

    .local v26, "x":I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v4, :cond_1

    .line 769
    aget v24, v2, v26

    .line 770
    .local v24, "px":I
    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 771
    .local v16, "b":I
    shr-int/lit8 v3, v24, 0x8

    and-int/lit16 v0, v3, 0xff

    move/from16 v19, v0

    .line 772
    .local v19, "g":I
    shr-int/lit8 v3, v24, 0x10

    and-int/lit16 v0, v3, 0xff

    move/from16 v25, v0

    .line 773
    .local v25, "r":I
    shr-int/lit8 v3, v24, 0x18

    and-int/lit16 v15, v3, 0xff

    .line 774
    .local v15, "a":I
    if-eqz v15, :cond_0

    .line 779
    move/from16 v0, v25

    mul-int/lit16 v3, v0, 0x1b33

    move/from16 v0, v19

    mul-int/lit16 v5, v0, 0x5b92

    add-int/2addr v3, v5

    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x93a

    add-int/2addr v3, v5

    mul-int/2addr v3, v15

    const v5, 0x7f8000

    div-int v21, v3, v5

    .line 780
    .local v21, "maskAlpha":I
    aget v17, v23, v26

    .line 781
    .local v17, "content":I
    shr-int/lit8 v3, v17, 0x18

    and-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    .line 782
    .local v18, "contentAlpha":I
    mul-int v3, v18, v21

    div-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    .line 783
    const v3, 0xffffff

    and-int v3, v3, v17

    shl-int/lit8 v5, v18, 0x18

    or-int/2addr v3, v5

    aput v3, v23, v26

    .line 767
    .end local v17    # "content":I
    .end local v18    # "contentAlpha":I
    .end local v21    # "maskAlpha":I
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 776
    :cond_0
    const/4 v3, 0x0

    aput v3, v23, v26

    goto :goto_2

    .line 785
    .end local v15    # "a":I
    .end local v16    # "b":I
    .end local v19    # "g":I
    .end local v24    # "px":I
    .end local v25    # "r":I
    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x1

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move v10, v4

    move v12, v6

    move v13, v4

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 763
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 787
    .end local v26    # "x":I
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 788
    return-object v22
.end method

.method private processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "textprocessor"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v9, p1

    .line 1432
    check-cast v9, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-virtual {p2, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1435
    instance-of v9, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-nez v9, :cond_1

    .line 1445
    instance-of v9, p1, Lcom/caverock/androidsvg/SVG$TSpan;

    if-nez v9, :cond_2

    .line 1485
    instance-of v9, p1, Lcom/caverock/androidsvg/SVG$TRef;

    if-nez v9, :cond_f

    .line 1517
    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_0
    return-void

    .line 1433
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    return-void

    .line 1438
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1440
    check-cast p1, Lcom/caverock/androidsvg/SVG$TextPath;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V

    .line 1443
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_0

    .line 1447
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    new-array v9, v12, [Ljava/lang/Object;

    const-string/jumbo v11, "TSpan render"

    invoke-static {v11, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v6, p1

    .line 1452
    check-cast v6, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 1454
    .local v6, "tspan":Lcom/caverock/androidsvg/SVG$TSpan;
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v9, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1456
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1483
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_0

    .line 1459
    :cond_4
    const/4 v7, 0x0

    .local v7, "x":F
    const/4 v8, 0x0

    .local v8, "y":F
    const/4 v1, 0x0

    .local v1, "dx":F
    const/4 v2, 0x0

    .line 1460
    .local v2, "dy":F
    instance-of v9, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-nez v9, :cond_5

    .line 1467
    :goto_2
    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$TSpan;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1469
    instance-of v9, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-nez v9, :cond_e

    .line 1474
    :goto_3
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1476
    .local v0, "compositing":Z
    invoke-direct {p0, v6, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1478
    if-eqz v0, :cond_3

    .line 1479
    invoke-direct {p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_1

    .line 1461
    .end local v0    # "compositing":Z
    :cond_5
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    if-nez v9, :cond_a

    :cond_6
    move-object v9, p2

    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v7, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 1462
    :goto_4
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    if-nez v9, :cond_b

    :cond_7
    move-object v9, p2

    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v8, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1463
    :goto_5
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    if-nez v9, :cond_c

    :cond_8
    move v1, v10

    .line 1464
    :goto_6
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    if-nez v9, :cond_d

    :cond_9
    move v2, v10

    :goto_7
    goto :goto_2

    .line 1461
    :cond_a
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_4

    .line 1462
    :cond_b
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_5

    .line 1463
    :cond_c
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_6

    .line 1464
    :cond_d
    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v6, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_7

    :cond_e
    move-object v9, p2

    .line 1470
    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v10, v7, v1

    iput v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    move-object v9, p2

    .line 1471
    check-cast v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v10, v8, v2

    iput v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    goto/16 :goto_3

    .line 1488
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v6    # "tspan":Lcom/caverock/androidsvg/SVG$TSpan;
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_f
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v5, p1

    .line 1490
    check-cast v5, Lcom/caverock/androidsvg/SVG$TRef;

    .line 1492
    .local v5, "tref":Lcom/caverock/androidsvg/SVG$TRef;
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v9, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1494
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-nez v9, :cond_11

    .line 1515
    :cond_10
    :goto_8
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_0

    .line 1496
    :cond_11
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$TRef;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v9

    check-cast v9, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1499
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v10, v5, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 1500
    .local v3, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v3, :cond_13

    .line 1510
    :cond_12
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v5, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    aput-object v10, v9, v12

    const-string/jumbo v10, "Tref reference \'%s\' not found"

    invoke-static {v10, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1500
    :cond_13
    instance-of v9, v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v9, :cond_12

    .line 1502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1503
    .local v4, "str":Ljava/lang/StringBuilder;
    check-cast v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1504
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_10

    .line 1505
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private pushLayer()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 671
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v5, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 678
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 681
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 695
    :cond_0
    :goto_0
    return v6

    .line 672
    :cond_1
    return v4

    .line 681
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 684
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_4

    .line 686
    :cond_3
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string/jumbo v2, "Mask reference \'%s\' not found"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v5, v1, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 688
    return v6

    .line 684
    :cond_4
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Mask;

    if-eqz v1, :cond_3

    .line 691
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->duplicateCanvas()V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Circle;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;

    .prologue
    const/4 v2, 0x0

    .line 1048
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Circle render"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    .line 1051
    :cond_0
    return-void

    .line 1050
    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1055
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1060
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    if-nez v2, :cond_4

    .line 1063
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v1

    .line 1064
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1066
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1067
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1069
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1071
    .local v0, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_5

    .line 1073
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_6

    .line 1076
    :goto_2
    if-nez v0, :cond_7

    .line 1078
    :goto_3
    return-void

    .line 1056
    .end local v0    # "compositing":Z
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_2
    return-void

    .line 1058
    :cond_3
    return-void

    .line 1061
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1072
    .restart local v0    # "compositing":Z
    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1074
    :cond_6
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1077
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Ellipse;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;

    .prologue
    const/4 v2, 0x0

    .line 1086
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Ellipse render"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1088
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    .line 1089
    :cond_0
    return-void

    .line 1088
    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1091
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1093
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1095
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1098
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    if-nez v2, :cond_4

    .line 1101
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v1

    .line 1102
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1104
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1105
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1107
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1109
    .local v0, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_5

    .line 1111
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_6

    .line 1114
    :goto_2
    if-nez v0, :cond_7

    .line 1116
    :goto_3
    return-void

    .line 1094
    .end local v0    # "compositing":Z
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_2
    return-void

    .line 1096
    :cond_3
    return-void

    .line 1099
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1110
    .restart local v0    # "compositing":Z
    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1112
    :cond_6
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1115
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Group;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Group;

    .prologue
    const/4 v1, 0x0

    .line 596
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Group render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 600
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    .line 607
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 609
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 611
    .local v0, "compositing":Z
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 613
    if-nez v0, :cond_2

    .line 616
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 617
    return-void

    .line 601
    .end local v0    # "compositing":Z
    :cond_0
    return-void

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 614
    .restart local v0    # "compositing":Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_1
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Image;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Image;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 1779
    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "Image render"

    invoke-static {v10, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1781
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v9, :cond_1

    .line 1783
    :cond_0
    return-void

    .line 1781
    :cond_1
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1782
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1785
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1789
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v9, :cond_3

    sget-object v7, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1792
    .local v7, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_0
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1793
    .local v6, "image":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_4

    .line 1801
    :goto_1
    if-eqz v6, :cond_6

    .line 1806
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v9, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1808
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1810
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1813
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-nez v9, :cond_9

    .line 1817
    :goto_2
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v9, :cond_a

    move v2, v8

    .line 1818
    .local v2, "_x":F
    :goto_3
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v9, :cond_b

    move v3, v8

    .line 1819
    .local v3, "_y":F
    :goto_4
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 1820
    .local v1, "_w":F
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 1821
    .local v0, "_h":F
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v10, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v10, v2, v3, v1, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1823
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1827
    :goto_5
    new-instance v9, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v9, v8, v8, v10, v11}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1828
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v11, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v10, v11, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1830
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1832
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1834
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    .line 1836
    .local v4, "compositing":Z
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 1838
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6, v8, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1840
    if-nez v4, :cond_d

    .line 1842
    :goto_6
    return-void

    .line 1786
    .end local v0    # "_h":F
    .end local v1    # "_w":F
    .end local v2    # "_x":F
    .end local v3    # "_y":F
    .end local v4    # "compositing":Z
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v7    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_2
    return-void

    .line 1789
    :cond_3
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_0

    .line 1795
    .restart local v6    # "image":Landroid/graphics/Bitmap;
    .restart local v7    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_4
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v5

    .line 1796
    .local v5, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    if-eqz v5, :cond_5

    .line 1799
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_1

    .line 1797
    :cond_5
    return-void

    .line 1802
    .end local v5    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    :cond_6
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    aput-object v9, v8, v11

    const-string/jumbo v9, "Could not locate image \'%s\'"

    invoke-static {v9, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1803
    return-void

    .line 1809
    :cond_7
    return-void

    .line 1811
    :cond_8
    return-void

    .line 1814
    :cond_9
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_2

    .line 1817
    :cond_a
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto/16 :goto_3

    .line 1818
    .restart local v2    # "_x":F
    :cond_b
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto/16 :goto_4

    .line 1824
    .restart local v0    # "_h":F
    .restart local v1    # "_w":F
    .restart local v3    # "_y":F
    :cond_c
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v11, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v12, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto/16 :goto_5

    .line 1841
    .restart local v4    # "compositing":Z
    :cond_d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_6
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Line;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;

    .prologue
    const/4 v2, 0x0

    .line 1124
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Line render"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1128
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1130
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1132
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_2

    .line 1135
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    if-nez v2, :cond_3

    .line 1138
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v1

    .line 1139
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1141
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1142
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1144
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1146
    .local v0, "compositing":Z
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1148
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1150
    if-nez v0, :cond_4

    .line 1152
    :goto_1
    return-void

    .line 1129
    .end local v0    # "compositing":Z
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_0
    return-void

    .line 1131
    :cond_1
    return-void

    .line 1133
    :cond_2
    return-void

    .line 1136
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1151
    .restart local v0    # "compositing":Z
    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_1
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Path;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;

    .prologue
    const/4 v2, 0x0

    .line 956
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Path render"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 960
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 962
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 964
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_3

    .line 967
    :cond_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-nez v2, :cond_4

    .line 970
    :goto_0
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v2, p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v1

    .line 972
    .local v1, "path":Landroid/graphics/Path;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v2, :cond_5

    .line 975
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 977
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 978
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 980
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 982
    .local v0, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_6

    .line 986
    :goto_2
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_7

    .line 989
    :goto_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 991
    if-nez v0, :cond_8

    .line 993
    :goto_4
    return-void

    .line 961
    .end local v0    # "compositing":Z
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_1
    return-void

    .line 963
    :cond_2
    return-void

    .line 964
    :cond_3
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_0

    .line 965
    return-void

    .line 968
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 973
    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_5
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 983
    .restart local v0    # "compositing":Z
    :cond_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 984
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_2

    .line 987
    :cond_7
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_3

    .line 992
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_4
.end method

.method private render(Lcom/caverock/androidsvg/SVG$PolyLine;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;

    .prologue
    const/4 v3, 0x0

    .line 1175
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "PolyLine render"

    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v3, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1179
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1181
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1183
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_3

    .line 1186
    :cond_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    if-nez v3, :cond_4

    .line 1189
    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v1, v3

    .line 1190
    .local v1, "numPoints":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    .line 1193
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v2

    .line 1194
    .local v2, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1196
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1197
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1199
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1201
    .local v0, "compositing":Z
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v3, :cond_6

    .line 1203
    :goto_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v3, :cond_7

    .line 1206
    :goto_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1208
    if-nez v0, :cond_8

    .line 1210
    :goto_3
    return-void

    .line 1180
    .end local v0    # "compositing":Z
    .end local v1    # "numPoints":I
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_1
    return-void

    .line 1182
    :cond_2
    return-void

    .line 1183
    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v3, :cond_0

    .line 1184
    return-void

    .line 1187
    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1191
    .restart local v1    # "numPoints":I
    :cond_5
    return-void

    .line 1202
    .restart local v0    # "compositing":Z
    .restart local v2    # "path":Landroid/graphics/Path;
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1204
    :cond_7
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1209
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Polygon;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Polygon;

    .prologue
    const/4 v3, 0x0

    .line 1259
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Polygon render"

    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1261
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v3, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1263
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1265
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1267
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_3

    .line 1270
    :cond_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    if-nez v3, :cond_4

    .line 1273
    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Polygon;->points:[F

    array-length v1, v3

    .line 1274
    .local v1, "numPoints":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    .line 1277
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v2

    .line 1278
    .local v2, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1280
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1281
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1283
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1285
    .local v0, "compositing":Z
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v3, :cond_6

    .line 1287
    :goto_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v3, :cond_7

    .line 1290
    :goto_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1292
    if-nez v0, :cond_8

    .line 1294
    :goto_3
    return-void

    .line 1264
    .end local v0    # "compositing":Z
    .end local v1    # "numPoints":I
    .end local v2    # "path":Landroid/graphics/Path;
    :cond_1
    return-void

    .line 1266
    :cond_2
    return-void

    .line 1267
    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v3, :cond_0

    .line 1268
    return-void

    .line 1271
    :cond_4
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1275
    .restart local v1    # "numPoints":I
    :cond_5
    return-void

    .line 1286
    .restart local v0    # "compositing":Z
    .restart local v2    # "path":Landroid/graphics/Path;
    :cond_6
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1288
    :cond_7
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1293
    :cond_8
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Rect;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;

    .prologue
    const/4 v2, 0x0

    .line 1009
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Rect render"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    .line 1012
    :cond_0
    return-void

    .line 1011
    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1014
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1016
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1018
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1021
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    if-nez v2, :cond_4

    .line 1024
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v1

    .line 1025
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1027
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1028
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1030
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 1032
    .local v0, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v2, :cond_5

    .line 1034
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v2, :cond_6

    .line 1038
    :goto_2
    if-nez v0, :cond_7

    .line 1040
    :goto_3
    return-void

    .line 1017
    .end local v0    # "compositing":Z
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_2
    return-void

    .line 1019
    :cond_3
    return-void

    .line 1022
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1033
    .restart local v0    # "compositing":Z
    .restart local v1    # "path":Landroid/graphics/Path;
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    goto :goto_1

    .line 1035
    :cond_6
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    goto :goto_2

    .line 1039
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;

    .prologue
    .line 521
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, p1, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 522
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;

    .prologue
    .line 528
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 529
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p4, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p5, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 537
    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "Svg render"

    invoke-static {v8, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    if-nez p2, :cond_1

    .line 540
    :cond_0
    if-nez p3, :cond_3

    .line 544
    :goto_0
    if-eqz p5, :cond_4

    .line 547
    :goto_1
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v7, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 549
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 553
    const/4 v2, 0x0

    .line 554
    .local v2, "_x":F
    const/4 v3, 0x0

    .line 555
    .local v3, "_y":F
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v7, :cond_7

    .line 561
    :goto_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    .line 562
    .local v5, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    if-nez p2, :cond_a

    iget v1, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 563
    .local v1, "_w":F
    :goto_3
    if-nez p3, :cond_b

    iget v0, v5, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 564
    .local v0, "_h":F
    :goto_4
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v7, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v7, v2, v3, v1, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 566
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 570
    :goto_5
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 572
    if-nez p4, :cond_d

    .line 577
    :goto_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    .line 580
    .local v4, "compositing":Z
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 582
    const/4 v6, 0x1

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 584
    if-nez v4, :cond_e

    .line 587
    :goto_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 588
    return-void

    .line 539
    .end local v0    # "_h":F
    .end local v1    # "_w":F
    .end local v2    # "_x":F
    .end local v3    # "_y":F
    .end local v4    # "compositing":Z
    .end local v5    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :cond_1
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 541
    :cond_2
    return-void

    .line 540
    :cond_3
    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 545
    :cond_4
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v7, :cond_5

    sget-object p5, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_8
    goto :goto_1

    :cond_5
    iget-object p5, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_8

    .line 550
    :cond_6
    return-void

    .line 557
    .restart local v2    # "_x":F
    .restart local v3    # "_y":F
    :cond_7
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v7, :cond_8

    move v2, v6

    .line 558
    :goto_9
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v7, :cond_9

    move v3, v6

    :goto_a
    goto :goto_2

    .line 557
    :cond_8
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_9

    .line 558
    :cond_9
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_a

    .line 562
    .restart local v5    # "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    :cond_a
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_3

    .line 563
    .restart local v1    # "_w":F
    :cond_b
    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_4

    .line 567
    .restart local v0    # "_h":F
    :cond_c
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_5

    .line 573
    :cond_d
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v7, p4, p5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 574
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_6

    .line 585
    .restart local v4    # "compositing":Z
    :cond_e
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_7
.end method

.method private render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .prologue
    .line 279
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 285
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 287
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v0, :cond_1

    .line 289
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-nez v0, :cond_2

    .line 291
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Switch;

    if-nez v0, :cond_3

    .line 293
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-nez v0, :cond_4

    .line 295
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Image;

    if-nez v0, :cond_5

    .line 297
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-nez v0, :cond_6

    .line 299
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-nez v0, :cond_7

    .line 301
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-nez v0, :cond_8

    .line 303
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-nez v0, :cond_9

    .line 305
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-nez v0, :cond_a

    .line 307
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-nez v0, :cond_b

    .line 309
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-nez v0, :cond_c

    .line 311
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-nez v0, :cond_d

    .line 316
    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 317
    return-void

    .line 280
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    return-void

    .line 288
    :cond_1
    check-cast p1, Lcom/caverock/androidsvg/SVG$Svg;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;)V

    goto :goto_0

    .line 290
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    check-cast p1, Lcom/caverock/androidsvg/SVG$Use;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Use;)V

    goto :goto_0

    .line 292
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    check-cast p1, Lcom/caverock/androidsvg/SVG$Switch;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Switch;)V

    goto :goto_0

    .line 294
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_4
    check-cast p1, Lcom/caverock/androidsvg/SVG$Group;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Group;)V

    goto :goto_0

    .line 296
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_5
    check-cast p1, Lcom/caverock/androidsvg/SVG$Image;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Image;)V

    goto :goto_0

    .line 298
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_6
    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Path;)V

    goto :goto_0

    .line 300
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_7
    check-cast p1, Lcom/caverock/androidsvg/SVG$Rect;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Rect;)V

    goto :goto_0

    .line 302
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_8
    check-cast p1, Lcom/caverock/androidsvg/SVG$Circle;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Circle;)V

    goto :goto_0

    .line 304
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_9
    check-cast p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Ellipse;)V

    goto :goto_0

    .line 306
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_a
    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Line;)V

    goto :goto_0

    .line 308
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_b
    check-cast p1, Lcom/caverock/androidsvg/SVG$Polygon;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Polygon;)V

    goto :goto_0

    .line 310
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_c
    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$PolyLine;)V

    goto :goto_0

    .line 312
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_d
    check-cast p1, Lcom/caverock/androidsvg/SVG$Text;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Text;)V

    goto :goto_0
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Switch;

    .prologue
    const/4 v1, 0x0

    .line 800
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Switch render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 804
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    if-nez v1, :cond_1

    .line 811
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 813
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 815
    .local v0, "compositing":Z
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V

    .line 817
    if-nez v0, :cond_2

    .line 820
    :goto_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 821
    return-void

    .line 805
    .end local v0    # "compositing":Z
    :cond_0
    return-void

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 818
    .restart local v0    # "compositing":Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_1
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V
    .locals 8
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Symbol;
    .param p2, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "height"    # Lcom/caverock/androidsvg/SVG$Length;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1739
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Symbol render"

    invoke-static {v5, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    if-nez p2, :cond_1

    .line 1742
    :cond_0
    if-nez p3, :cond_3

    .line 1746
    :goto_0
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v4, :cond_4

    sget-object v3, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1748
    .local v3, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_1
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v4, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1750
    if-nez p2, :cond_5

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 1751
    .local v1, "_w":F
    :goto_2
    if-nez p3, :cond_6

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 1752
    .local v0, "_h":F
    :goto_3
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v5, v6, v6, v1, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1754
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1758
    :goto_4
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_8

    .line 1763
    :goto_5
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    .line 1765
    .local v2, "compositing":Z
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 1767
    if-nez v2, :cond_9

    .line 1770
    :goto_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1771
    return-void

    .line 1741
    .end local v0    # "_h":F
    .end local v1    # "_w":F
    .end local v2    # "compositing":Z
    .end local v3    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_1
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1743
    :cond_2
    return-void

    .line 1742
    :cond_3
    invoke-virtual {p3}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1746
    :cond_4
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_1

    .line 1750
    .restart local v3    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_5
    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_2

    .line 1751
    .restart local v1    # "_w":F
    :cond_6
    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_3

    .line 1755
    .restart local v0    # "_h":F
    :cond_7
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_4

    .line 1759
    :cond_8
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v5, v6, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1760
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v5, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_5

    .line 1768
    .restart local v2    # "compositing":Z
    :cond_9
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_6
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Text;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1302
    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "Text render"

    invoke-static {v10, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1304
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v8, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1306
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1309
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-nez v8, :cond_5

    .line 1313
    :goto_0
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    if-nez v8, :cond_6

    :cond_0
    move v6, v9

    .line 1314
    .local v6, "x":F
    :goto_1
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-nez v8, :cond_7

    :cond_1
    move v7, v9

    .line 1315
    .local v7, "y":F
    :goto_2
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-nez v8, :cond_8

    :cond_2
    move v2, v9

    .line 1316
    .local v2, "dx":F
    :goto_3
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-nez v8, :cond_9

    :cond_3
    move v3, v9

    .line 1319
    .local v3, "dy":F
    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    .line 1320
    .local v0, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v8, :cond_a

    .line 1329
    :goto_5
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v8, :cond_c

    .line 1334
    :goto_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1336
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1337
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1339
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1341
    .local v1, "compositing":Z
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v9, v6, v2

    add-float v10, v7, v3

    invoke-direct {v8, p0, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1343
    if-nez v1, :cond_d

    .line 1345
    :goto_7
    return-void

    .line 1307
    .end local v0    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .end local v1    # "compositing":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_4
    return-void

    .line 1310
    :cond_5
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v8, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1313
    :cond_6
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_1

    .line 1314
    .restart local v6    # "x":F
    :cond_7
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_2

    .line 1315
    .restart local v7    # "y":F
    :cond_8
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_3

    .line 1316
    .restart local v2    # "dx":F
    :cond_9
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto/16 :goto_4

    .line 1321
    .restart local v0    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .restart local v3    # "dy":F
    :cond_a
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v5

    .line 1322
    .local v5, "textWidth":F
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v8, :cond_b

    .line 1325
    sub-float/2addr v6, v5

    goto/16 :goto_5

    .line 1323
    :cond_b
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    sub-float/2addr v6, v8

    goto/16 :goto_5

    .line 1330
    .end local v5    # "textWidth":F
    :cond_c
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v4, p0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 1331
    .local v4, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1332
    new-instance v8, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v9, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    iget-object v10, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    iget-object v11, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v11

    iget-object v12, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v8, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_6

    .line 1344
    .end local v4    # "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    .restart local v1    # "compositing":Z
    :cond_d
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_7
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Use;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 885
    new-array v9, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "Use render"

    invoke-static {v10, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v9, :cond_1

    .line 888
    :cond_0
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v9, :cond_3

    .line 891
    :goto_0
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v9, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 893
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 897
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    .line 898
    .local v6, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v6, :cond_5

    .line 903
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-nez v9, :cond_6

    .line 908
    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 909
    .local v5, "m":Landroid/graphics/Matrix;
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v9, :cond_7

    move v2, v8

    .line 910
    .local v2, "_x":F
    :goto_2
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v9, :cond_8

    move v3, v8

    .line 911
    .local v3, "_y":F
    :goto_3
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 912
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v8, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 914
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 916
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v4

    .line 918
    .local v4, "compositing":Z
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 920
    instance-of v8, v6, Lcom/caverock/androidsvg/SVG$Svg;

    if-nez v8, :cond_9

    .line 929
    instance-of v8, v6, Lcom/caverock/androidsvg/SVG$Symbol;

    if-nez v8, :cond_c

    .line 939
    invoke-direct {p0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 942
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :goto_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 944
    if-nez v4, :cond_f

    .line 947
    :goto_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 948
    return-void

    .line 887
    .end local v2    # "_x":F
    .end local v3    # "_y":F
    .end local v4    # "compositing":Z
    .end local v5    # "m":Landroid/graphics/Matrix;
    :cond_1
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 889
    :cond_2
    return-void

    .line 888
    :cond_3
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    .line 894
    :cond_4
    return-void

    .line 899
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_5
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    aput-object v9, v8, v11

    const-string/jumbo v9, "Use reference \'%s\' not found"

    invoke-static {v9, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 900
    return-void

    .line 904
    :cond_6
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 909
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_7
    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_2

    .line 910
    .restart local v2    # "_x":F
    :cond_8
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    .line 922
    .restart local v3    # "_y":F
    .restart local v4    # "compositing":Z
    :cond_9
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    move-object v7, v6

    .line 923
    check-cast v7, Lcom/caverock/androidsvg/SVG$Svg;

    .line 924
    .local v7, "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v8, :cond_a

    iget-object v1, v7, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 925
    .local v1, "_w":Lcom/caverock/androidsvg/SVG$Length;
    :goto_6
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v8, :cond_b

    iget-object v0, v7, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 926
    .local v0, "_h":Lcom/caverock/androidsvg/SVG$Length;
    :goto_7
    invoke-direct {p0, v7, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 927
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_4

    .line 924
    .end local v0    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    .end local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    :cond_a
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_6

    .line 925
    .restart local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    :cond_b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_7

    .line 931
    .end local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .end local v7    # "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    :cond_c
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v8, :cond_d

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v1, v12, v8}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 932
    .restart local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    :goto_8
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v8, :cond_e

    new-instance v0, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v0, v12, v8}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 933
    .restart local v0    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    :goto_9
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 934
    check-cast v6, Lcom/caverock/androidsvg/SVG$Symbol;

    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v6, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)V

    .line 935
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto :goto_4

    .line 931
    .end local v0    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    .end local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_d
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_8

    .line 932
    .restart local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    :cond_e
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_9

    .line 945
    .end local v1    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_f
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_5
.end method

.method private renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;
    .param p2, "isContainer"    # Z

    .prologue
    .line 325
    if-nez p2, :cond_0

    .line 329
    :goto_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_4_R":Ljava/lang/Object;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 330
    .local v1, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    goto :goto_1

    .line 326
    .end local v0    # "-l_4_R":Ljava/lang/Object;
    .end local v1    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    goto :goto_0

    .line 333
    .restart local v0    # "-l_4_R":Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_2

    .line 336
    :goto_2
    return-void

    .line 334
    :cond_2
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    goto :goto_2
.end method

.method private renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 26
    .param p1, "marker"    # Lcom/caverock/androidsvg/SVG$Marker;
    .param p2, "pos"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .prologue
    .line 2868
    const/4 v9, 0x0

    .line 2871
    .local v9, "angle":F
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 2874
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 2886
    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v16

    .line 2890
    .local v16, "unitsScale":F
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 2892
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 2893
    .local v14, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2894
    invoke-virtual {v14, v9}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2895
    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2897
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_5

    const/4 v6, 0x0

    .line 2898
    .local v6, "_refX":F
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_6

    const/4 v7, 0x0

    .line 2899
    .local v7, "_refY":F
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    const/high16 v5, 0x40400000    # 3.0f

    .line 2900
    .local v5, "_markerWidth":F
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    if-nez v21, :cond_8

    const/high16 v4, 0x40400000    # 3.0f

    .line 2905
    .local v4, "_markerHeight":F
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    move-object/from16 v21, v0

    if-nez v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 2908
    .local v8, "_viewBox":Lcom/caverock/androidsvg/SVG$Box;
    :goto_6
    iget v0, v8, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v21, v0

    div-float v18, v5, v21

    .line 2909
    .local v18, "xScale":F
    iget v0, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v21, v0

    div-float v20, v4, v21

    .line 2912
    .local v20, "yScale":F
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v21, v0

    if-nez v21, :cond_a

    sget-object v15, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 2913
    .local v15, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_7
    sget-object v21, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 2920
    :goto_8
    neg-float v0, v6

    move/from16 v21, v0

    mul-float v21, v21, v18

    neg-float v0, v7

    move/from16 v22, v0

    mul-float v22, v22, v20

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 2966
    :goto_9
    invoke-virtual {v14}, Landroid/graphics/Matrix;->reset()V

    .line 2967
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2970
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v11

    .line 2972
    .local v11, "compositing":Z
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 2974
    if-nez v11, :cond_e

    .line 2977
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 2978
    return-void

    .line 2876
    .end local v4    # "_markerHeight":F
    .end local v5    # "_markerWidth":F
    .end local v6    # "_refX":F
    .end local v7    # "_refY":F
    .end local v8    # "_viewBox":Lcom/caverock/androidsvg/SVG$Box;
    .end local v11    # "compositing":Z
    .end local v14    # "m":Landroid/graphics/Matrix;
    .end local v15    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v16    # "unitsScale":F
    .end local v18    # "xScale":F
    .end local v20    # "yScale":F
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_2

    .line 2882
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v9

    goto/16 :goto_0

    .line 2878
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_0

    .line 2879
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v9, v0

    goto/16 :goto_0

    .line 2886
    :cond_4
    const/high16 v16, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 2897
    .restart local v14    # "m":Landroid/graphics/Matrix;
    .restart local v16    # "unitsScale":F
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto/16 :goto_2

    .line 2898
    .restart local v6    # "_refX":F
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto/16 :goto_3

    .line 2899
    .restart local v7    # "_refY":F
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto/16 :goto_4

    .line 2900
    .restart local v5    # "_markerWidth":F
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto/16 :goto_5

    .line 2905
    .restart local v4    # "_markerHeight":F
    :cond_9
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_6

    .line 2912
    .restart local v8    # "_viewBox":Lcom/caverock/androidsvg/SVG$Box;
    .restart local v18    # "xScale":F
    .restart local v20    # "yScale":F
    :cond_a
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto/16 :goto_7

    .line 2915
    .restart local v15    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :cond_b
    invoke-virtual {v15}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v21

    sget-object v22, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_c

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 2916
    .local v10, "aspectScale":F
    :goto_b
    move/from16 v20, v10

    move/from16 v18, v10

    goto/16 :goto_8

    .line 2915
    .end local v10    # "aspectScale":F
    :cond_c
    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    goto :goto_b

    .line 2926
    :cond_d
    iget v0, v8, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v21, v0

    mul-float v13, v21, v18

    .line 2927
    .local v13, "imageW":F
    iget v0, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    move/from16 v21, v0

    mul-float v12, v21, v20

    .line 2928
    .local v12, "imageH":F
    const/16 v17, 0x0

    .line 2929
    .local v17, "xOffset":F
    const/16 v19, 0x0

    .line 2930
    .local v19, "yOffset":F
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v21

    invoke-virtual {v15}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 2944
    :goto_c
    :pswitch_0
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$PreserveAspectRatio$Alignment()[I

    move-result-object v21

    .line 2947
    invoke-virtual {v15}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_1

    .line 2963
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v5, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto/16 :goto_9

    .line 2935
    :pswitch_1
    sub-float v21, v5, v13

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    .line 2928
    const/16 v22, 0x0

    .line 2935
    sub-float v17, v22, v21

    goto :goto_c

    .line 2940
    :pswitch_2
    sub-float v21, v5, v13

    .line 2928
    const/16 v22, 0x0

    .line 2940
    sub-float v17, v22, v21

    goto :goto_c

    .line 2952
    :pswitch_3
    sub-float v21, v4, v12

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    .line 2929
    const/16 v22, 0x0

    .line 2952
    sub-float v19, v22, v21

    goto :goto_d

    .line 2957
    :pswitch_4
    sub-float v21, v4, v12

    .line 2929
    const/16 v22, 0x0

    .line 2957
    sub-float v19, v22, v21

    goto :goto_d

    .line 2975
    .end local v12    # "imageH":F
    .end local v13    # "imageW":F
    .end local v17    # "xOffset":F
    .end local v19    # "yOffset":F
    .restart local v11    # "compositing":Z
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto/16 :goto_a

    .line 2930
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2947
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 2799
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 2802
    :cond_0
    const/4 v2, 0x0

    .line 2803
    .local v2, "_markerStart":Lcom/caverock/androidsvg/SVG$Marker;
    const/4 v1, 0x0

    .line 2804
    .local v1, "_markerMid":Lcom/caverock/androidsvg/SVG$Marker;
    const/4 v0, 0x0

    .line 2806
    .local v0, "_markerEnd":Lcom/caverock/androidsvg/SVG$Marker;
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-nez v7, :cond_3

    .line 2814
    .end local v2    # "_markerStart":Lcom/caverock/androidsvg/SVG$Marker;
    :goto_0
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v7, :cond_5

    .line 2822
    .end local v1    # "_markerMid":Lcom/caverock/androidsvg/SVG$Marker;
    :goto_1
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v7, :cond_7

    .line 2830
    .end local v0    # "_markerEnd":Lcom/caverock/androidsvg/SVG$Marker;
    :goto_2
    const/4 v5, 0x0

    .line 2831
    .local v5, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    instance-of v7, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-nez v7, :cond_9

    .line 2833
    instance-of v7, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-nez v7, :cond_a

    .line 2836
    check-cast p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object v5

    .line 2838
    :goto_3
    if-eqz v5, :cond_b

    .line 2841
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 2842
    .local v4, "markerCount":I
    if-eqz v4, :cond_c

    .line 2846
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v10, v9, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v10, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v10, v7, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2848
    if-nez v2, :cond_d

    .line 2851
    :goto_4
    if-nez v1, :cond_e

    .line 2858
    :cond_1
    if-nez v0, :cond_f

    .line 2860
    :goto_5
    return-void

    .line 2799
    .end local v4    # "markerCount":I
    .end local v5    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    :cond_2
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 2800
    return-void

    .line 2807
    .restart local v0    # "_markerEnd":Lcom/caverock/androidsvg/SVG$Marker;
    .restart local v1    # "_markerMid":Lcom/caverock/androidsvg/SVG$Marker;
    .restart local v2    # "_markerStart":Lcom/caverock/androidsvg/SVG$Marker;
    :cond_3
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    .line 2808
    .local v6, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v6, :cond_4

    .line 2811
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    aput-object v8, v7, v11

    const-string/jumbo v8, "Marker reference \'%s\' not found"

    invoke-static {v8, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move-object v2, v6

    .line 2809
    check-cast v2, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_0

    .line 2815
    .end local v2    # "_markerStart":Lcom/caverock/androidsvg/SVG$Marker;
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_5
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    .line 2816
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v6, :cond_6

    .line 2819
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    aput-object v8, v7, v11

    const-string/jumbo v8, "Marker reference \'%s\' not found"

    invoke-static {v8, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v6

    .line 2817
    check-cast v1, Lcom/caverock/androidsvg/SVG$Marker;

    goto/16 :goto_1

    .line 2823
    .end local v1    # "_markerMid":Lcom/caverock/androidsvg/SVG$Marker;
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_7
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v6

    .line 2824
    .restart local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v6, :cond_8

    .line 2827
    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    aput-object v8, v7, v11

    const-string/jumbo v8, "Marker reference \'%s\' not found"

    invoke-static {v8, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    move-object v0, v6

    .line 2825
    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    goto/16 :goto_2

    .line 2832
    .end local v0    # "_markerEnd":Lcom/caverock/androidsvg/SVG$Marker;
    .end local v6    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local v5    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :cond_9
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    check-cast p1, Lcom/caverock/androidsvg/SVG$Path;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v7, p0, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object v5

    goto/16 :goto_3

    .line 2834
    .restart local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    :cond_a
    check-cast p1, Lcom/caverock/androidsvg/SVG$Line;

    .end local p1    # "obj":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object v5

    goto/16 :goto_3

    .line 2839
    :cond_b
    return-void

    .line 2843
    .restart local v4    # "markerCount":I
    :cond_c
    return-void

    .line 2849
    :cond_d
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v2, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    goto/16 :goto_4

    .line 2853
    :cond_e
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_6
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_1

    .line 2854
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v1, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 2853
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 2859
    .end local v3    # "i":I
    :cond_f
    add-int/lit8 v7, v4, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v0, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    goto/16 :goto_5
.end method

.method private renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 12
    .param p1, "mask"    # Lcom/caverock/androidsvg/SVG$Mask;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    .line 4073
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Mask render"

    invoke-static {v7, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4075
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    if-nez v6, :cond_2

    :cond_0
    const/4 v2, 0x0

    .line 4078
    .local v2, "maskUnitsAreUser":Z
    :goto_0
    if-nez v2, :cond_3

    .line 4088
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_8

    const v4, -0x42333333    # -0.1f

    .line 4089
    .local v4, "x":F
    :goto_1
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_9

    const v5, -0x42333333    # -0.1f

    .line 4090
    .local v5, "y":F
    :goto_2
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_a

    const v3, 0x3f99999a    # 1.2f

    .line 4091
    .local v3, "w":F
    :goto_3
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_b

    const v0, 0x3f99999a    # 1.2f

    .line 4092
    .local v0, "h":F
    :goto_4
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v7, v4

    add-float v4, v6, v7

    .line 4093
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v7, v5

    add-float v5, v6, v7

    .line 4094
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v3, v6

    .line 4095
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v0, v6

    .line 4097
    :goto_5
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-nez v6, :cond_c

    .line 4098
    :cond_1
    return-void

    .line 4075
    .end local v0    # "h":F
    .end local v2    # "maskUnitsAreUser":Z
    .end local v3    # "w":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_2
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 4080
    .restart local v2    # "maskUnitsAreUser":Z
    :cond_3
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_4

    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 4081
    .restart local v3    # "w":F
    :goto_6
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_5

    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 4082
    .restart local v0    # "h":F
    :goto_7
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_6

    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    float-to-double v6, v6

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->width:F

    float-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v4, v6

    .line 4083
    .restart local v4    # "x":F
    :goto_8
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v6, :cond_7

    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    float-to-double v6, v6

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    float-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    .restart local v5    # "y":F
    :goto_9
    goto :goto_5

    .line 4080
    .end local v0    # "h":F
    .end local v3    # "w":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_4
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_6

    .line 4081
    .restart local v3    # "w":F
    :cond_5
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_7

    .line 4082
    .restart local v0    # "h":F
    :cond_6
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_8

    .line 4083
    .restart local v4    # "x":F
    :cond_7
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_9

    .line 4088
    .end local v0    # "h":F
    .end local v3    # "w":F
    .end local v4    # "x":F
    :cond_8
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, p0, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto/16 :goto_1

    .line 4089
    .restart local v4    # "x":F
    :cond_9
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->y:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, p0, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    goto/16 :goto_2

    .line 4090
    .restart local v5    # "y":F
    :cond_a
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, p0, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v3

    goto/16 :goto_3

    .line 4091
    .restart local v3    # "w":F
    :cond_b
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, p0, v7}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v0

    goto/16 :goto_4

    .line 4101
    .restart local v0    # "h":F
    :cond_c
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4103
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iput-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4107
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 4110
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v6, :cond_e

    :cond_d
    const/4 v1, 0x1

    .line 4111
    .local v1, "maskContentUnitsAreUser":Z
    :goto_a
    if-eqz v1, :cond_f

    .line 4117
    :goto_b
    const/4 v6, 0x0

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 4120
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4121
    return-void

    .line 4110
    .end local v1    # "maskContentUnitsAreUser":Z
    :cond_e
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v1, 0x0

    goto :goto_a

    .line 4112
    .restart local v1    # "maskContentUnitsAreUser":Z
    :cond_f
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4113
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v8, v8, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_b
.end method

.method private renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 15
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Switch;

    .prologue
    .line 826
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 827
    .local v5, "deviceLanguage":Ljava/lang/String;
    iget-object v13, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v6

    .line 830
    .local v6, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    invoke-virtual/range {p1 .. p1}, Lcom/caverock/androidsvg/SVG$Switch;->getChildren()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "-l_5_R":Ljava/lang/Object;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 833
    .local v3, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v13, v3, Lcom/caverock/androidsvg/SVG$SvgConditional;

    if-eqz v13, :cond_0

    move-object v4, v3

    .line 836
    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgConditional;

    .line 839
    .local v4, "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_0

    .line 843
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v12

    .line 844
    .local v12, "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v12, :cond_4

    .line 848
    :goto_0
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v9

    .line 849
    .local v9, "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v9, :cond_5

    .line 853
    :goto_1
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v10

    .line 854
    .local v10, "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v10, :cond_6

    .line 863
    :cond_1
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v11

    .line 864
    .local v11, "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v11, :cond_7

    .line 874
    :cond_2
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 877
    .end local v3    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v4    # "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    .end local v9    # "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v12    # "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    return-void

    .line 844
    .restart local v3    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .restart local v4    # "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    .restart local v12    # "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-interface {v12, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_0

    .line 849
    .restart local v9    # "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Lcom/caverock/androidsvg/SVGParser;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v13, v9}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_1

    .line 855
    .restart local v10    # "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz v6, :cond_0

    .line 857
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_11_R":Ljava/lang/Object;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 858
    .local v8, "mimeType":Ljava/lang/String;
    invoke-virtual {v6, v8}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto :goto_2

    .line 865
    .end local v0    # "-l_11_R":Ljava/lang/Object;
    .end local v8    # "mimeType":Ljava/lang/String;
    .restart local v11    # "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz v6, :cond_0

    .line 867
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "-l_12_R":Ljava/lang/Object;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 868
    .local v7, "fontName":Ljava/lang/String;
    iget-object v13, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v14, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v7, v13, v14}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v13

    if-eqz v13, :cond_0

    goto :goto_3
.end method

.method private renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextPath;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 1525
    new-array v8, v11, [Ljava/lang/Object;

    const-string/jumbo v10, "TextPath render"

    invoke-static {v10, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    iget-object v8, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v8, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1529
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1531
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1534
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v10, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v5

    .line 1535
    .local v5, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v5, :cond_2

    move-object v4, v5

    .line 1541
    check-cast v4, Lcom/caverock/androidsvg/SVG$Path;

    .line 1542
    .local v4, "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v10, v4, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v8, p0, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 1544
    .local v3, "path":Landroid/graphics/Path;
    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-nez v8, :cond_3

    .line 1547
    :goto_0
    new-instance v2, Landroid/graphics/PathMeasure;

    invoke-direct {v2, v3, v11}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 1549
    .local v2, "measure":Landroid/graphics/PathMeasure;
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v8, :cond_4

    move v6, v9

    .line 1552
    .local v6, "startOffset":F
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v0

    .line 1553
    .local v0, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v8, :cond_5

    .line 1562
    :goto_2
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TextPath;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradiantsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1564
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1566
    .local v1, "compositing":Z
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    invoke-direct {v8, p0, v3, v6, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1568
    if-nez v1, :cond_7

    .line 1570
    :goto_3
    return-void

    .line 1530
    .end local v0    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .end local v1    # "compositing":Z
    .end local v2    # "measure":Landroid/graphics/PathMeasure;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    .end local v5    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v6    # "startOffset":F
    :cond_0
    return-void

    .line 1532
    :cond_1
    return-void

    .line 1537
    .restart local v5    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    aput-object v9, v8, v11

    const-string/jumbo v9, "TextPath reference \'%s\' not found"

    invoke-static {v9, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    return-void

    .line 1545
    .restart local v3    # "path":Landroid/graphics/Path;
    .restart local v4    # "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    :cond_3
    iget-object v8, v4, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1549
    .restart local v2    # "measure":Landroid/graphics/PathMeasure;
    :cond_4
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    invoke-virtual {v8, p0, v10}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v6

    goto :goto_1

    .line 1554
    .restart local v0    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .restart local v6    # "startOffset":F
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v7

    .line 1555
    .local v7, "textWidth":F
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v0, v8, :cond_6

    .line 1558
    sub-float/2addr v6, v7

    goto :goto_2

    .line 1556
    :cond_6
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v6, v8

    goto :goto_2

    .line 1569
    .end local v7    # "textWidth":F
    .restart local v1    # "compositing":Z
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    goto :goto_3
.end method

.method private requiresCompositing()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 726
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 729
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_5

    .line 730
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 729
    :cond_1
    return v2

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-nez v0, :cond_0

    .line 727
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Masks are not supported when using getPicture()"

    invoke-static {v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 729
    goto :goto_1

    .line 730
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    if-eqz v0, :cond_1

    .line 729
    :cond_5
    return v1
.end method

.method private resetState()V
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 174
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    .line 177
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 179
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasViewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 181
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 182
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->directRendering:Z

    .line 185
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvasStack:Ljava/util/Stack;

    .line 189
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->bitmapStack:Ljava/util/Stack;

    .line 193
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    .line 194
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    .line 195
    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 5
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 2344
    move v1, p1

    .line 2345
    .local v1, "left":F
    move v3, p2

    .line 2346
    .local v3, "top":F
    add-float v2, p1, p3

    .line 2347
    .local v2, "right":F
    add-float v0, p2, p4

    .line 2349
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-nez v4, :cond_0

    .line 2356
    :goto_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2357
    return-void

    .line 2350
    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float v1, p1, v4

    .line 2351
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float v3, p2, v4

    .line 2352
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v2, v4

    .line 2353
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v0, v4

    goto :goto_0
.end method

.method private setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 3
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "isFill"    # Z
    .param p3, "paint"    # Lcom/caverock/androidsvg/SVG$SvgPaint;

    .prologue
    .line 2279
    if-nez p2, :cond_0

    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 2281
    .local v1, "paintOpacity":F
    instance-of v2, p3, Lcom/caverock/androidsvg/SVG$Colour;

    if-nez v2, :cond_1

    .line 2283
    instance-of v2, p3, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-nez v2, :cond_2

    .line 2286
    return-void

    .line 2279
    .end local v1    # "paintOpacity":F
    :cond_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto :goto_0

    .line 2282
    .restart local v1    # "paintOpacity":F
    :cond_1
    check-cast p3, Lcom/caverock/androidsvg/SVG$Colour;

    .end local p3    # "paint":Lcom/caverock/androidsvg/SVG$SvgPaint;
    iget v0, p3, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2288
    .local v0, "col":I
    :goto_1
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 2289
    if-nez p2, :cond_3

    .line 2292
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 2293
    :goto_2
    return-void

    .line 2284
    .end local v0    # "col":I
    .restart local p3    # "paint":Lcom/caverock/androidsvg/SVG$SvgPaint;
    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v2, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .restart local v0    # "col":I
    goto :goto_1

    .line 2290
    .end local p3    # "paint":Lcom/caverock/androidsvg/SVG$SvgPaint;
    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2
.end method

.method private setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V
    .locals 8
    .param p1, "isFill"    # Z
    .param p2, "ref"    # Lcom/caverock/androidsvg/SVG$SolidColor;

    .prologue
    const-wide v6, 0x100000000L

    const-wide v4, 0x80000000L

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3374
    if-nez p1, :cond_1

    .line 3395
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3401
    :goto_0
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3407
    :goto_1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v2, 0x180000000L

    invoke-direct {p0, v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_8

    .line 3413
    :cond_0
    :goto_2
    return-void

    .line 3376
    :cond_1
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v2, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3382
    :goto_3
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3388
    :goto_4
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    const-wide v2, 0x180000000L

    invoke-direct {p0, v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3390
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_2

    .line 3378
    :cond_2
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3379
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v3, :cond_3

    :goto_5
    iput-boolean v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_5

    .line 3384
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto :goto_4

    .line 3397
    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3398
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v3, :cond_6

    :goto_6
    iput-boolean v0, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_6

    .line 3403
    :cond_7
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    goto :goto_1

    .line 3409
    :cond_8
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_2
.end method

.method private statePop()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 357
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 358
    return-void
.end method

.method private statePush()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 347
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 349
    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isFirstChild"    # Z
    .param p3, "isLastChild"    # Z

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    if-nez v0, :cond_0

    .line 1723
    const-string/jumbo v0, "\\n"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1724
    const-string/jumbo v0, "\\t"

    const-string/jumbo v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1726
    if-nez p2, :cond_1

    .line 1728
    :goto_0
    if-nez p3, :cond_2

    .line 1730
    :goto_1
    const-string/jumbo v0, "\\s{2,}"

    const-string/jumbo v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1720
    :cond_0
    const-string/jumbo v0, "[\\n\\t]"

    const-string/jumbo v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1727
    :cond_1
    const-string/jumbo v0, "^\\s+"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1729
    :cond_2
    const-string/jumbo v0, "\\s+$"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 632
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v5, :cond_0

    .line 634
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v5, :cond_1

    .line 638
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 640
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 663
    :goto_0
    return-void

    .line 633
    .end local v1    # "m":Landroid/graphics/Matrix;
    :cond_0
    return-void

    .line 635
    :cond_1
    return-void

    .line 641
    .restart local v1    # "m":Landroid/graphics/Matrix;
    :cond_2
    const/16 v5, 0x8

    new-array v3, v5, [F

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v5, v3, v7

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    aput v5, v3, v8

    const/4 v5, 0x2

    .line 642
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v6

    aput v6, v3, v5

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    const/4 v6, 0x3

    aput v5, v3, v6

    const/4 v5, 0x4

    .line 643
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v6}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v6

    aput v6, v3, v5

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    const/4 v6, 0x5

    aput v5, v3, v6

    .line 644
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v5, v3, v9

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    const/4 v6, 0x7

    aput v5, v3, v6

    .line 646
    .local v3, "pts":[F
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 647
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 649
    new-instance v4, Landroid/graphics/RectF;

    aget v5, v3, v7

    aget v6, v3, v8

    aget v7, v3, v7

    aget v8, v3, v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 650
    .local v4, "rect":Landroid/graphics/RectF;
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_1
    if-gt v0, v9, :cond_7

    .line 651
    aget v5, v3, v0

    iget v6, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    aget v5, v3, v0

    iput v5, v4, Landroid/graphics/RectF;->left:F

    .line 652
    :cond_3
    aget v5, v3, v0

    iget v6, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    aget v5, v3, v0

    iput v5, v4, Landroid/graphics/RectF;->right:F

    .line 653
    :cond_4
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    iget v6, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    iput v5, v4, Landroid/graphics/RectF;->top:F

    .line 654
    :cond_5
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    iget v6, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 650
    :cond_6
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 657
    :cond_7
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 658
    .local v2, "parent":Lcom/caverock/androidsvg/SVG$SvgElement;
    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v5, :cond_8

    .line 661
    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v4, Landroid/graphics/RectF;->left:F

    iget v7, v4, Landroid/graphics/RectF;->top:F

    iget v8, v4, Landroid/graphics/RectF;->right:F

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVG$Box;->union(Lcom/caverock/androidsvg/SVG$Box;)V

    goto/16 :goto_0

    .line 659
    :cond_8
    iget v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v7, v4, Landroid/graphics/RectF;->right:F

    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    iput-object v5, v2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto/16 :goto_0
.end method

.method private updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 16
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "style"    # Lcom/caverock/androidsvg/SVG$Style;

    .prologue
    .line 1979
    const-wide/16 v14, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1984
    :goto_0
    const-wide/16 v14, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1989
    :goto_1
    const-wide/16 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1995
    :goto_2
    const-wide/16 v14, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2001
    :goto_3
    const-wide/16 v14, 0x1805

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_6

    .line 2006
    :goto_4
    const-wide/16 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_7

    .line 2012
    :goto_5
    const-wide/16 v14, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_8

    .line 2018
    :goto_6
    const-wide/16 v14, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_a

    .line 2023
    :goto_7
    const-wide/16 v14, 0x1818

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_b

    .line 2028
    :goto_8
    const-wide v14, 0x800000000L

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_c

    .line 2033
    :goto_9
    const-wide/16 v14, 0x20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_d

    .line 2039
    :goto_a
    const-wide/16 v14, 0x40

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_e

    .line 2058
    :goto_b
    const-wide/16 v14, 0x80

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_f

    .line 2077
    :goto_c
    const-wide/16 v14, 0x100

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_10

    .line 2083
    :goto_d
    const-wide/16 v14, 0x200

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_11

    .line 2088
    :goto_e
    const-wide/16 v14, 0x400

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_12

    .line 2093
    :goto_f
    const-wide/16 v14, 0x600

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_13

    .line 2126
    :goto_10
    const-wide/16 v14, 0x4000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_19

    .line 2134
    :goto_11
    const-wide/16 v14, 0x2000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_1a

    .line 2139
    :goto_12
    const-wide/32 v14, 0x8000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_1b

    .line 2150
    :goto_13
    const-wide/32 v14, 0x10000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_20

    .line 2156
    :goto_14
    const-wide/32 v14, 0x1a000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_21

    .line 2181
    :goto_15
    const-wide/32 v14, 0x20000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_27

    .line 2194
    :cond_0
    :goto_16
    const-wide v14, 0x1000000000L

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_2c

    .line 2199
    :goto_17
    const-wide/32 v14, 0x40000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_2d

    .line 2204
    :goto_18
    const-wide/32 v14, 0x80000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_2e

    .line 2209
    :goto_19
    const-wide/32 v14, 0x200000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_2f

    .line 2214
    :goto_1a
    const-wide/32 v14, 0x400000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_30

    .line 2219
    :goto_1b
    const-wide/32 v14, 0x800000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_31

    .line 2224
    :goto_1c
    const-wide/32 v14, 0x1000000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_32

    .line 2229
    :goto_1d
    const-wide/32 v14, 0x2000000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_33

    .line 2234
    :goto_1e
    const-wide/32 v14, 0x100000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_34

    .line 2239
    :goto_1f
    const-wide/32 v14, 0x10000000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_35

    .line 2244
    :goto_20
    const-wide/32 v14, 0x20000000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_36

    .line 2249
    :goto_21
    const-wide/32 v14, 0x40000000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_37

    .line 2254
    :goto_22
    const-wide/32 v14, 0x4000000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_38

    .line 2259
    :goto_23
    const-wide/32 v14, 0x8000000

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_39

    .line 2264
    :goto_24
    const-wide v14, 0x200000000L

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_3a

    .line 2269
    :goto_25
    const-wide v14, 0x400000000L

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v14, v15}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v13

    if-nez v13, :cond_3b

    .line 2274
    :goto_26
    return-void

    .line 1981
    :cond_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    goto/16 :goto_0

    .line 1986
    :cond_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    goto/16 :goto_1

    .line 1991
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1992
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v13, :cond_4

    const/4 v13, 0x0

    :goto_27
    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto/16 :goto_2

    :cond_4
    const/4 v13, 0x1

    goto :goto_27

    .line 1997
    :cond_5
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto/16 :goto_3

    .line 2003
    :cond_6
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto/16 :goto_4

    .line 2008
    :cond_7
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    goto/16 :goto_5

    .line 2014
    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2015
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-nez v13, :cond_9

    const/4 v13, 0x0

    :goto_28
    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    goto/16 :goto_6

    :cond_9
    const/4 v13, 0x1

    goto :goto_28

    .line 2020
    :cond_a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    goto/16 :goto_7

    .line 2025
    :cond_b
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v13}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto/16 :goto_8

    .line 2030
    :cond_c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    goto/16 :goto_9

    .line 2035
    :cond_d
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2036
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_a

    .line 2041
    :cond_e
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    .line 2042
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineCaps()[I

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCaps;

    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Style$LineCaps;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_b

    .line 2045
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_b

    .line 2048
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_b

    .line 2051
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/16 :goto_b

    .line 2060
    :cond_f
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2061
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Style$LineJoin()[I

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_c

    .line 2064
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_c

    .line 2067
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_c

    .line 2070
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto/16 :goto_c

    .line 2079
    :cond_10
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2080
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    goto/16 :goto_d

    .line 2085
    :cond_11
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_e

    .line 2090
    :cond_12
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    goto/16 :goto_f

    .line 2096
    :cond_13
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v13, :cond_14

    .line 2102
    const/4 v9, 0x0

    .line 2103
    .local v9, "intervalSum":F
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    array-length v11, v13

    .line 2106
    .local v11, "n":I
    rem-int/lit8 v13, v11, 0x2

    if-eqz v13, :cond_15

    mul-int/lit8 v3, v11, 0x2

    .line 2107
    .local v3, "arrayLen":I
    :goto_29
    new-array v10, v3, [F

    .line 2108
    .local v10, "intervals":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2a
    if-ge v8, v3, :cond_16

    .line 2109
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    rem-int v14, v8, v11

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    aput v13, v10, v8

    .line 2110
    aget v13, v10, v8

    add-float/2addr v9, v13

    .line 2108
    add-int/lit8 v8, v8, 0x1

    goto :goto_2a

    .line 2098
    .end local v3    # "arrayLen":I
    .end local v8    # "i":I
    .end local v9    # "intervalSum":F
    .end local v10    # "intervals":[F
    .end local v11    # "n":I
    :cond_14
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_10

    .restart local v9    # "intervalSum":F
    .restart local v11    # "n":I
    :cond_15
    move v3, v11

    .line 2106
    goto :goto_29

    .line 2112
    .restart local v3    # "arrayLen":I
    .restart local v8    # "i":I
    .restart local v10    # "intervals":[F
    :cond_16
    const/4 v13, 0x0

    cmpl-float v13, v9, v13

    if-nez v13, :cond_17

    .line 2113
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_10

    .line 2115
    :cond_17
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v12

    .line 2116
    .local v12, "offset":F
    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_18

    .line 2119
    rem-float v13, v12, v9

    add-float v12, v9, v13

    .line 2121
    :cond_18
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/DashPathEffect;

    invoke-direct {v14, v10, v12}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto/16 :goto_10

    .line 2128
    .end local v3    # "arrayLen":I
    .end local v8    # "i":I
    .end local v9    # "intervalSum":F
    .end local v10    # "intervals":[F
    .end local v11    # "n":I
    .end local v12    # "offset":F
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v4

    .line 2129
    .local v4, "currentFontSize":F
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2130
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2131
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v4}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_11

    .line 2136
    .end local v4    # "currentFontSize":F
    :cond_1a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    goto/16 :goto_12

    .line 2142
    :cond_1b
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1e

    .line 2144
    :cond_1c
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1f

    .line 2147
    :cond_1d
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_13

    .line 2142
    :cond_1e
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x64

    if-le v13, v14, :cond_1c

    .line 2143
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, -0x64

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_13

    .line 2144
    :cond_1f
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x384

    if-ge v13, v14, :cond_1d

    .line 2145
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x64

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto/16 :goto_13

    .line 2152
    :cond_20
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    goto/16 :goto_14

    .line 2158
    :cond_21
    const/4 v5, 0x0

    .line 2159
    .local v5, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    const/4 v6, 0x0

    .line 2161
    .local v6, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-nez v13, :cond_23

    .line 2173
    .end local v5    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .end local v6    # "font":Landroid/graphics/Typeface;
    :cond_22
    if-eqz v6, :cond_26

    .line 2177
    :goto_2b
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2178
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_15

    .line 2161
    .restart local v5    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .restart local v6    # "font":Landroid/graphics/Typeface;
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    if-eqz v13, :cond_22

    .line 2162
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v13}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v5

    .line 2164
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v6    # "font":Landroid/graphics/Typeface;
    .local v2, "-l_6_R":Ljava/lang/Object;
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2165
    .local v7, "fontName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 2166
    .restart local v6    # "font":Landroid/graphics/Typeface;
    if-eqz v6, :cond_25

    .line 2169
    :cond_24
    :goto_2d
    if-nez v6, :cond_22

    goto :goto_2c

    .line 2166
    :cond_25
    if-eqz v5, :cond_24

    .line 2167
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v7, v13, v14}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_2d

    .line 2175
    .end local v2    # "-l_6_R":Ljava/lang/Object;
    .end local v5    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    .end local v6    # "font":Landroid/graphics/Typeface;
    .end local v7    # "fontName":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v13, v13, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v14, v14, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const-string/jumbo v15, "sans-serif"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v6

    .restart local v6    # "font":Landroid/graphics/Typeface;
    goto :goto_2b

    .line 2183
    .end local v6    # "font":Landroid/graphics/Typeface;
    :cond_27
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2184
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v13, v15, :cond_28

    const/4 v13, 0x0

    :goto_2e
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2185
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v13, v15, :cond_29

    const/4 v13, 0x0

    :goto_2f
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2188
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x11

    if-lt v13, v14, :cond_0

    .line 2189
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v13, v15, :cond_2a

    const/4 v13, 0x0

    :goto_30
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2190
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v15, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-eq v13, v15, :cond_2b

    const/4 v13, 0x0

    :goto_31
    invoke-virtual {v14, v13}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto/16 :goto_16

    .line 2184
    :cond_28
    const/4 v13, 0x1

    goto :goto_2e

    .line 2185
    :cond_29
    const/4 v13, 0x1

    goto :goto_2f

    .line 2189
    :cond_2a
    const/4 v13, 0x1

    goto :goto_30

    .line 2190
    :cond_2b
    const/4 v13, 0x1

    goto :goto_31

    .line 2196
    :cond_2c
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    goto/16 :goto_17

    .line 2201
    :cond_2d
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto/16 :goto_18

    .line 2206
    :cond_2e
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    goto/16 :goto_19

    .line 2211
    :cond_2f
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    goto/16 :goto_1a

    .line 2216
    :cond_30
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    goto/16 :goto_1b

    .line 2221
    :cond_31
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    goto/16 :goto_1c

    .line 2226
    :cond_32
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    goto/16 :goto_1d

    .line 2231
    :cond_33
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    goto/16 :goto_1e

    .line 2236
    :cond_34
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    goto/16 :goto_1f

    .line 2241
    :cond_35
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    goto/16 :goto_20

    .line 2246
    :cond_36
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    goto/16 :goto_21

    .line 2251
    :cond_37
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    goto/16 :goto_22

    .line 2256
    :cond_38
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto/16 :goto_23

    .line 2261
    :cond_39
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    goto/16 :goto_24

    .line 2266
    :cond_3a
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    goto/16 :goto_25

    .line 2271
    :cond_3b
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v14, v13, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    goto/16 :goto_26

    .line 2042
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2061
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V
    .locals 4
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v3, :cond_1

    .line 385
    .local v1, "isRootSVG":Z
    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v3, v1}, Lcom/caverock/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    .line 388
    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v3, :cond_2

    .line 392
    :goto_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->hasCSSRules()Z

    move-result v3

    if-nez v3, :cond_3

    .line 403
    :cond_0
    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-nez v3, :cond_5

    .line 405
    :goto_2
    return-void

    .line 384
    .end local v1    # "isRootSVG":Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 389
    .restart local v1    # "isRootSVG":Z
    :cond_2
    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_1

    .line 394
    :cond_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG;->getCSSRules()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_5_R":Ljava/lang/Object;
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 396
    .local v2, "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-static {v3, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 397
    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_3

    .line 404
    .end local v0    # "-l_5_R":Ljava/lang/Object;
    .end local v2    # "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    :cond_5
    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    goto :goto_2
.end method

.method private viewportFill()V
    .locals 2

    .prologue
    .line 2366
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$Colour;

    if-nez v1, :cond_0

    .line 2368
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v1, v1, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-nez v1, :cond_1

    .line 2371
    return-void

    .line 2367
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2373
    .local v0, "col":I
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-nez v1, :cond_2

    .line 2376
    :goto_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2377
    return-void

    .line 2369
    .end local v0    # "col":I
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .restart local v0    # "col":I
    goto :goto_0

    .line 2374
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method private visible()Z
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1881
    const/4 v0, 0x1

    return v0

    .line 1880
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 492
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SVGAndroidRenderer"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void
.end method


# virtual methods
.method protected getCurrentFontSize()F
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getCurrentFontXHeight()F
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method protected getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0
.end method

.method protected getDPI()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    return v0
.end method

.method protected renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;Z)V
    .locals 6
    .param p1, "document"    # Lcom/caverock/androidsvg/SVG;
    .param p2, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;
    .param p4, "directRenderingMode"    # Z

    .prologue
    .line 251
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    .line 252
    iput-boolean p4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->directRenderingMode:Z

    .line 254
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v1

    .line 256
    .local v1, "rootObj":Lcom/caverock/androidsvg/SVG$Svg;
    if-eqz v1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->resetState()V

    .line 264
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 267
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 268
    if-nez p2, :cond_1

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 269
    :goto_0
    if-nez p3, :cond_2

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_1
    move-object v0, p0

    .line 267
    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 270
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "Nothing to render. Document is empty."

    invoke-static {v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    return-void

    :cond_1
    move-object v4, p2

    .line 268
    goto :goto_0

    :cond_2
    move-object v5, p3

    .line 269
    goto :goto_1
.end method
