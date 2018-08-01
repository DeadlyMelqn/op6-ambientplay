.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/graphics/Palette$Filter;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I[F)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [F

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->lambda$-com_android_systemui_statusbar_notification_MediaNotificationProcessor_2612(I[F)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(I[F)Z
    .locals 1
    .param p1, "arg0"    # I
    .param p2, "arg1"    # [F

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->lambda$-com_android_systemui_statusbar_notification_MediaNotificationProcessor_5787(I[F)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->$id:B

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final isAllowed(I[F)Z
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->$m$0(I[F)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;->$m$1(I[F)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
