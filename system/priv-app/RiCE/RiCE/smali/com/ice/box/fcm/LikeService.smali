.class public Lcom/ice/box/fcm/LikeService;
.super Landroid/app/Service;
.source "LikeService.java"


# static fields
.field private static final IMAGE_URL_EXTRA:Ljava/lang/String; = "imageUrl"

.field private static final NOTIFICATION_ID_EXTRA:Ljava/lang/String; = "notificationId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct/range {p0 .. p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
