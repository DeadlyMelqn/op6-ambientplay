.class final synthetic Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f0:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->lambda$-com_android_server_pm_LauncherAppsService$LauncherAppsImpl$MyPackageMonitor_39680(Ljava/lang/String;I)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget v2, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f0:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$-com_android_server_pm_PackageManagerService_155855(Ljava/util/List;I)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ParallelPackageParser;

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget v2, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f0:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ParallelPackageParser;->lambda$-com_android_server_pm_ParallelPackageParser_3701(Ljava/io/File;I)V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService;

    iget v2, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f0:I

    iget-object v1, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/ShortcutService;->lambda$-com_android_server_pm_ShortcutService_54837(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(BILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->$id:B

    iput p2, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f0:I

    iput-object p3, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/pm/-$Lambda$i1ZZeLvwPPAZVBl_nnQ0C2t5oMs;->$m$3()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
