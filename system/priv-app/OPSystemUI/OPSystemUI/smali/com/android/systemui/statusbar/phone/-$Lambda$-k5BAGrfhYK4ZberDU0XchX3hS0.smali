.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/res/Configuration;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lambda$-com_android_systemui_statusbar_phone_ConfigurationControllerImpl_2304(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$-k5BAGrfhYK4ZberDU0XchX3hS0;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
