.class final synthetic Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/graphics/ColorUtils$ContrastCalculator;


# static fields
.field public static final synthetic $INST$0:Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4;


# direct methods
.method private final synthetic $m$0(III)D
    .locals 2
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    invoke-static {p1, p2, p3}, Lcom/android/internal/graphics/ColorUtils;->lambda$-com_android_internal_graphics_ColorUtils_6537(III)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4;

    invoke-direct {v0}, Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4;->$INST$0:Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final calculateContrast(III)D
    .locals 2

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/graphics/-$Lambda$03T1rR3H6Pfo2RsQKEXM1or54G4;->$m$0(III)D

    move-result-wide v0

    return-wide v0
.end method
