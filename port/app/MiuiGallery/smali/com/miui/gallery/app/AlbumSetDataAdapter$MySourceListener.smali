.class Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;
.super Ljava/lang/Object;
.source "AlbumSetDataAdapter.java"

# interfaces
.implements Lcom/miui/gallery/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/AlbumSetDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySourceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;Lcom/miui/gallery/app/AlbumSetDataAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;-><init>(Lcom/miui/gallery/app/AlbumSetDataAdapter;)V

    return-void
.end method


# virtual methods
.method public onContentDirty()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/miui/gallery/app/AlbumSetDataAdapter$MySourceListener;->this$0:Lcom/miui/gallery/app/AlbumSetDataAdapter;

    #getter for: Lcom/miui/gallery/app/AlbumSetDataAdapter;->mReloadTask:Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;
    invoke-static {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter;->access$200(Lcom/miui/gallery/app/AlbumSetDataAdapter;)Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/app/AlbumSetDataAdapter$ReloadTask;->notifyDirty()V

    .line 262
    return-void
.end method
