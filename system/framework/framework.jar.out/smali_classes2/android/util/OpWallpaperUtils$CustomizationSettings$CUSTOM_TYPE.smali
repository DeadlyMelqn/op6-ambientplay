.class public final enum Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
.super Ljava/lang/Enum;
.source "OpWallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/OpWallpaperUtils$CustomizationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CUSTOM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

.field public static final enum AVG:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

.field public static final enum JCC:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

.field public static final enum NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

.field public static final enum SW:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 341
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    .line 346
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    .line 347
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    const-string/jumbo v1, "JCC"

    invoke-direct {v0, v1, v3}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    .line 352
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->JCC:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    .line 353
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    const-string/jumbo v1, "SW"

    invoke-direct {v0, v1, v4}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    .line 358
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->SW:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    .line 359
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    const-string/jumbo v1, "AVG"

    invoke-direct {v0, v1, v5}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    .line 364
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->AVG:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    .line 340
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->JCC:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->SW:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->AVG:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->$VALUES:[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 340
    const-class v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->$VALUES:[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    return-object v0
.end method
