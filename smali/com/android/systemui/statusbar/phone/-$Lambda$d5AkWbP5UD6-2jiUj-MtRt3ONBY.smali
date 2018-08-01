.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$d5AkWbP5UD6-2jiUj-MtRt3ONBY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:F

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$d5AkWbP5UD6-2jiUj-MtRt3ONBY;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$d5AkWbP5UD6-2jiUj-MtRt3ONBY;->-$f0:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->lambda$-com_android_systemui_statusbar_phone_DozeScrimController_10358(F)V

    return-void
.end method

.method public synthetic constructor <init>(FLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$d5AkWbP5UD6-2jiUj-MtRt3ONBY;->-$f0:F

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$d5AkWbP5UD6-2jiUj-MtRt3ONBY;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$d5AkWbP5UD6-2jiUj-MtRt3ONBY;->$m$0()V

    return-void
.end method
