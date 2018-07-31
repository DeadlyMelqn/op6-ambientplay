.class final synthetic Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Landroid/view/MotionEvent;

    .prologue
    invoke-static {p1, p2}, Lcom/android/systemui/usb/UsbDebuggingActivity;->lambda$-com_android_systemui_usb_UsbDebuggingActivity_3614(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;

    invoke-direct {v0}, Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;-><init>()V

    sput-object v0, Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;->$INST$0:Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/usb/-$Lambda$i092pT7BFOR732L1S_poxukWflE;->$m$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
