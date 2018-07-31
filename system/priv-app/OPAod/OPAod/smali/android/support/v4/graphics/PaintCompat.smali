.class public final Landroid/support/v4/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"


# static fields
.field private static final EM_STRING:Ljava/lang/String; = "m"

.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"

.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
    .locals 12
    .param p0, "paint"    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "string"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 44
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_0

    .line 45
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v8

    return v8

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 49
    .local v3, "length":I
    if-ne v3, v10, :cond_1

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 51
    return v10

    .line 54
    :cond_1
    const-string/jumbo v8, "\udb3f\udffd"

    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 55
    .local v4, "missingGlyphWidth":F
    const-string/jumbo v8, "m"

    invoke-virtual {p0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 57
    .local v1, "emGlyphWidth":F
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 59
    .local v7, "width":F
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-nez v8, :cond_2

    .line 61
    return v11

    .line 64
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v11, v8}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    if-le v8, v10, :cond_5

    .line 67
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v1

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3

    .line 68
    return v11

    .line 81
    :cond_3
    const/4 v6, 0x0

    .line 82
    .local v6, "sumWidth":F
    const/4 v2, 0x0

    .line 83
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 84
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 85
    .local v0, "charCount":I
    add-int v8, v2, v0

    invoke-virtual {p0, p1, v2, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v8

    add-float/2addr v6, v8

    .line 86
    add-int/2addr v2, v0

    goto :goto_0

    .line 88
    .end local v0    # "charCount":I
    :cond_4
    cmpl-float v8, v7, v6

    if-ltz v8, :cond_5

    .line 89
    return v11

    .line 93
    .end local v2    # "i":I
    .end local v6    # "sumWidth":F
    :cond_5
    cmpl-float v8, v7, v4

    if-eqz v8, :cond_6

    .line 95
    return v10

    .line 100
    :cond_6
    invoke-static {}, Landroid/support/v4/graphics/PaintCompat;->obtainEmptyRects()Landroid/support/v4/util/Pair;

    move-result-object v5

    .line 101
    .local v5, "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    const-string/jumbo v9, "\udb3f\udffd"

    const-string/jumbo v8, "\udb3f\udffd"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v8, v5, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v11, v10, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 102
    iget-object v8, v5, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v11, v3, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 103
    iget-object v8, v5, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/graphics/Rect;

    iget-object v9, v5, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    return v8
.end method

.method private static obtainEmptyRects()Landroid/support/v4/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    sget-object v1, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/util/Pair;

    .line 108
    .local v0, "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/support/v4/util/Pair;

    .end local v0    # "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .restart local v0    # "rects":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    sget-object v1, Landroid/support/v4/graphics/PaintCompat;->sRectThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-object v0

    .line 112
    :cond_0
    iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 113
    iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method
