.class Landroid/support/v4/view/ViewCompat$ViewCompatApi15Impl;
.super Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewCompatApi15Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1043
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat$ViewCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public hasOnClickListeners(Landroid/view/View;)Z
    .locals 0

    .line 1046
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p0

    return p0
.end method