.class final synthetic Lcom/android/server/pm/-$Lambda$JzP9CRiQ8kxViovHG-q6Wako1Xw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$JzP9CRiQ8kxViovHG-q6Wako1Xw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/InstantAppRegistry;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->lambda$-com_android_server_pm_InstantAppRegistry_29061(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$Lambda$JzP9CRiQ8kxViovHG-q6Wako1Xw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/-$Lambda$JzP9CRiQ8kxViovHG-q6Wako1Xw;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
