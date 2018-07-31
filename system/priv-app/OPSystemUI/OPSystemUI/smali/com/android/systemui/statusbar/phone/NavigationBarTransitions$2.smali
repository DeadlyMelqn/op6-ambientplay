.class Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;
.super Landroid/view/IWallpaperVisibilityListener$Stub;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;->val$handler:Landroid/os/Handler;

    .line 60
    invoke-direct {p0}, Landroid/view/IWallpaperVisibilityListener$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_NavigationBarTransitions$2_2525()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->-wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZ)V

    return-void
.end method

.method public onWallpaperVisibilityChanged(ZI)V
    .locals 3
    .param p1, "newVisibility"    # Z
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->-set0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Z)Z

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$s7b_D0Wx3UIN_Bk_BlNMnpBO8ss;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$s7b_D0Wx3UIN_Bk_BlNMnpBO8ss;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    return-void
.end method
