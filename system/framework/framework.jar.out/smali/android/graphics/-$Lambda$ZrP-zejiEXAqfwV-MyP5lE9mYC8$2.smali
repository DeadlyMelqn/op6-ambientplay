.class final synthetic Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:D


# direct methods
.method private final synthetic $m$0(D)D
    .locals 3
    .param p1, "arg0"    # D

    .prologue
    iget-wide v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;->-$f0:D

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$-android_graphics_ColorSpace$Rgb_113213(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$1(D)D
    .locals 3
    .param p1, "arg0"    # D

    .prologue
    iget-wide v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;->-$f0:D

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$-android_graphics_ColorSpace$Rgb_113354(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic constructor <init>(BD)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;->$id:B

    iput-wide p2, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;->-$f0:D

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .locals 3

    .prologue
    iget-byte v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;->$m$0(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;->$m$1(D)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
