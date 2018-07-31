.class Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingViewTemplate"
.end annotation


# instance fields
.field public defaultHeight:I

.field public final remoteViews:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 2
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    .line 1324
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1325
    .local v0, "density":F
    const/high16 v1, 0x42480000    # 50.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->defaultHeight:I

    .line 1326
    return-void
.end method


# virtual methods
.method public loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "firstView"    # Landroid/widget/RemoteViews;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1331
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V

    .line 1332
    new-instance v1, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate$1;-><init>(Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;)V

    .line 1331
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;)Landroid/os/CancellationSignal;

    .line 1351
    return-void
.end method
