.class Lcom/android/server/vr/VrManagerService$4;
.super Landroid/service/vr/IVrManager$Stub;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 504
    invoke-direct {p0}, Landroid/service/vr/IVrManager$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 591
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get2(Lcom/android/server/vr/VrManagerService;)Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "VrManagerService"

    invoke-static {v8, v9, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v8

    if-nez v8, :cond_0

    return-void

    .line 593
    :cond_0
    const-string/jumbo v8, "********* Dump of VrManagerService *********"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "VR mode is currently: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get9(Lcom/android/server/vr/VrManagerService;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "allowed"

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Persistent VR mode is currently: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 596
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get7(Lcom/android/server/vr/VrManagerService;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "enabled"

    .line 595
    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 597
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Currently bound VR listener service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 598
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v8

    if-nez v8, :cond_4

    .line 599
    const-string/jumbo v8, "None"

    .line 597
    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Currently bound VR compositor service: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 601
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v8

    if-nez v8, :cond_5

    .line 602
    const-string/jumbo v8, "None"

    .line 600
    :goto_3
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    const-string/jumbo v8, "Previous state transitions:\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    const-string/jumbo v6, "  "

    .line 605
    .local v6, "tab":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8, p2}, Lcom/android/server/vr/VrManagerService;->-wrap8(Lcom/android/server/vr/VrManagerService;Ljava/io/PrintWriter;)V

    .line 606
    const-string/jumbo v8, "\n\nRemote Callbacks:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get10(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .local v1, "i":I
    move v2, v1

    .line 608
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_4
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_6

    .line 609
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get10(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 611
    if-lez v1, :cond_1

    const-string/jumbo v8, ","

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_4

    .line 594
    .end local v2    # "i":I
    .end local v6    # "tab":Ljava/lang/String;
    :cond_2
    const-string/jumbo v8, "disallowed"

    goto/16 :goto_0

    .line 596
    :cond_3
    const-string/jumbo v8, "disabled"

    goto/16 :goto_1

    .line 599
    :cond_4
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 602
    :cond_5
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get3(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/utils/ManagedApplicationService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/utils/ManagedApplicationService;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 613
    .restart local v1    # "i":I
    .restart local v6    # "tab":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get10(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 614
    const-string/jumbo v8, "\n\nPersistent Vr State Remote Callbacks:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get8(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v2, v1

    .line 616
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_5
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-lez v2, :cond_8

    .line 617
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get8(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 619
    if-lez v1, :cond_7

    const-string/jumbo v8, ","

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_5

    .line 621
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_8
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get8(Lcom/android/server/vr/VrManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 622
    const-string/jumbo v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const-string/jumbo v8, "Installed VrListenerService components:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get4(Lcom/android/server/vr/VrManagerService;)I

    move-result v7

    .line 625
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get1(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getInstalled(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 626
    .local v3, "installed":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_d

    .line 627
    :cond_9
    const-string/jumbo v8, "None"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    :cond_a
    const-string/jumbo v8, "Enabled VrListenerService components:"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    iget-object v8, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v8}, Lcom/android/server/vr/VrManagerService;->-get1(Lcom/android/server/vr/VrManagerService;)Lcom/android/server/vr/EnabledComponentsObserver;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/vr/EnabledComponentsObserver;->getEnabled(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 636
    .local v0, "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_e

    .line 637
    :cond_b
    const-string/jumbo v8, "None"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    :cond_c
    const-string/jumbo v8, "\n"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    const-string/jumbo v8, "********* End of VrManagerService Dump *********"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    return-void

    .line 629
    .end local v0    # "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "n$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 630
    .local v4, "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 639
    .end local v4    # "n":Landroid/content/ComponentName;
    .end local v5    # "n$iterator":Ljava/util/Iterator;
    .restart local v0    # "enabled":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    :cond_e
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "n$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 640
    .restart local v4    # "n":Landroid/content/ComponentName;
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public getPersistentVrModeEnabled()Z
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 560
    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 559
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap0(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public getVr2dDisplayId()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap3(Lcom/android/server/vr/VrManagerService;)I

    move-result v0

    return v0
.end method

.method public getVrModeState()Z
    .locals 4

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 553
    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 552
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->-wrap1(Lcom/android/server/vr/VrManagerService;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 4
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 509
    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 508
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap6(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    .line 515
    return-void
.end method

.method public registerPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 4
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 531
    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 530
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 532
    if-nez p1, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap5(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 537
    return-void
.end method

.method public setAndBindCompositor(Ljava/lang/String;)V
    .locals 5
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 584
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.RESTRICTED_VR_ACCESS"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 585
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 586
    if-nez p1, :cond_0

    .line 585
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/vr/VrManagerService;->-wrap19(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;)V

    .line 587
    return-void

    .line 586
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.RESTRICTED_VR_ACCESS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap21(Lcom/android/server/vr/VrManagerService;Z)V

    .line 568
    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 4
    .param p1, "vr2dDisplayProp"    # Landroid/app/Vr2dDisplayProperties;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.RESTRICTED_VR_ACCESS"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    .line 575
    return-void
.end method

.method public unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    .locals 4
    .param p1, "cb"    # Landroid/service/vr/IVrStateCallbacks;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 520
    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 519
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap15(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IVrStateCallbacks;)V

    .line 526
    return-void
.end method

.method public unregisterPersistentVrStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 4
    .param p1, "cb"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.permission.ACCESS_VR_MANAGER"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 542
    const-string/jumbo v2, "android.permission.ACCESS_VR_STATE"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 541
    invoke-static {v0, v1}, Lcom/android/server/vr/VrManagerService;->-wrap9(Lcom/android/server/vr/VrManagerService;[Ljava/lang/String;)V

    .line 543
    if-nez p1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Callback binder object is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->-wrap14(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 548
    return-void
.end method
