.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;->-$f0:I

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_10226(ILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;->-$f0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
