.class final Lcom/android/internal/content/PdfUtils$1;
.super Landroid/os/AsyncTask;
.source "PdfUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/content/PdfUtils;->openPdfThumbnail(Ljava/io/File;Landroid/graphics/Point;)Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$in:Ljava/io/ByteArrayInputStream;

.field final synthetic val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>([Landroid/os/ParcelFileDescriptor;Ljava/io/ByteArrayInputStream;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/internal/content/PdfUtils$1;->val$in:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lcom/android/internal/content/PdfUtils$1;->val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 74
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 77
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 79
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/content/PdfUtils$1;->val$in:Ljava/io/ByteArrayInputStream;

    invoke-static {v2, v1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    iget-object v2, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 85
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/content/PdfUtils$1;->val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    const/4 v2, 0x0

    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 87
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
