.class Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;
.super Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;
.source "AlbumSetSlidingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/AlbumSetSlidingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyAlbumSetItem"
.end annotation


# instance fields
.field public cacheFlag:I

.field public cacheStatus:I

.field public setPath:Lcom/miui/gallery/data/Path;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetView$AlbumSetItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/AlbumSetSlidingWindow$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/miui/gallery/ui/AlbumSetSlidingWindow$MyAlbumSetItem;-><init>()V

    return-void
.end method
