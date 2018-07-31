.class public final enum Landroid/graphics/PorterDuff$Mode;
.super Ljava/lang/Enum;
.source "PorterDuff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/PorterDuff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/PorterDuff$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/PorterDuff$Mode;

.field public static final enum ADD:Landroid/graphics/PorterDuff$Mode;

.field public static final enum CLEAR:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DARKEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum DST_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum LIGHTEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum MULTIPLY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum OVERLAY:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SCREEN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_IN:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_OUT:Landroid/graphics/PorterDuff$Mode;

.field public static final enum SRC_OVER:Landroid/graphics/PorterDuff$Mode;

.field public static final enum XOR:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field public final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 179
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "CLEAR"

    invoke-direct {v0, v1, v4, v4}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 188
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 189
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "SRC"

    invoke-direct {v0, v1, v5, v5}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 197
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 198
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "DST"

    invoke-direct {v0, v1, v6, v6}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 206
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    .line 207
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "SRC_OVER"

    invoke-direct {v0, v1, v7, v7}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 215
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 216
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "DST_OVER"

    invoke-direct {v0, v1, v8, v8}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 224
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 225
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "SRC_IN"

    const/4 v2, 0x5

    .line 234
    const/4 v3, 0x5

    .line 225
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 234
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 235
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "DST_IN"

    const/4 v2, 0x6

    .line 244
    const/4 v3, 0x6

    .line 235
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 244
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 245
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "SRC_OUT"

    const/4 v2, 0x7

    .line 255
    const/4 v3, 0x7

    .line 245
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 255
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 256
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "DST_OUT"

    const/16 v2, 0x8

    .line 266
    const/16 v3, 0x8

    .line 256
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 266
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 267
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "SRC_ATOP"

    const/16 v2, 0x9

    .line 276
    const/16 v3, 0x9

    .line 267
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 276
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 277
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "DST_ATOP"

    const/16 v2, 0xa

    .line 286
    const/16 v3, 0xa

    .line 277
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 286
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 287
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "XOR"

    const/16 v2, 0xb

    .line 296
    const/16 v3, 0xb

    .line 287
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 296
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    .line 297
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "DARKEN"

    const/16 v2, 0xc

    .line 306
    const/16 v3, 0x10

    .line 297
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 306
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 307
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "LIGHTEN"

    const/16 v2, 0xd

    .line 316
    const/16 v3, 0x11

    .line 307
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 316
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    .line 317
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "MULTIPLY"

    const/16 v2, 0xe

    .line 325
    const/16 v3, 0xd

    .line 317
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 325
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 326
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "SCREEN"

    const/16 v2, 0xf

    .line 335
    const/16 v3, 0xe

    .line 326
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 335
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    .line 336
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "ADD"

    const/16 v2, 0x10

    .line 345
    const/16 v3, 0xc

    .line 336
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 345
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    .line 346
    new-instance v0, Landroid/graphics/PorterDuff$Mode;

    const-string/jumbo v1, "OVERLAY"

    const/16 v2, 0x11

    .line 358
    const/16 v3, 0xf

    .line 346
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/PorterDuff$Mode;-><init>(Ljava/lang/String;II)V

    .line 358
    sput-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    .line 178
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    aput-object v1, v0, v6

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    aput-object v1, v0, v7

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    aput-object v1, v0, v8

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->LIGHTEN:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "nativeInt"    # I

    .prologue
    .line 360
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 361
    iput p3, p0, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    .line 362
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v0, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static values()[Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->$VALUES:[Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method
