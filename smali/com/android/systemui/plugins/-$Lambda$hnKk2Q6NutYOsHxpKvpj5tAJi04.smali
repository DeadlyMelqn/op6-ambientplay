.class final synthetic Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/plugins/VersionInfo$Version;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/systemui/plugins/VersionInfo;->lambda$-com_android_systemui_plugins_VersionInfo_3527(Ljava/lang/Class;Lcom/android/systemui/plugins/VersionInfo$Version;)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04;

    invoke-direct {v0}, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04;-><init>()V

    sput-object v0, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04;->$INST$0:Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/plugins/-$Lambda$hnKk2Q6NutYOsHxpKvpj5tAJi04;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
