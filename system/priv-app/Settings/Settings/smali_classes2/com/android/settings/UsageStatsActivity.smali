.class public Lcom/android/settings/UsageStatsActivity;
.super Landroid/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageStatsActivity$AppNameComparator;,
        Lcom/android/settings/UsageStatsActivity$AppViewHolder;,
        Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;,
        Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;,
        Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsageStatsActivity"

.field private static final localLOGV:Z


# instance fields
.field private mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/UsageStatsActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/UsageStatsActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/UsageStatsActivity;

    .prologue
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 238
    const v2, 0x7f040220

    invoke-virtual {p0, v2}, Lcom/android/settings/UsageStatsActivity;->setContentView(I)V

    .line 240
    const-string/jumbo v2, "usagestats"

    invoke-virtual {p0, v2}, Lcom/android/settings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManager;

    iput-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    .line 241
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/settings/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 244
    const v2, 0x7f0a038d

    invoke-virtual {p0, v2}, Lcom/android/settings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 245
    .local v1, "typeSpinner":Landroid/widget/Spinner;
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 247
    const v2, 0x7f0a038e

    invoke-virtual {p0, v2}, Lcom/android/settings/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 248
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v2, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;-><init>(Lcom/android/settings/UsageStatsActivity;)V

    iput-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    .line 249
    iget-object v2, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity;->mAdapter:Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList(I)V

    .line 255
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
