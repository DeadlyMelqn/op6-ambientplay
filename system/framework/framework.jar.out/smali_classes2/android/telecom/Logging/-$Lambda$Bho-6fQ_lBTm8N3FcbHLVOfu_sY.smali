.class final synthetic Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Landroid/util/Pair;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/telecom/Logging/EventManager;->lambda$-android_telecom_Logging_EventManager_11918(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;

    invoke-direct {v0}, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;-><init>()V

    sput-object v0, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;->$INST$0:Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
