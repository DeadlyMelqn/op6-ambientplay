.class Landroid/speech/tts/TextToSpeechService$SynthHandler$1;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field final synthetic val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V
    .locals 0
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-wrap1(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-wrap0(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 568
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->play()V

    .line 569
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-wrap0(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    goto :goto_0
.end method
