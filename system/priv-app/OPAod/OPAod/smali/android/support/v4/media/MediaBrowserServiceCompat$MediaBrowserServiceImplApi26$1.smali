.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/media/MediaBrowserServiceCompat$Result",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;

.field final synthetic val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;
    .param p2, "$anonymous0"    # Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;

    .line 437
    invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;->detach()V

    .line 455
    return-void
.end method

.method bridge synthetic onResultSent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 438
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->onResultSent(Ljava/util/List;)V

    return-void
.end method

.method onResultSent(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    const/4 v3, 0x0

    .line 441
    .local v3, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    if-eqz p1, :cond_0

    .line 442
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v3, "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 444
    .local v0, "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 445
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 446
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    .end local v0    # "item":Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v3    # "parcelList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Parcel;>;"
    :cond_0
    iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->val$resultWrapper:Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;

    invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1;->getFlags()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/media/MediaBrowserServiceCompatApi26$ResultWrapper;->sendResult(Ljava/util/List;I)V

    .line 450
    return-void
.end method
