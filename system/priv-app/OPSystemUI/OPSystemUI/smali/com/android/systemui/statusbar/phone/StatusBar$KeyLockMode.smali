.class final enum Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;
.super Ljava/lang/Enum;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

.field public static final enum BACK_SWITCH:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

.field public static final enum BASE:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

.field public static final enum FOOT:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

.field public static final enum HOME:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

.field public static final enum NORMAL:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

.field public static final enum POWER:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

.field public static final enum POWER_HOME:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8770
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->NORMAL:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const-string/jumbo v1, "POWER"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 8771
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->POWER:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const-string/jumbo v1, "POWER_HOME"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 8772
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->POWER_HOME:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 8773
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->HOME:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const-string/jumbo v1, "FOOT"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 8774
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->FOOT:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const-string/jumbo v1, "BACK_SWITCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 8775
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->BACK_SWITCH:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const-string/jumbo v1, "BASE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;-><init>(Ljava/lang/String;I)V

    .line 8776
    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->BASE:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    .line 8769
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->NORMAL:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->POWER:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->POWER_HOME:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->HOME:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->FOOT:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->BACK_SWITCH:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->BASE:Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->$VALUES:[Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8769
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8769
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;
    .locals 1

    .prologue
    .line 8769
    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;->$VALUES:[Lcom/android/systemui/statusbar/phone/StatusBar$KeyLockMode;

    return-object v0
.end method
