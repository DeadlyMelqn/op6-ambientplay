.class final synthetic Lcom/android/systemui/volume/-$Lambda$0R1dyrsSgP-OmxYsS1O8ZgQhrN4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Z)V
    .locals 1
    .param p1, "arg0"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/systemui/volume/-$Lambda$0R1dyrsSgP-OmxYsS1O8ZgQhrN4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogImpl$Accessibility;->lambda$-com_android_systemui_volume_VolumeDialogImpl$Accessibility_55198(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$Lambda$0R1dyrsSgP-OmxYsS1O8ZgQhrN4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAccessibilityStateChanged(Z)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/-$Lambda$0R1dyrsSgP-OmxYsS1O8ZgQhrN4;->$m$0(Z)V

    return-void
.end method
