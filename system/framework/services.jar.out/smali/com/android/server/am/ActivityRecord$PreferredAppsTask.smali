.class Lcom/android/server/am/ActivityRecord$PreferredAppsTask;
.super Landroid/os/AsyncTask;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferredAppsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityRecord;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord$PreferredAppsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "-this1"    # Lcom/android/server/am/ActivityRecord$PreferredAppsTask;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;-><init>(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 771
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 15
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 773
    const/4 v14, 0x0

    .line 774
    .local v14, "res":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    .line 775
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->mUxPerf:Landroid/util/BoostFramework;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/BoostFramework;->perfUXEngine_trigger(I)Ljava/lang/String;

    move-result-object v14

    .line 776
    .local v14, "res":Ljava/lang/String;
    if-nez v14, :cond_0

    .line 777
    const/4 v0, 0x0

    return-object v0

    .line 778
    :cond_0
    const-string/jumbo v0, "/"

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 779
    .local v13, "p_apps":[Ljava/lang/String;
    array-length v0, v13

    if-eqz v0, :cond_2

    .line 780
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 781
    .local v12, "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 782
    .local v10, "bParams":Landroid/os/Bundle;
    if-nez v10, :cond_1

    .line 783
    const/4 v0, 0x0

    return-object v0

    .line 784
    :cond_1
    const-string/jumbo v0, "start_empty_apps"

    invoke-virtual {v10, v0, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->service:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$PreferredAppsTask;->this$0:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 786
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 785
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserEmpty(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    .line 789
    .end local v10    # "bParams":Landroid/os/Bundle;
    .end local v12    # "apps_l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "p_apps":[Ljava/lang/String;
    .end local v14    # "res":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
