.class Landroid/support/v17/leanback/widget/SearchBar$10;
.super Ljava/lang/Object;
.source "SearchBar.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/SearchBar;->startRecognition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/SearchBar;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/SearchBar;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/SearchBar;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 670
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 680
    packed-switch p1, :pswitch_data_0

    .line 709
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer other error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 714
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchFailure()V

    .line 715
    return-void

    .line 682
    :pswitch_0
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer network timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 685
    :pswitch_1
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer network error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 688
    :pswitch_2
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer audio error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 691
    :pswitch_3
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer server error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 694
    :pswitch_4
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer client error"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    :pswitch_5
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer speech timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :pswitch_6
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer no match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :pswitch_7
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer busy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 706
    :pswitch_8
    sget-object v0, Landroid/support/v17/leanback/widget/SearchBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "recognizer insufficient permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 762
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 737
    const-string/jumbo v3, "results_recognition"

    .line 736
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 742
    .local v1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 743
    :cond_0
    return-void

    .line 748
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 753
    .local v2, "stableText":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 756
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    invoke-virtual {v3, v2, v0}, Landroid/support/v17/leanback/widget/SearchEditText;->updateRecognizedText(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    return-void

    .line 753
    :cond_2
    const/4 v0, 0x0

    .local v0, "pendingText":Ljava/lang/String;
    goto :goto_0
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 651
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->showListening()V

    .line 652
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchOpen()V

    .line 653
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 721
    const-string/jumbo v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 722
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 725
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 726
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSearchTextEditor:Landroid/support/v17/leanback/widget/SearchEditText;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->submitQuery()V

    .line 730
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->stopRecognition()V

    .line 731
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchBar;->playSearchSuccess()V

    .line 732
    return-void
.end method

.method public onRmsChanged(F)V
    .locals 2
    .param p1, "rmsdB"    # F

    .prologue
    .line 663
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 664
    .local v0, "level":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SearchBar$10;->this$0:Landroid/support/v17/leanback/widget/SearchBar;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/SearchBar;->mSpeechOrbView:Landroid/support/v17/leanback/widget/SpeechOrbView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SpeechOrbView;->setSoundLevel(I)V

    .line 665
    return-void

    .line 663
    .end local v0    # "level":I
    :cond_0
    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .restart local v0    # "level":I
    goto :goto_0
.end method
