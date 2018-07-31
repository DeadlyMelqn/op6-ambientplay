.class final synthetic Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/FocusFinder$UserSpecifiedFocusComparator$NextFocusGetter;


# static fields
.field public static final synthetic $INST$0:Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;

.field public static final synthetic $INST$1:Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    invoke-static {p1, p2}, Landroid/view/FocusFinder;->lambda$-android_view_FocusFinder_1877(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/View;

    .prologue
    invoke-static {p1, p2}, Landroid/view/FocusFinder;->lambda$-android_view_FocusFinder_2135(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;-><init>(B)V

    sput-object v0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;->$INST$0:Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;

    new-instance v0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;-><init>(B)V

    sput-object v0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;->$INST$1:Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;->$id:B

    return-void
.end method


# virtual methods
.method public final get(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;->$m$0(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk;->$m$1(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
