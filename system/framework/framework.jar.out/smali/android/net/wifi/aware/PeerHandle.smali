.class public Landroid/net/wifi/aware/PeerHandle;
.super Ljava/lang/Object;
.source "PeerHandle.java"


# instance fields
.field public peerId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "peerId"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    .line 31
    return-void
.end method
