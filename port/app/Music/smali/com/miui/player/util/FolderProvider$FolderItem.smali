.class public Lcom/miui/player/util/FolderProvider$FolderItem;
.super Ljava/lang/Object;
.source "FolderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/util/FolderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderItem"
.end annotation


# instance fields
.field final mFolderName:Ljava/lang/String;

.field final mFolderPath:Ljava/lang/String;

.field mSelected:Z

.field mTrackCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "path"
    .parameter "trackCount"
    .parameter "selected"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderPath:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/miui/player/util/FolderProvider;->parseFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderName:Ljava/lang/String;

    .line 57
    iput p2, p0, Lcom/miui/player/util/FolderProvider$FolderItem;->mTrackCount:I

    .line 58
    iput-boolean p3, p0, Lcom/miui/player/util/FolderProvider$FolderItem;->mSelected:Z

    .line 59
    return-void
.end method


# virtual methods
.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/player/util/FolderProvider$FolderItem;->mFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/miui/player/util/FolderProvider$FolderItem;->mTrackCount:I

    return v0
.end method
