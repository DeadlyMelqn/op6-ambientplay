.class Lcom/android/systemui/statusbar/phone/OPFacelockController$4;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "iservice"    # Landroid/os/IBinder;

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {p2}, Lcom/android/internal/policy/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IOPFaceSettingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set6(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/android/internal/policy/IOPFaceSettingService;)Lcom/android/internal/policy/IOPFaceSettingService;

    .line 1005
    const-string/jumbo v0, "OPFacelockController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected to FaceSetting service, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get18(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/internal/policy/IOPFaceSettingService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap10(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set1(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1008
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 1012
    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "disconnect from FaceSetting service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set6(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/android/internal/policy/IOPFaceSettingService;)Lcom/android/internal/policy/IOPFaceSettingService;

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get22(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setIsFaceAdded(Z)V

    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$4;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set1(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 1016
    return-void
.end method
