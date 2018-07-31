.class final enum Lcom/ice/box/helpers/ChangeLog$Listmode;
.super Ljava/lang/Enum;
.source "ChangeLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/helpers/ChangeLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Listmode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ice/box/helpers/ChangeLog$Listmode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ice/box/helpers/ChangeLog$Listmode;

.field public static final enum NONE:Lcom/ice/box/helpers/ChangeLog$Listmode;

.field public static final enum ORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

.field public static final enum UNORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 283
    new-instance v0, Lcom/ice/box/helpers/ChangeLog$Listmode;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ice/box/helpers/ChangeLog$Listmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->NONE:Lcom/ice/box/helpers/ChangeLog$Listmode;

    new-instance v0, Lcom/ice/box/helpers/ChangeLog$Listmode;

    const-string v1, "ORDERED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ice/box/helpers/ChangeLog$Listmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->ORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    new-instance v0, Lcom/ice/box/helpers/ChangeLog$Listmode;

    const-string v1, "UNORDERED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ice/box/helpers/ChangeLog$Listmode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->UNORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    const/4 v0, 0x3

    .line 282
    new-array v0, v0, [Lcom/ice/box/helpers/ChangeLog$Listmode;

    sget-object v1, Lcom/ice/box/helpers/ChangeLog$Listmode;->NONE:Lcom/ice/box/helpers/ChangeLog$Listmode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ice/box/helpers/ChangeLog$Listmode;->ORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ice/box/helpers/ChangeLog$Listmode;->UNORDERED:Lcom/ice/box/helpers/ChangeLog$Listmode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->$VALUES:[Lcom/ice/box/helpers/ChangeLog$Listmode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ice/box/helpers/ChangeLog$Listmode;
    .locals 1

    .line 282
    const-class v0, Lcom/ice/box/helpers/ChangeLog$Listmode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ice/box/helpers/ChangeLog$Listmode;

    return-object p0
.end method

.method public static values()[Lcom/ice/box/helpers/ChangeLog$Listmode;
    .locals 1

    .line 282
    sget-object v0, Lcom/ice/box/helpers/ChangeLog$Listmode;->$VALUES:[Lcom/ice/box/helpers/ChangeLog$Listmode;

    invoke-virtual/range {v0 .. v0}, [Lcom/ice/box/helpers/ChangeLog$Listmode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ice/box/helpers/ChangeLog$Listmode;

    return-object v0
.end method
