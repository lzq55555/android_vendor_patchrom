.class public Lcom/miui/gallery/StorageExplorer/DirInfo;
.super Lcom/miui/gallery/StorageExplorer/FileInfo;
.source "DirInfo.java"


# static fields
.field private static sDefaultFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;


# instance fields
.field public mCount:I

.field private mDbAlbum:Lcom/miui/gallery/data/DBAlbum;

.field private mDefaultCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

.field private mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

.field public mFolderCount:I

.field public mImageCount:I

.field public mVideoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    invoke-direct {v0}, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;-><init>()V

    sput-object v0, Lcom/miui/gallery/StorageExplorer/DirInfo;->sDefaultFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/miui/gallery/StorageExplorer/MediaFileFilter;)V
    .locals 1
    .parameter "file"
    .parameter "filter"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/miui/gallery/StorageExplorer/FileInfo;-><init>(Ljava/io/File;)V

    .line 33
    if-nez p2, :cond_0

    sget-object p2, Lcom/miui/gallery/StorageExplorer/DirInfo;->sDefaultFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    .end local p2
    :cond_0
    iput-object p2, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    .line 34
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/data/AlbumCache;->getAlbum(Ljava/lang/String;)Lcom/miui/gallery/data/DBAlbum;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mDbAlbum:Lcom/miui/gallery/data/DBAlbum;

    .line 35
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 7

    .prologue
    .line 94
    iget-object v5, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFile:Ljava/io/File;

    iget-object v6, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 95
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 96
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 97
    .local v1, child:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 96
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 104
    return-void
.end method

.method public getCover()Lcom/miui/gallery/StorageExplorer/BaseMeta;
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mDbAlbum:Lcom/miui/gallery/data/DBAlbum;

    invoke-virtual {v1}, Lcom/miui/gallery/data/DBAlbum;->getCover()Lcom/miui/gallery/StorageExplorer/BaseMeta;

    move-result-object v0

    .line 129
    .local v0, customizedCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mDefaultCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .end local v0           #customizedCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    :cond_0
    return-object v0
.end method

.method protected getSize()J
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 46
    array-length v1, v0

    int-to-long v1, v1

    .line 48
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getThumbnail(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pixelSize"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/DirInfo;->getCover()Lcom/miui/gallery/StorageExplorer/BaseMeta;

    move-result-object v1

    .line 116
    .local v1, cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v1}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->loadAllData()V

    .line 118
    iget-object v2, v1, Lcom/miui/gallery/StorageExplorer/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/miui/gallery/StorageExplorer/ImageLoader;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 120
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 124
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDir()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public isRecentAlbum()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mDbAlbum:Lcom/miui/gallery/data/DBAlbum;

    invoke-static {v0}, Lcom/miui/gallery/util/AlbumUtils;->isRecentAlbum(Lcom/miui/gallery/data/DBAlbum;)Z

    move-result v0

    return v0
.end method

.method public loadAllDataInternal()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 53
    invoke-super {p0}, Lcom/miui/gallery/StorageExplorer/FileInfo;->loadAllDataInternal()V

    .line 55
    iput v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mCount:I

    .line 56
    iput v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFolderCount:I

    .line 57
    iput v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mImageCount:I

    .line 58
    iput v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mVideoCount:I

    .line 59
    iput-object v8, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mDefaultCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    .line 60
    iget-object v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 61
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_5

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, attributes:I
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v2, v0, v5

    .line 64
    .local v2, child:Ljava/io/File;
    invoke-static {v2}, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->getFileAttributes(Ljava/io/File;)I

    move-result v1

    .line 65
    iget-object v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFilter:Lcom/miui/gallery/StorageExplorer/MediaFileFilter;

    invoke-virtual {v7, v1}, Lcom/miui/gallery/StorageExplorer/MediaFileFilter;->accept(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 63
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    :cond_0
    and-int/lit8 v7, v1, 0x1

    if-lez v7, :cond_2

    .line 70
    iget v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFolderCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mFolderCount:I

    .line 83
    :cond_1
    :goto_2
    iget v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mCount:I

    goto :goto_1

    .line 72
    :cond_2
    and-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_4

    .line 73
    iget v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mImageCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mImageCount:I

    .line 79
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mDefaultCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    if-nez v7, :cond_1

    .line 80
    invoke-static {v2, v8}, Lcom/miui/gallery/StorageExplorer/DirInfo;->getFileInfo(Ljava/io/File;Lcom/miui/gallery/StorageExplorer/MediaFileFilter;)Lcom/miui/gallery/StorageExplorer/FileInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mDefaultCover:Lcom/miui/gallery/StorageExplorer/BaseMeta;

    goto :goto_2

    .line 75
    :cond_4
    and-int/lit8 v7, v1, 0x10

    if-lez v7, :cond_3

    .line 76
    iget v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mVideoCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/gallery/StorageExplorer/DirInfo;->mVideoCount:I

    goto :goto_3

    .line 87
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #attributes:I
    .end local v2           #child:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_5
    invoke-virtual {p0}, Lcom/miui/gallery/StorageExplorer/DirInfo;->getCover()Lcom/miui/gallery/StorageExplorer/BaseMeta;

    move-result-object v3

    .line 88
    .local v3, cover:Lcom/miui/gallery/StorageExplorer/BaseMeta;
    if-eqz v3, :cond_6

    .line 89
    invoke-virtual {v3}, Lcom/miui/gallery/StorageExplorer/BaseMeta;->loadAllData()V

    .line 91
    :cond_6
    return-void
.end method
