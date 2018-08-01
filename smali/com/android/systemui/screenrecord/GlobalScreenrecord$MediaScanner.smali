.class final Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;
.super Ljava/lang/Object;
.source "GlobalScreenrecord.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenrecord/GlobalScreenrecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaScanner"
.end annotation


# instance fields
.field private mConnection:Landroid/media/MediaScannerConnection;

.field private mDate:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p2, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mConnection:Landroid/media/MediaScannerConnection;

    .line 354
    return-void
.end method


# virtual methods
.method public connectAndScan(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mFileName:Ljava/lang/String;

    .line 373
    iput-object p2, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mDate:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 375
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 363
    const-string/jumbo v0, "GlobalScreenrecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MediaScanner done scanning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    iget-object v1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mDate:Ljava/lang/String;

    invoke-static {v0, p2, v1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-wrap1(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Landroid/net/Uri;Ljava/lang/String;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->mConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 369
    return-void
.end method
