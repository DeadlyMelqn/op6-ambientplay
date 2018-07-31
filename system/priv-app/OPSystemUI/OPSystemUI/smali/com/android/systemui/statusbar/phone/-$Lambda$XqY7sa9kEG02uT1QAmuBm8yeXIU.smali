.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SystemIconController$VisibilityChangeCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/util/HashMap;)V
    .locals 1
    .param p1, "arg0"    # Ljava/util/HashMap;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_3568(Ljava/util/HashMap;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSystemIconVisibilityChanged(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU;->$m$0(Ljava/util/HashMap;)V

    return-void
.end method
