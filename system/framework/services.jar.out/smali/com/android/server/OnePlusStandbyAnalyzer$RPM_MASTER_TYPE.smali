.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RPM_MASTER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

.field public static final enum SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string/jumbo v1, "MPSS"

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 107
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string/jumbo v1, "ADSP"

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 108
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string/jumbo v1, "CDSP"

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 109
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    const-string/jumbo v1, "SLPI"

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->CDSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->SLPI:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    return-object v0
.end method
