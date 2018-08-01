.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$XV-hQ-G8iNhGv40C_xJ7BBI6VyQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XV-hQ-G8iNhGv40C_xJ7BBI6VyQ;->-$f0:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XV-hQ-G8iNhGv40C_xJ7BBI6VyQ;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XV-hQ-G8iNhGv40C_xJ7BBI6VyQ;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->lambda$-com_android_systemui_statusbar_phone_SystemUIDialog_3951([ZLandroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XV-hQ-G8iNhGv40C_xJ7BBI6VyQ;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XV-hQ-G8iNhGv40C_xJ7BBI6VyQ;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XV-hQ-G8iNhGv40C_xJ7BBI6VyQ;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$XV-hQ-G8iNhGv40C_xJ7BBI6VyQ;->$m$0(Landroid/content/DialogInterface;)V

    return-void
.end method
