.class final synthetic Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->lambda$-com_android_systemui_statusbar_car_FullscreenUserSwitcher_3147(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$1;->$m$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
