.class Lcom/android/systemui/statusbar/phone/OPFacelockController$3;
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
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "iservice"    # Landroid/os/IBinder;

    .prologue
    .line 986
    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "Connected to Facelock service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {p2}, Lcom/android/internal/policy/IOPFacelockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IOPFacelockService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set5(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/android/internal/policy/IOPFacelockService;)Lcom/android/internal/policy/IOPFacelockService;

    .line 988
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set0(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 989
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set2(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 990
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 994
    const-string/jumbo v0, "OPFacelockController"

    const-string/jumbo v1, "disconnect from Facelock service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set5(Lcom/android/systemui/statusbar/phone/OPFacelockController;Lcom/android/internal/policy/IOPFacelockService;)Lcom/android/internal/policy/IOPFacelockService;

    .line 996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set0(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$3;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-set2(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)Z

    .line 998
    return-void
.end method
