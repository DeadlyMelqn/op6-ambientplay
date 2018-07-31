.class public final enum Lnet/bohush/geometricprogressview/TYPE;
.super Ljava/lang/Enum;
.source "TYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bohush/geometricprogressview/TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bohush/geometricprogressview/TYPE;

.field public static final enum KITE:Lnet/bohush/geometricprogressview/TYPE;

.field public static final enum TRIANGLE:Lnet/bohush/geometricprogressview/TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lnet/bohush/geometricprogressview/TYPE;

    const-string v1, "TRIANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bohush/geometricprogressview/TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bohush/geometricprogressview/TYPE;->TRIANGLE:Lnet/bohush/geometricprogressview/TYPE;

    new-instance v0, Lnet/bohush/geometricprogressview/TYPE;

    const-string v1, "KITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lnet/bohush/geometricprogressview/TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bohush/geometricprogressview/TYPE;->KITE:Lnet/bohush/geometricprogressview/TYPE;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lnet/bohush/geometricprogressview/TYPE;

    sget-object v1, Lnet/bohush/geometricprogressview/TYPE;->TRIANGLE:Lnet/bohush/geometricprogressview/TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lnet/bohush/geometricprogressview/TYPE;->KITE:Lnet/bohush/geometricprogressview/TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lnet/bohush/geometricprogressview/TYPE;->$VALUES:[Lnet/bohush/geometricprogressview/TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bohush/geometricprogressview/TYPE;
    .locals 1

    .line 3
    const-class v0, Lnet/bohush/geometricprogressview/TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/bohush/geometricprogressview/TYPE;

    return-object p0
.end method

.method public static values()[Lnet/bohush/geometricprogressview/TYPE;
    .locals 1

    .line 3
    sget-object v0, Lnet/bohush/geometricprogressview/TYPE;->$VALUES:[Lnet/bohush/geometricprogressview/TYPE;

    invoke-virtual/range {v0 .. v0}, [Lnet/bohush/geometricprogressview/TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bohush/geometricprogressview/TYPE;

    return-object v0
.end method
