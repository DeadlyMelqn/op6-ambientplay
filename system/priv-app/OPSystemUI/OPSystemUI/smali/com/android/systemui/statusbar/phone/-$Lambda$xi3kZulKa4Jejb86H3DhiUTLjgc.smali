.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

.field public static final synthetic $INST$1:Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_6665(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->lambda$-com_android_systemui_statusbar_phone_NotificationIconAreaController_6795(Lcom/android/systemui/statusbar/NotificationData$Entry;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$INST$0:Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$INST$1:Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$id:B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$xi3kZulKa4Jejb86H3DhiUTLjgc;->$m$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
