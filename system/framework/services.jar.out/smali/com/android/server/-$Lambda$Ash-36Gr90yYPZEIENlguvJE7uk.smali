.class final synthetic Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/net/NetworkScorerAppData;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/NetworkScoreService;->-com_android_server_NetworkScoreService-mthref-0(Landroid/net/NetworkScorerAppData;)Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;

    invoke-direct {v0}, Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;-><init>()V

    sput-object v0, Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;->$INST$0:Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$Ash-36Gr90yYPZEIENlguvJE7uk;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
