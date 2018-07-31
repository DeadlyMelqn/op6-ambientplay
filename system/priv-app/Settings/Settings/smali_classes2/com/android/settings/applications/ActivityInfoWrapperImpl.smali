.class public Lcom/android/settings/applications/ActivityInfoWrapperImpl;
.super Ljava/lang/Object;
.source "ActivityInfoWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/applications/ActivityInfoWrapper;


# instance fields
.field private final mInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/settings/applications/ActivityInfoWrapperImpl;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public supportsPictureInPicture()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/settings/applications/ActivityInfoWrapperImpl;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    return v0
.end method
