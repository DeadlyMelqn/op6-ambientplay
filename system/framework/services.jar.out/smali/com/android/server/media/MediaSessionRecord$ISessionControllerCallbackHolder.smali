.class Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISessionControllerCallbackHolder"
.end annotation


# instance fields
.field private final mCallback:Landroid/media/session/ISessionControllerCallback;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Landroid/media/session/ISessionControllerCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    .prologue
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "callback"    # Landroid/media/session/ISessionControllerCallback;
    .param p3, "uid"    # I

    .prologue
    .line 1395
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1396
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mCallback:Landroid/media/session/ISessionControllerCallback;

    .line 1397
    invoke-static {p1, p3}, Lcom/android/server/media/MediaSessionRecord;->-wrap2(Lcom/android/server/media/MediaSessionRecord;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;->mPackageName:Ljava/lang/String;

    .line 1398
    return-void
.end method
