.class final Landroid/support/v7/media/MediaRouter$CallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final mCallback:Landroid/support/v7/media/MediaRouter$Callback;

.field public mFlags:I

.field public final mRouter:Landroid/support/v7/media/MediaRouter;

.field public mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$Callback;)V
    .locals 0

    .line 1911
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1912
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 1913
    iput-object p2, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    .line 1914
    sget-object p1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-void
.end method


# virtual methods
.method public filterRouteEvent(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 1918
    iget v0, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 1919
    invoke-virtual {p1, p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
