.class Landroid/text/HtmlToSpannedConverter$Heading;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Heading"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method static synthetic -get0(Landroid/text/HtmlToSpannedConverter$Heading;)I
    .locals 1
    .param p0, "-this"    # Landroid/text/HtmlToSpannedConverter$Heading;

    .prologue
    iget v0, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    return v0
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput p1, p0, Landroid/text/HtmlToSpannedConverter$Heading;->mLevel:I

    .line 1312
    return-void
.end method
