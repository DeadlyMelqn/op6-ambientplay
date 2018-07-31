.class final synthetic Lcom/android/server/wm/-$Lambda$lByfYr6ieFYh5pmaqCgCKVVzuwA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/wm/-$Lambda$lByfYr6ieFYh5pmaqCgCKVVzuwA;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/wm/AppWindowToken;->lambda$-com_android_server_wm_AppWindowToken_70479(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$Lambda$lByfYr6ieFYh5pmaqCgCKVVzuwA;

    invoke-direct {v0}, Lcom/android/server/wm/-$Lambda$lByfYr6ieFYh5pmaqCgCKVVzuwA;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$Lambda$lByfYr6ieFYh5pmaqCgCKVVzuwA;->$INST$0:Lcom/android/server/wm/-$Lambda$lByfYr6ieFYh5pmaqCgCKVVzuwA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$lByfYr6ieFYh5pmaqCgCKVVzuwA;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
