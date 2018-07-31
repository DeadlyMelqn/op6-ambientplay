.class final synthetic Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/notification/ManagedServices;->-com_android_server_notification_ManagedServices-mthref-0(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk;

    invoke-direct {v0}, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk;-><init>()V

    sput-object v0, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk;->$INST$0:Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk;

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
    invoke-direct {p0, p1}, Lcom/android/server/notification/-$Lambda$wiIPCfqsozYSTZSw1Uj-TFpH6Dk;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
