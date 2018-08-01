.class Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;
.super Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;
.source "CarStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/car/CarStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskStackListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-direct {p0}, Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/car/CarStatusBar;Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/car/CarStatusBar;
    .param p2, "-this1"    # Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 5

    .prologue
    .line 313
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 314
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 315
    .local v0, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;->this$0:Lcom/android/systemui/statusbar/car/CarStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/car/CarStatusBar;->-get0(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    move-result-object v2

    iget-object v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 317
    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    .line 316
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->taskChanged(Ljava/lang/String;I)V

    .line 319
    :cond_0
    return-void
.end method
