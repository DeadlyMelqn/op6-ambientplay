.class public final enum Landroid/widget/ImageView$ScaleType;
.super Ljava/lang/Enum;
.source "ImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/ImageView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER_CROP:Landroid/widget/ImageView$ScaleType;

.field public static final enum CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_CENTER:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_END:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_START:Landroid/widget/ImageView$ScaleType;

.field public static final enum FIT_XY:Landroid/widget/ImageView$ScaleType;

.field public static final enum MATRIX:Landroid/widget/ImageView$ScaleType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 756
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string/jumbo v1, "MATRIX"

    invoke-direct {v0, v1, v4, v4}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    .line 761
    sput-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 762
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string/jumbo v1, "FIT_XY"

    invoke-direct {v0, v1, v5, v5}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    .line 766
    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 767
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string/jumbo v1, "FIT_START"

    invoke-direct {v0, v1, v6, v6}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    .line 771
    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 772
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string/jumbo v1, "FIT_CENTER"

    invoke-direct {v0, v1, v7, v7}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    .line 777
    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 778
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string/jumbo v1, "FIT_END"

    invoke-direct {v0, v1, v8, v8}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    .line 782
    sput-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 783
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string/jumbo v1, "CENTER"

    const/4 v2, 0x5

    .line 787
    const/4 v3, 0x5

    .line 783
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    .line 787
    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 788
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string/jumbo v1, "CENTER_CROP"

    const/4 v2, 0x6

    .line 795
    const/4 v3, 0x6

    .line 788
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    .line 795
    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 796
    new-instance v0, Landroid/widget/ImageView$ScaleType;

    const-string/jumbo v1, "CENTER_INSIDE"

    const/4 v2, 0x7

    .line 803
    const/4 v3, 0x7

    .line 796
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView$ScaleType;-><init>(Ljava/lang/String;II)V

    .line 803
    sput-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 755
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v8

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/widget/ImageView$ScaleType;->$VALUES:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "ni"    # I

    .prologue
    .line 805
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 806
    iput p3, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    .line 807
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 755
    const-class v0, Landroid/widget/ImageView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public static values()[Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 755
    sget-object v0, Landroid/widget/ImageView$ScaleType;->$VALUES:[Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method