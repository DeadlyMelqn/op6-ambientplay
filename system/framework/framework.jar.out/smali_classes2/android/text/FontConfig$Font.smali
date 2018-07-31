.class public final Landroid/text/FontConfig$Font;
.super Ljava/lang/Object;
.source "FontConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/FontConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation


# instance fields
.field private final mAxes:[Landroid/graphics/fonts/FontVariationAxis;

.field private final mFontName:Ljava/lang/String;

.field private final mIsItalic:Z

.field private final mTtcIndex:I

.field private mUri:Landroid/net/Uri;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IZ)V
    .locals 0
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .param p3, "axes"    # [Landroid/graphics/fonts/FontVariationAxis;
    .param p4, "weight"    # I
    .param p5, "isItalic"    # Z

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/text/FontConfig$Font;->mFontName:Ljava/lang/String;

    .line 74
    iput p2, p0, Landroid/text/FontConfig$Font;->mTtcIndex:I

    .line 75
    iput-object p3, p0, Landroid/text/FontConfig$Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    .line 76
    iput p4, p0, Landroid/text/FontConfig$Font;->mWeight:I

    .line 77
    iput-boolean p5, p0, Landroid/text/FontConfig$Font;->mIsItalic:Z

    .line 78
    return-void
.end method


# virtual methods
.method public getAxes()[Landroid/graphics/fonts/FontVariationAxis;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mAxes:[Landroid/graphics/fonts/FontVariationAxis;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mFontName:Ljava/lang/String;

    return-object v0
.end method

.method public getTtcIndex()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/text/FontConfig$Font;->mTtcIndex:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/text/FontConfig$Font;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/text/FontConfig$Font;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/text/FontConfig$Font;->mIsItalic:Z

    return v0
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    iput-object p1, p0, Landroid/text/FontConfig$Font;->mUri:Landroid/net/Uri;

    .line 127
    return-void
.end method
