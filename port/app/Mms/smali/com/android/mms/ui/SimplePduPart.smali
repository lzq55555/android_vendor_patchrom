.class public Lcom/android/mms/ui/SimplePduPart;
.super Lcom/google/android/mms/pdu/PduPart;
.source "SimplePduPart.java"


# instance fields
.field private mAttachmentType:I

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SimplePduPart;->mAttachmentType:I

    .line 28
    iput-object p1, p0, Lcom/android/mms/ui/SimplePduPart;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private extractImageFromData(II)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->loadData()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 63
    const/4 v3, 0x0

    .line 65
    .local v3, input:Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v2

    .line 66
    .local v2, data:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v3           #input:Ljava/io/ByteArrayInputStream;
    .local v4, input:Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v1, Lmiui/graphics/drawable/GifAnimationDrawable;

    invoke-direct {v1}, Lmiui/graphics/drawable/GifAnimationDrawable;-><init>()V

    .line 68
    .local v1, d:Lmiui/graphics/drawable/GifAnimationDrawable;
    iget-object v7, p0, Lcom/android/mms/ui/SimplePduPart;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Lmiui/graphics/drawable/GifAnimationDrawable;->load(Landroid/content/res/Resources;Ljava/io/InputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_1

    .line 87
    if-eqz v4, :cond_0

    .line 89
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 95
    .end local v1           #d:Lmiui/graphics/drawable/GifAnimationDrawable;
    .end local v2           #data:[B
    .end local v4           #input:Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 71
    .restart local v1       #d:Lmiui/graphics/drawable/GifAnimationDrawable;
    .restart local v2       #data:[B
    .restart local v4       #input:Ljava/io/ByteArrayInputStream;
    :cond_1
    :try_start_3
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 72
    .local v5, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 73
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 74
    const/4 v6, 0x1

    .line 75
    .local v6, sampleSize:I
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v7, p2, :cond_2

    .line 76
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v6, v7, p2

    .line 78
    :cond_2
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v7, p1, :cond_3

    .line 79
    iget v7, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v7, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 81
    :cond_3
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 82
    .restart local v5       #o:Landroid/graphics/BitmapFactory$Options;
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    const/4 v7, 0x0

    array-length v8, v2

    invoke-static {v2, v7, v8, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #d:Lmiui/graphics/drawable/GifAnimationDrawable;
    iget-object v7, p0, Lcom/android/mms/ui/SimplePduPart;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    if-eqz v4, :cond_0

    .line 89
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v7

    goto :goto_0

    .line 87
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #data:[B
    .end local v4           #input:Ljava/io/ByteArrayInputStream;
    .end local v5           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v6           #sampleSize:I
    .restart local v3       #input:Ljava/io/ByteArrayInputStream;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v3, :cond_4

    .line 89
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 91
    :cond_4
    :goto_2
    throw v7

    .line 95
    .end local v3           #input:Ljava/io/ByteArrayInputStream;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 90
    .restart local v1       #d:Lmiui/graphics/drawable/GifAnimationDrawable;
    .restart local v2       #data:[B
    .restart local v4       #input:Ljava/io/ByteArrayInputStream;
    :catch_1
    move-exception v7

    goto :goto_0

    .end local v1           #d:Lmiui/graphics/drawable/GifAnimationDrawable;
    .end local v2           #data:[B
    .end local v4           #input:Ljava/io/ByteArrayInputStream;
    .restart local v3       #input:Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 87
    .end local v3           #input:Ljava/io/ByteArrayInputStream;
    .restart local v2       #data:[B
    .restart local v4       #input:Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #input:Ljava/io/ByteArrayInputStream;
    .restart local v3       #input:Ljava/io/ByteArrayInputStream;
    goto :goto_1
.end method

.method private extractTextFromData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->loadData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v0

    .line 101
    .local v0, data:[B
    if-eqz v0, :cond_1

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getCharset()I

    move-result v3

    if-nez v3, :cond_0

    .line 104
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 114
    .end local v0           #data:[B
    :goto_0
    return-object v3

    .line 106
    .restart local v0       #data:[B
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getCharset()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 110
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 114
    .end local v0           #data:[B
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public getAttachmentType()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/android/mms/ui/SimplePduPart;->mAttachmentType:I

    return v0
.end method

.method public getImage(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPart;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SimplePduPart;->extractImageFromData(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SimplePduPart;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SimplePduPart;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageNoCache(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "widthLimit"
    .parameter "heightLimit"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SimplePduPart;->extractImageFromData(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getContentType()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/mms/ui/SimplePduPart;->extractTextFromData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method loadData()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getData()[B

    move-result-object v7

    if-eqz v7, :cond_0

    .line 145
    :goto_0
    return v5

    .line 121
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 122
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 124
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/SimplePduPart;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/mms/ui/SimplePduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 125
    if-nez v3, :cond_2

    .line 137
    if-eqz v3, :cond_1

    .line 139
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    move v5, v6

    .line 141
    goto :goto_0

    .line 128
    :cond_2
    const/16 v7, 0x100

    :try_start_2
    new-array v1, v7, [B

    .line 129
    .local v1, buffer:[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 130
    .local v4, len:I
    :goto_2
    if-ltz v4, :cond_3

    .line 131
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 132
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    goto :goto_2

    .line 137
    :cond_3
    if-eqz v3, :cond_4

    .line 139
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 144
    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/SimplePduPart;->setData([B)V

    goto :goto_0

    .line 134
    .end local v1           #buffer:[B
    .end local v4           #len:I
    :catch_0
    move-exception v2

    .line 137
    .local v2, e:Ljava/io/IOException;
    if-eqz v3, :cond_5

    .line 139
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_4
    move v5, v6

    .line 141
    goto :goto_0

    .line 137
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_6

    .line 139
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 141
    :cond_6
    :goto_5
    throw v5

    .line 140
    :catch_1
    move-exception v5

    goto :goto_1

    .restart local v1       #buffer:[B
    .restart local v4       #len:I
    :catch_2
    move-exception v6

    goto :goto_3

    .end local v1           #buffer:[B
    .end local v4           #len:I
    .restart local v2       #e:Ljava/io/IOException;
    :catch_3
    move-exception v5

    goto :goto_4

    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    goto :goto_5
.end method

.method public setAttachmentType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 36
    iput p1, p0, Lcom/android/mms/ui/SimplePduPart;->mAttachmentType:I

    .line 37
    return-void
.end method
