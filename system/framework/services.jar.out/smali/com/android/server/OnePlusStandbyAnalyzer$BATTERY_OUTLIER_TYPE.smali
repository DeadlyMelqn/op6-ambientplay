.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BATTERY_OUTLIER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum DOZE_DISABLED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum NOT_DEFINDED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

.field public static final enum USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "NOT_DEFINDED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NOT_DEFINDED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 74
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "DOZE_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->DOZE_DISABLED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "NO_ENTER_DEEPIDLE"

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    .line 80
    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 81
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "USERSPEACE_WAKELOCK"

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 82
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "KERNELSPACE_WAKELOCK"

    invoke-direct {v0, v1, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 83
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "KERNEL_WAKEUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 84
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "SINGAL_BAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 85
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "HIGH_UNACCOUNTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;-><init>(Ljava/lang/String;I)V

    .line 86
    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 72
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NOT_DEFINDED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->DOZE_DISABLED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    return-object v0
.end method
