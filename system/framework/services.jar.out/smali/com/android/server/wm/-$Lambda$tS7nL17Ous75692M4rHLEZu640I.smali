.class final synthetic Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_102338(ILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_102517(ILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$-com_android_server_wm_RootWindowContainer_19024(ILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$-com_android_server_wm_WindowManagerService_207732(ILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BI)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$id:B

    iput p2, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$m$3(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
