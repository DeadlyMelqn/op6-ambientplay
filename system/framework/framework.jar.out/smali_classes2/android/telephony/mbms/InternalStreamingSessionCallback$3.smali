.class Landroid/telephony/mbms/InternalStreamingSessionCallback$3;
.super Ljava/lang/Object;
.source "InternalStreamingSessionCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingSessionCallback;->onMiddlewareReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingSessionCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingSessionCallback;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingSessionCallback$3;->this$0:Landroid/telephony/mbms/InternalStreamingSessionCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingSessionCallback;->-get0(Landroid/telephony/mbms/InternalStreamingSessionCallback;)Landroid/telephony/mbms/MbmsStreamingSessionCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/mbms/MbmsStreamingSessionCallback;->onMiddlewareReady()V

    .line 75
    return-void
.end method
