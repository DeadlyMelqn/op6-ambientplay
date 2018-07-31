.class final synthetic Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$-com_android_server_pm_InstantAppRegistry_21943(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$-com_android_server_pm_InstantAppRegistry_11324(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArraySet;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_5308(Landroid/util/ArraySet;Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/dex/DexManager;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_5578(Lcom/android/server/pm/dex/DexManager;Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$4(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$-com_android_server_pm_ShortcutService$LocalService_89820(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$id:B

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$3(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$4(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
