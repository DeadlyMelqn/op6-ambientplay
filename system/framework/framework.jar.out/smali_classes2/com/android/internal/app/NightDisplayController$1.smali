.class Lcom/android/internal/app/NightDisplayController$1;
.super Landroid/database/ContentObserver;
.source "NightDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/NightDisplayController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/NightDisplayController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/NightDisplayController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/app/NightDisplayController$1;->this$0:Lcom/android/internal/app/NightDisplayController;

    .line 136
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 141
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 142
    :goto_0
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/internal/app/NightDisplayController$1;->this$0:Lcom/android/internal/app/NightDisplayController;

    invoke-static {v1, v0}, Lcom/android/internal/app/NightDisplayController;->-wrap0(Lcom/android/internal/app/NightDisplayController;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .local v0, "setting":Ljava/lang/String;
    goto :goto_0
.end method
