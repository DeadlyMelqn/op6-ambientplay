.class Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteVideoInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenrecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenrecord/GlobalScreenrecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteVideoInBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 515
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteVideoInBackgroundTask;->mContext:Landroid/content/Context;

    .line 516
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 518
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteVideoInBackgroundTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 520
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return-object v4

    .line 522
    :cond_0
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 523
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$DeleteVideoInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 524
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 525
    return-object v4
.end method