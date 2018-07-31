.class public final Landroid/view/accessibility/CaptioningManager$CaptionStyle;
.super Ljava/lang/Object;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptionStyle"
.end annotation


# static fields
.field private static final BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final COLOR_NONE_OPAQUE:I = 0xff

.field public static final COLOR_UNSPECIFIED:I = 0xffffff

.field public static final DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field public static final PRESET_CUSTOM:I = -0x1

.field private static final UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field private final mHasBackgroundColor:Z

.field private final mHasEdgeColor:Z

.field private final mHasEdgeType:Z

.field private final mHasForegroundColor:Z

.field private final mHasWindowColor:Z

.field private mParsedTypeface:Landroid/graphics/Typeface;

.field public final mRawTypeface:Ljava/lang/String;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const v14, 0xffffff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/high16 v2, -0x1000000

    .line 497
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v1, -0x1

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 499
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v9, -0x1

    move v8, v2

    move v10, v3

    move v11, v2

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 501
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v1, -0x100

    move v4, v2

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 503
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/16 v8, -0x100

    const v9, -0xffff01

    move v10, v3

    move v11, v2

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 505
    new-instance v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 506
    const/4 v10, -0x1

    move v8, v14

    move v9, v14

    move v11, v14

    move v12, v14

    move-object v13, v6

    .line 505
    invoke-direct/range {v7 .. v13}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    sput-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 510
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 511
    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->BLACK_ON_WHITE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->YELLOW_ON_BLUE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->UNSPECIFIED:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 510
    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 514
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 515
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->WHITE_ON_BLACK:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 263
    return-void
.end method

.method private constructor <init>(IIIIILjava/lang/String;)V
    .locals 4
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "edgeType"    # I
    .param p4, "edgeColor"    # I
    .param p5, "windowColor"    # I
    .param p6, "rawTypeface"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-static {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    .line 357
    invoke-static {p2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    .line 358
    if-eq p3, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    .line 359
    invoke-static {p4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    .line 360
    invoke-static {p5}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    .line 364
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    if-eqz v0, :cond_1

    .end local p1    # "foregroundColor":I
    :goto_1
    iput p1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 365
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    if-eqz v0, :cond_2

    .end local p2    # "backgroundColor":I
    :goto_2
    iput p2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 366
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    if-eqz v0, :cond_3

    .end local p3    # "edgeType":I
    :goto_3
    iput p3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 367
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    if-eqz v0, :cond_4

    .end local p4    # "edgeColor":I
    :goto_4
    iput p4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 368
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    if-eqz v0, :cond_5

    .end local p5    # "windowColor":I
    :goto_5
    iput p5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 370
    iput-object p6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 371
    return-void

    .restart local p1    # "foregroundColor":I
    .restart local p2    # "backgroundColor":I
    .restart local p3    # "edgeType":I
    .restart local p4    # "edgeColor":I
    .restart local p5    # "windowColor":I
    :cond_0
    move v0, v1

    .line 358
    goto :goto_0

    :cond_1
    move p1, v2

    .line 364
    goto :goto_1

    .end local p1    # "foregroundColor":I
    :cond_2
    move p2, v3

    .line 365
    goto :goto_2

    .end local p2    # "backgroundColor":I
    :cond_3
    move p3, v1

    .line 366
    goto :goto_3

    .end local p3    # "edgeType":I
    :cond_4
    move p4, v3

    .line 367
    goto :goto_4

    .line 368
    .end local p4    # "edgeColor":I
    :cond_5
    const/16 p5, 0xff

    goto :goto_5
.end method

.method public static getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 475
    sget-object v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT_CUSTOM:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 477
    .local v7, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    const-string/jumbo v0, "accessibility_captioning_foreground_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 476
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 479
    .local v1, "foregroundColor":I
    const-string/jumbo v0, "accessibility_captioning_background_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 478
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 481
    .local v2, "backgroundColor":I
    const-string/jumbo v0, "accessibility_captioning_edge_type"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 480
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 483
    .local v3, "edgeType":I
    const-string/jumbo v0, "accessibility_captioning_edge_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 482
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 485
    .local v4, "edgeColor":I
    const-string/jumbo v0, "accessibility_captioning_window_color"

    iget v8, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 484
    invoke-static {p0, v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 487
    .local v5, "windowColor":I
    const-string/jumbo v0, "accessibility_captioning_typeface"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 488
    .local v6, "rawTypeface":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 489
    iget-object v6, v7, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 492
    :cond_0
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method public static hasColor(I)Z
    .locals 3
    .param p0, "packedColor"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 384
    ushr-int/lit8 v2, p0, 0x18

    if-nez v2, :cond_0

    const v2, 0xffff00

    and-int/2addr v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 7
    .param p1, "overlay"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget v1, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 399
    .local v1, "newForegroundColor":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    iget v2, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 401
    .local v2, "newBackgroundColor":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 402
    iget v3, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 403
    .local v3, "newEdgeType":I
    :goto_2
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    iget v4, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 405
    .local v4, "newEdgeColor":I
    :goto_3
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    iget v5, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .line 407
    .local v5, "newWindowColor":I
    :goto_4
    iget-object v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 408
    iget-object v6, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 409
    .local v6, "newRawTypeface":Ljava/lang/String;
    :goto_5
    new-instance v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;-><init>(IIIIILjava/lang/String;)V

    return-object v0

    .line 398
    .end local v1    # "newForegroundColor":I
    .end local v2    # "newBackgroundColor":I
    .end local v3    # "newEdgeType":I
    .end local v4    # "newEdgeColor":I
    .end local v5    # "newWindowColor":I
    .end local v6    # "newRawTypeface":Ljava/lang/String;
    :cond_0
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .restart local v1    # "newForegroundColor":I
    goto :goto_0

    .line 400
    :cond_1
    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .restart local v2    # "newBackgroundColor":I
    goto :goto_1

    .line 402
    :cond_2
    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .restart local v3    # "newEdgeType":I
    goto :goto_2

    .line 404
    :cond_3
    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .restart local v4    # "newEdgeColor":I
    goto :goto_3

    .line 406
    :cond_4
    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    .restart local v5    # "newWindowColor":I
    goto :goto_4

    .line 408
    :cond_5
    iget-object v6, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .restart local v6    # "newRawTypeface":Ljava/lang/String;
    goto :goto_5
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 464
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    .line 467
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mParsedTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hasBackgroundColor()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasBackgroundColor:Z

    return v0
.end method

.method public hasEdgeColor()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeColor:Z

    return v0
.end method

.method public hasEdgeType()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasEdgeType:Z

    return v0
.end method

.method public hasForegroundColor()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasForegroundColor:Z

    return v0
.end method

.method public hasWindowColor()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mHasWindowColor:Z

    return v0
.end method
