.class final synthetic Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Landroid/util/Pair;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/internal/widget/NotificationActionListLayout;->lambda$-com_android_internal_widget_NotificationActionListLayout_10433(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;

    invoke-direct {v0}, Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;-><init>()V

    sput-object v0, Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;->$INST$0:Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/-$Lambda$LaTFiUorkqfcqmu-zMQbCLeO77c;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
