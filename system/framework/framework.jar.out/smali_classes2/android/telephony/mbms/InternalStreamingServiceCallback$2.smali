.class Landroid/telephony/mbms/InternalStreamingServiceCallback$2;
.super Ljava/lang/Object;
.source "InternalStreamingServiceCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/InternalStreamingServiceCallback;->onStreamStateUpdated(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

.field final synthetic val$reason:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/InternalStreamingServiceCallback;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/InternalStreamingServiceCallback;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    iput p2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$state:I

    iput p3, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$reason:I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->this$0:Landroid/telephony/mbms/InternalStreamingServiceCallback;

    invoke-static {v0}, Landroid/telephony/mbms/InternalStreamingServiceCallback;->-get0(Landroid/telephony/mbms/InternalStreamingServiceCallback;)Landroid/telephony/mbms/StreamingServiceCallback;

    move-result-object v0

    iget v1, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$state:I

    iget v2, p0, Landroid/telephony/mbms/InternalStreamingServiceCallback$2;->val$reason:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/mbms/StreamingServiceCallback;->onStreamStateUpdated(II)V

    .line 57
    return-void
.end method
