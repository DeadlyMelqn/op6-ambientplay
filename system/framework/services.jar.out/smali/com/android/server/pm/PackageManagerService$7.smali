.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->scanPackageDirtyLI(Landroid/content/pm/PackageParser$Package;IIJLandroid/os/UserHandle;)Landroid/content/pm/PackageParser$Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$allPackageNames:Ljava/util/ArrayList;

.field final synthetic val$oldPkg:Landroid/content/pm/PackageParser$Package;

.field final synthetic val$pkg:Landroid/content/pm/PackageParser$Package;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$oldPkg:Landroid/content/pm/PackageParser$Package;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$7;->val$allPackageNames:Ljava/util/ArrayList;

    .line 11993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 11995
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$7;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$7;->val$pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$7;->val$oldPkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$7;->val$allPackageNames:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap50(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;)V

    .line 11996
    return-void
.end method
