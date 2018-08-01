.class final synthetic Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/car/UserGridView$UserSelectionListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 1
    .param p1, "arg0"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->lambda$-com_android_systemui_statusbar_car_FullscreenUserSwitcher_2135(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onUserSelected(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/-$Lambda$FZ4mtee2vnK98nAu2Wi9_aZl9Po$2;->$m$0(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;)V

    return-void
.end method
