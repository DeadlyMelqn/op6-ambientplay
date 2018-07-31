.class final Landroid/support/v7/graphics/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 454
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;)I
    .locals 0

    .line 457
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p0

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getVolume()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 454
    check-cast p1, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    check-cast p2, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/graphics/ColorCutQuantizer$1;->compare(Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;)I

    move-result p0

    return p0
.end method
