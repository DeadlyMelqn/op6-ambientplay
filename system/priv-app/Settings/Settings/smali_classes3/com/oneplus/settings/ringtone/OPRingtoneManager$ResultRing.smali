.class public Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;
.super Ljava/lang/Object;
.source "OPRingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultRing"
.end annotation


# instance fields
.field ringUri:Landroid/net/Uri;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->title:Ljava/lang/String;

    .line 500
    iput-object p2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneManager$ResultRing;->ringUri:Landroid/net/Uri;

    .line 501
    return-void
.end method
