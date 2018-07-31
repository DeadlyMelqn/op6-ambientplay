.class Landroid/text/Hyphenator$HyphenationData;
.super Ljava/lang/Object;
.source "Hyphenator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Hyphenator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HyphenationData"
.end annotation


# instance fields
.field final mLanguageTag:Ljava/lang/String;

.field final mMinPrefix:I

.field final mMinSuffix:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "languageTag"    # Ljava/lang/String;
    .param p2, "minPrefix"    # I
    .param p3, "minSuffix"    # I

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/text/Hyphenator$HyphenationData;->mLanguageTag:Ljava/lang/String;

    .line 130
    iput p2, p0, Landroid/text/Hyphenator$HyphenationData;->mMinPrefix:I

    .line 131
    iput p3, p0, Landroid/text/Hyphenator$HyphenationData;->mMinSuffix:I

    .line 132
    return-void
.end method
