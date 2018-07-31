.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CRITERIA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string/jumbo v1, "USERSPEACE_WAKELOCK"

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    .line 132
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string/jumbo v1, "KERNELSPACE_WAKELOCK"

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    .line 133
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string/jumbo v1, "KERNEL_WAKEUP"

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    .line 134
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string/jumbo v1, "SINGAL_BAD"

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    .line 135
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string/jumbo v1, "HIGH_UNACCOUNTED"

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    .line 130
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-object v0
.end method
