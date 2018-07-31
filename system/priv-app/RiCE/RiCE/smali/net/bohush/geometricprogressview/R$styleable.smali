.class public final Lnet/bohush/geometricprogressview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bohush/geometricprogressview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GeometricProgressView:[I

.field public static final GeometricProgressView_gp_color:I = 0x0

.field public static final GeometricProgressView_gp_duration:I = 0x1

.field public static final GeometricProgressView_gp_figure_padding:I = 0x2

.field public static final GeometricProgressView_gp_number_of_angles:I = 0x3

.field public static final GeometricProgressView_gp_style:I = 0x4

.field public static final GeometricProgressView_gp_type:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/bohush/geometricprogressview/R$styleable;->GeometricProgressView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400bc
        0x7f0400bd
        0x7f0400be
        0x7f0400bf
        0x7f0400c0
        0x7f0400c1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
