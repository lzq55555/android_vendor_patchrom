.class final Lcom/miui/gallery/provider/GalleryProvider$MtpPipeDataWriter;
.super Ljava/lang/Object;
.source "GalleryProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MtpPipeDataWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ContentProvider$PipeDataWriter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImage:Lcom/miui/gallery/data/MtpImage;

.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryProvider;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/provider/GalleryProvider;Lcom/miui/gallery/data/MtpImage;)V
    .locals 0
    .parameter
    .parameter "image"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryProvider$MtpPipeDataWriter;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/miui/gallery/provider/GalleryProvider$MtpPipeDataWriter;->mImage:Lcom/miui/gallery/data/MtpImage;

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/GalleryProvider;Lcom/miui/gallery/data/MtpImage;Lcom/miui/gallery/provider/GalleryProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/GalleryProvider$MtpPipeDataWriter;-><init>(Lcom/miui/gallery/provider/GalleryProvider;Lcom/miui/gallery/data/MtpImage;)V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 6
    .parameter "output"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "opts"
    .parameter "args"

    .prologue
    .line 237
    const/4 v1, 0x0

    .line 239
    .local v1, os:Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1           #os:Ljava/io/OutputStream;
    .local v2, os:Ljava/io/OutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/miui/gallery/provider/GalleryProvider$MtpPipeDataWriter;->mImage:Lcom/miui/gallery/data/MtpImage;

    invoke-virtual {v3}, Lcom/miui/gallery/data/MtpImage;->getImageData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    invoke-static {v2}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 246
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v3, "GalleryProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/miui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2

    .line 241
    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_1
.end method
