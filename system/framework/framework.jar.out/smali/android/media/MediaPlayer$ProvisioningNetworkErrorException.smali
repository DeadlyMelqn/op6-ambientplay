.class public final Landroid/media/MediaPlayer$ProvisioningNetworkErrorException;
.super Landroid/media/MediaDrmException;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisioningNetworkErrorException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 4884
    invoke-direct {p0, p1}, Landroid/media/MediaDrmException;-><init>(Ljava/lang/String;)V

    .line 4885
    return-void
.end method