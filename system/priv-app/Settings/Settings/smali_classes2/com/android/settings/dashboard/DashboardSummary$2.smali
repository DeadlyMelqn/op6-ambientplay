.class final Lcom/android/settings/dashboard/DashboardSummary$2;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settingslib/drawer/DashboardCategory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/drawer/DashboardCategory;Lcom/android/settingslib/drawer/DashboardCategory;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settingslib/drawer/DashboardCategory;
    .param p2, "rhs"    # Lcom/android/settingslib/drawer/DashboardCategory;

    .prologue
    .line 436
    iget v0, p2, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    iget v1, p1, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 434
    check-cast p1, Lcom/android/settingslib/drawer/DashboardCategory;

    check-cast p2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardSummary$2;->compare(Lcom/android/settingslib/drawer/DashboardCategory;Lcom/android/settingslib/drawer/DashboardCategory;)I

    move-result v0

    return v0
.end method
