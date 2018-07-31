.class final Landroid/text/TextLine$DecorationInfo;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecorationInfo"
.end annotation


# instance fields
.field public end:I

.field public isStrikeThruText:Z

.field public isUnderlineText:Z

.field public start:I

.field public underlineColor:I

.field public underlineThickness:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->start:I

    .line 935
    iput v0, p0, Landroid/text/TextLine$DecorationInfo;->end:I

    .line 929
    return-void
.end method

.method synthetic constructor <init>(Landroid/text/TextLine$DecorationInfo;)V
    .locals 0
    .param p1, "-this0"    # Landroid/text/TextLine$DecorationInfo;

    .prologue
    invoke-direct {p0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public copyInfo()Landroid/text/TextLine$DecorationInfo;
    .locals 2

    .prologue
    .line 943
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    invoke-direct {v0}, Landroid/text/TextLine$DecorationInfo;-><init>()V

    .line 944
    .local v0, "copy":Landroid/text/TextLine$DecorationInfo;
    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 945
    iget-boolean v1, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iput-boolean v1, v0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 946
    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 947
    iget v1, p0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 948
    return-object v0
.end method

.method public hasDecoration()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 938
    iget-boolean v2, p0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-nez v2, :cond_0

    iget v2, p0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
