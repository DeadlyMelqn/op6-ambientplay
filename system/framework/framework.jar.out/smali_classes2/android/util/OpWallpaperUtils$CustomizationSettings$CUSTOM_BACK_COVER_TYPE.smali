.class final enum Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
.super Ljava/lang/Enum;
.source "OpWallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/OpWallpaperUtils$CustomizationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CUSTOM_BACK_COVER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

.field public static final enum HPH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

.field public static final enum LCH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

.field public static final enum MYH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

.field public static final enum NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

.field public static final enum YYB:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 379
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;-><init>(Ljava/lang/String;I)V

    .line 384
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 385
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    const-string/jumbo v1, "LCH"

    invoke-direct {v0, v1, v3}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;-><init>(Ljava/lang/String;I)V

    .line 390
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->LCH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 391
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    const-string/jumbo v1, "MYH"

    invoke-direct {v0, v1, v4}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;-><init>(Ljava/lang/String;I)V

    .line 396
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->MYH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 397
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    const-string/jumbo v1, "YYB"

    invoke-direct {v0, v1, v5}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;-><init>(Ljava/lang/String;I)V

    .line 402
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->YYB:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 403
    new-instance v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    const-string/jumbo v1, "HPH"

    invoke-direct {v0, v1, v6}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;-><init>(Ljava/lang/String;I)V

    .line 408
    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->HPH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    .line 378
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->NONE:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->LCH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->MYH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->YYB:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->HPH:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->$VALUES:[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    const-class v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;
    .locals 1

    .prologue
    .line 378
    sget-object v0, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;->$VALUES:[Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_BACK_COVER_TYPE;

    return-object v0
.end method
