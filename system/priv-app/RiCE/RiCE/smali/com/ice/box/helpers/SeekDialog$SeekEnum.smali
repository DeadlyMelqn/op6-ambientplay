.class public final enum Lcom/ice/box/helpers/SeekDialog$SeekEnum;
.super Ljava/lang/Enum;
.source "SeekDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/helpers/SeekDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeekEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ice/box/helpers/SeekDialog$SeekEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ice/box/helpers/SeekDialog$SeekEnum;

.field public static final enum eBatterySize:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

.field public static final enum eNavBarHeight:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

.field public static final enum eNotifPanelAlpha:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

.field public static final enum elightThreshold:Lcom/ice/box/helpers/SeekDialog$SeekEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 58
    new-instance v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    const-string v1, "eBatterySize"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ice/box/helpers/SeekDialog$SeekEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->eBatterySize:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    new-instance v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    const-string v1, "eNavBarHeight"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ice/box/helpers/SeekDialog$SeekEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->eNavBarHeight:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    new-instance v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    const-string v1, "eNotifPanelAlpha"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ice/box/helpers/SeekDialog$SeekEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->eNotifPanelAlpha:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    new-instance v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    const-string v1, "elightThreshold"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ice/box/helpers/SeekDialog$SeekEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->elightThreshold:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    const/4 v0, 0x4

    .line 57
    new-array v0, v0, [Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    sget-object v1, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->eBatterySize:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->eNavBarHeight:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->eNotifPanelAlpha:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->elightThreshold:Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->$VALUES:[Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ice/box/helpers/SeekDialog$SeekEnum;
    .locals 1

    .line 57
    const-class v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    return-object p0
.end method

.method public static values()[Lcom/ice/box/helpers/SeekDialog$SeekEnum;
    .locals 1

    .line 57
    sget-object v0, Lcom/ice/box/helpers/SeekDialog$SeekEnum;->$VALUES:[Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    invoke-virtual/range {v0 .. v0}, [Lcom/ice/box/helpers/SeekDialog$SeekEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ice/box/helpers/SeekDialog$SeekEnum;

    return-object v0
.end method
