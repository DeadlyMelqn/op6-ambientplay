.class final enum Lcom/android/server/connectivity/Nat464Xlat$State;
.super Ljava/lang/Enum;
.source "Nat464Xlat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Nat464Xlat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/Nat464Xlat$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/Nat464Xlat$State;

.field public static final enum IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

.field public static final enum RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

.field public static final enum STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

.field public static final enum STOPPING:Lcom/android/server/connectivity/Nat464Xlat$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    const-string/jumbo v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/connectivity/Nat464Xlat$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v3}, Lcom/android/server/connectivity/Nat464Xlat$State;-><init>(Ljava/lang/String;I)V

    .line 63
    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/android/server/connectivity/Nat464Xlat$State;-><init>(Ljava/lang/String;I)V

    .line 64
    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    new-instance v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    const-string/jumbo v1, "STOPPING"

    invoke-direct {v0, v1, v5}, Lcom/android/server/connectivity/Nat464Xlat$State;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->STOPPING:Lcom/android/server/connectivity/Nat464Xlat$State;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/connectivity/Nat464Xlat$State;

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->IDLE:Lcom/android/server/connectivity/Nat464Xlat$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STARTING:Lcom/android/server/connectivity/Nat464Xlat$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->RUNNING:Lcom/android/server/connectivity/Nat464Xlat$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/connectivity/Nat464Xlat$State;->STOPPING:Lcom/android/server/connectivity/Nat464Xlat$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->$VALUES:[Lcom/android/server/connectivity/Nat464Xlat$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/Nat464Xlat$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Nat464Xlat$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/Nat464Xlat$State;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/server/connectivity/Nat464Xlat$State;->$VALUES:[Lcom/android/server/connectivity/Nat464Xlat$State;

    return-object v0
.end method
