.class Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;
.super Landroid/os/AsyncTask;
.source "OPMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/storage/OPMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSignal:Landroid/os/CancellationSignal;

.field private final mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/settings/storage/OPMediaProvider$FileType;Lcom/oneplus/settings/storage/OPMediaProvider$Callback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .param p3, "callback"    # Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 214
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mSignal:Landroid/os/CancellationSignal;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mResolver:Landroid/content/ContentResolver;

    .line 218
    iput-object p2, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .line 219
    iput-object p3, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    .line 220
    return-void
.end method


# virtual methods
.method public cancelExcutor()V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->cancel(Z)Z

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 225
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 230
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 231
    .local v1, "fileUri":Landroid/net/Uri;
    const-string/jumbo v0, "LoadInfoTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "LoadInfoTask type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "), fileUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v7, 0x0

    .line 233
    .local v7, "cursor":Landroid/database/Cursor;
    const-wide/16 v10, 0x0

    .line 235
    .local v10, "size":J
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/oneplus/settings/storage/OPMediaProvider;->-get0()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-static {v3}, Lcom/oneplus/settings/storage/OPMediaProvider;->-wrap0(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mSignal:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    .line 236
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 239
    :cond_0
    const-string/jumbo v0, "LoadInfoTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 244
    const-string/jumbo v0, "LoadInfoTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calculated type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v7    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 240
    :catch_0
    move-exception v8

    .line 241
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "LoadInfoTask"

    const-string/jumbo v2, "doInBackground error:"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 244
    const-string/jumbo v0, "LoadInfoTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Calculated type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 243
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 244
    const-string/jumbo v2, "LoadInfoTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Calculated type("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "): size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mCallback:Lcom/oneplus/settings/storage/OPMediaProvider$Callback;

    iget-object v1, p0, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->mType:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/oneplus/settings/storage/OPMediaProvider$Callback;->loaded(Lcom/oneplus/settings/storage/OPMediaProvider$FileType;J)V

    .line 253
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 250
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/storage/OPMediaProvider$LoadInfoTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
