.class Lcom/android/server/pm/PackageManagerService$PackageParserCallback$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPackagesLocked(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageParser$Package;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$PackageParserCallback;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$PackageParserCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$PackageParserCallback;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageParserCallback;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .locals 2
    .param p1, "p1"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "p2"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 931
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iget v1, p2, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 930
    check-cast p1, Landroid/content/pm/PackageParser$Package;

    check-cast p2, Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback$1;->compare(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method
