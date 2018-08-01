.class Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;
.super Ljava/lang/Object;
.source "GlobalScreenrecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenrecord/GlobalScreenrecord;->stopScreenrecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 302
    iget-object v9, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v9, v12}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-set0(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;)Lcom/android/systemui/screenrecord/GlobalScreenrecord$CaptureThread;

    .line 304
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyyMMdd_HHmmss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "date":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ScreenRec_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 306
    const-string/jumbo v10, ".mp4"

    .line 305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "fileName":Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 307
    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 309
    .local v7, "pictures":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "Screenrecords"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    .local v8, "screenrecords":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 312
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    move-result v9

    if-nez v9, :cond_0

    .line 313
    const-string/jumbo v9, "GlobalScreenrecord"

    const-string/jumbo v10, "Cannot create screenrecords directory"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v9, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v9}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get2(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 315
    return-void

    .line 319
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get0()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v4, "input":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 322
    .local v6, "output":Ljava/io/File;
    const-string/jumbo v9, "GlobalScreenrecord"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Copying file to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :try_start_0
    invoke-static {v4, v6}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-wrap0(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 335
    iget-object v9, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-set1(Lcom/android/systemui/screenrecord/GlobalScreenrecord;J)J

    .line 340
    new-instance v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;

    iget-object v9, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    iget-object v10, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v10}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get1(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;-><init>(Lcom/android/systemui/screenrecord/GlobalScreenrecord;Landroid/content/Context;)V

    .local v0, "client":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    move-object v9, v0

    .line 341
    check-cast v9, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v12}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->connectAndScan(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    check-cast v0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;

    .end local v0    # "client":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v1}, Lcom/android/systemui/screenrecord/GlobalScreenrecord$MediaScanner;->connectAndScan(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v9, "GlobalScreenrecord"

    const-string/jumbo v10, "Unable to copy output file"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    iget-object v9, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v9}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get3(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 329
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/systemui/screenrecord/GlobalScreenrecord$2;->this$0:Lcom/android/systemui/screenrecord/GlobalScreenrecord;

    invoke-static {v9}, Lcom/android/systemui/screenrecord/GlobalScreenrecord;->-get3(Lcom/android/systemui/screenrecord/GlobalScreenrecord;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 330
    return-void

    .line 331
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v9

    .line 332
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 331
    throw v9
.end method
