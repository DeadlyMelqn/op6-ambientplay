.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;

.field public static final synthetic $INST$1:Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/os/CancellationSignal;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->-com_android_systemui_statusbar_notification_NotificationInflater-mthref-1(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/os/CancellationSignal;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->-com_android_systemui_statusbar_notification_NotificationInflater-mthref-0(Landroid/os/CancellationSignal;)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;->$INST$0:Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;

    new-instance v0, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;->$INST$1:Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$gIHVGdltksSGhu3zzApFHCkb-NE;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
