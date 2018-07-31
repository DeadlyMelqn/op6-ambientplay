.class final synthetic Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/util/Map$Entry;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->lambda$-com_android_server_OnePlusStandbyAnalyzer_22615(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;

    invoke-direct {v0}, Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;-><init>()V

    sput-object v0, Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;->$INST$0:Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;

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
    invoke-direct {p0, p1, p2}, Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
