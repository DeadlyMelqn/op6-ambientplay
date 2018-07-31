.class final synthetic Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(III)D
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    iget v0, p0, Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4$1;->-$f0:I

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->lambda$-com_android_internal_graphics_ColorUtils_5280(IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4$1;->-$f0:I

    return-void
.end method


# virtual methods
.method public final calculateContrast(III)D
    .locals 2

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4$1;->$m$0(III)D

    move-result-wide v0

    return-wide v0
.end method
