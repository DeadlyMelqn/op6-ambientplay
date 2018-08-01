.class Lcom/android/systemui/pip/phone/PipNotificationController$1;
.super Ljava/lang/Object;
.source "PipNotificationController.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipNotificationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/PipNotificationController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipNotificationController;->-get2(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v4}, Lcom/android/systemui/pip/phone/PipNotificationController;->-get0(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/pip/phone/PipUtils;->getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/util/Pair;

    move-result-object v2

    .line 80
    .local v2, "topPipActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipNotificationController;->-get2(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 82
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    .line 81
    invoke-virtual {v4, p2, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 83
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipNotificationController;->-get1(Lcom/android/systemui/pip/phone/PipNotificationController;)Landroid/app/AppOpsManager;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x43

    invoke-virtual {v3, v5, v4, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipNotificationController;->-get3(Lcom/android/systemui/pip/phone/PipNotificationController;)Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dismissPip()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "topPipActivityInfo":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipNotificationController$1;->this$0:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/PipNotificationController;->-wrap0(Lcom/android/systemui/pip/phone/PipNotificationController;)V

    goto :goto_0
.end method
