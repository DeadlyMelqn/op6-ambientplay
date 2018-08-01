.class public Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;
.super Landroid/database/ContentObserver;
.source "OpaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/OpaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NavBarAnimationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/OpaLayout;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/OpaLayout;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/systemui/OpaLayout;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;->this$0:Lcom/google/android/systemui/OpaLayout;

    .line 142
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 143
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;->this$0:Lcom/google/android/systemui/OpaLayout;

    invoke-static {v1}, Lcom/google/android/systemui/OpaLayout;->-get0(Lcom/google/android/systemui/OpaLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "navigation_bar_animation"

    .line 147
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 149
    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 147
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/systemui/OpaLayout$NavBarAnimationObserver;->this$0:Lcom/google/android/systemui/OpaLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/OpaLayout;->setOpaEnabled(Z)V

    .line 156
    return-void
.end method
