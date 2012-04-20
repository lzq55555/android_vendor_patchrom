.class abstract Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;
.super Lcom/miui/gallery/ui/SlotView$SimpleListener;
.source "HomePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/app/HomePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HomeSlotViewGestureLisenter"
.end annotation


# instance fields
.field mDataAdapter:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;

.field private mInSelectionMode:Z

.field mView:Lcom/miui/gallery/ui/AbstractHomeSlotView;

.field final synthetic this$0:Lcom/miui/gallery/app/HomePage;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/HomePage;Lcom/miui/gallery/ui/AbstractHomeSlotView;Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "dataAdapter"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-direct {p0}, Lcom/miui/gallery/ui/SlotView$SimpleListener;-><init>()V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mInSelectionMode:Z

    .line 220
    iput-object p2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mView:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    .line 221
    iput-object p3, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mDataAdapter:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;

    .line 222
    return-void
.end method

.method private canRespondToGesture()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v0, v0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mInSelectionMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowAllIndex(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mDataAdapter:Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;

    invoke-interface {v0}, Lcom/miui/gallery/ui/HomeSlidingWindowBase$Model;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getTargetMediaObject(I)Lcom/miui/gallery/data/MediaObject;
.end method

.method public isInSelectionMode()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mInSelectionMode:Z

    return v0
.end method

.method public onDown(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->canRespondToGesture()Z

    move-result v2

    if-nez v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->isShowAllIndex(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->getTargetMediaObject(I)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    .line 302
    .local v0, mediaObject:Lcom/miui/gallery/data/MediaObject;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 303
    .local v1, path:Lcom/miui/gallery/data/Path;
    :goto_1
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 304
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mView:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->invalidate()V

    goto :goto_0

    .line 302
    .end local v1           #path:Lcom/miui/gallery/data/Path;
    :cond_2
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->canRespondToGesture()Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->isShowAllIndex(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGetContent:Z
    invoke-static {v1}, Lcom/miui/gallery/app/HomePage;->access$1100(Lcom/miui/gallery/app/HomePage;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGetAlbum:Z
    invoke-static {v1}, Lcom/miui/gallery/app/HomePage;->access$1300(Lcom/miui/gallery/app/HomePage;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mShowDetails:Z
    invoke-static {v1}, Lcom/miui/gallery/app/HomePage;->access$200(Lcom/miui/gallery/app/HomePage;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 329
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->onSingleTapUp(I)V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->getTargetMediaObject(I)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    .line 334
    .local v0, mediaObject:Lcom/miui/gallery/data/MediaObject;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mInSelectionMode:Z

    .line 335
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v1, v1, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 337
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mDetailsSource:Lcom/miui/gallery/app/HomePage$MyDetailsSource;
    invoke-static {v1}, Lcom/miui/gallery/app/HomePage;->access$1400(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/app/HomePage$MyDetailsSource;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/HomePage$MyDetailsSource;->findIndex(I)I

    .line 338
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mView:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v1}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->invalidate()V

    goto :goto_0
.end method

.method public onSingleTapUp(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->canRespondToGesture()Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->isShowAllIndex(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mView:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->canDisplayShowAllItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->tapOnShowAll(I)V

    goto :goto_0

    .line 277
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->getTargetMediaObject(I)Lcom/miui/gallery/data/MediaObject;

    move-result-object v0

    .line 278
    .local v0, mediaObject:Lcom/miui/gallery/data/MediaObject;
    if-eqz v0, :cond_0

    .line 280
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mShowDetails:Z
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$200(Lcom/miui/gallery/app/HomePage;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v1

    .line 282
    .local v1, path:Lcom/miui/gallery/data/Path;
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mHighlightDrawer:Lcom/miui/gallery/ui/HighlightDrawer;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$1200(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/HighlightDrawer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/gallery/ui/HighlightDrawer;->setHighlightItem(Lcom/miui/gallery/data/Path;)V

    .line 283
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mDetailsHelper:Lcom/miui/gallery/ui/DetailsHelper;
    invoke-static {v2}, Lcom/miui/gallery/app/HomePage;->access$300(Lcom/miui/gallery/app/HomePage;)Lcom/miui/gallery/ui/DetailsHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/gallery/ui/DetailsHelper;->reloadDetails(I)V

    goto :goto_0

    .line 284
    .end local v1           #path:Lcom/miui/gallery/data/Path;
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-nez v2, :cond_4

    .line 285
    invoke-virtual {p0, v0, p1}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->tapOnTargetMediaObject(Lcom/miui/gallery/data/MediaObject;I)V

    goto :goto_0

    .line 287
    :cond_4
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v2, v2, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/data/MediaObject;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gallery/ui/SelectionManager;->toggle(Lcom/miui/gallery/data/Path;)V

    .line 288
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mView:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v2}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->invalidate()V

    goto :goto_0
.end method

.method public onUp()V
    .locals 2

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->canRespondToGesture()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v0, v0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/SelectionManager;->getPressedPath()Lcom/miui/gallery/data/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v0, v0, Lcom/miui/gallery/app/HomePage;->mSelectionManager:Lcom/miui/gallery/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/ui/SelectionManager;->setPressedPath(Lcom/miui/gallery/data/Path;)V

    .line 314
    iget-object v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mView:Lcom/miui/gallery/ui/AbstractHomeSlotView;

    invoke-virtual {v0}, Lcom/miui/gallery/ui/AbstractHomeSlotView;->invalidate()V

    goto :goto_0
.end method

.method public setNotInSelectionMode()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->mInSelectionMode:Z

    .line 233
    return-void
.end method

.method protected startAlbumPage(Lcom/miui/gallery/data/MediaSet;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 241
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    invoke-virtual {v1}, Lcom/miui/gallery/app/HomePage;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 242
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 243
    iget-object v2, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #calls: Lcom/miui/gallery/app/HomePage;->savePositions(I[I)V
    invoke-static {v2, p2, v1}, Lcom/miui/gallery/app/HomePage;->access$1000(Lcom/miui/gallery/app/HomePage;I[I)V

    .line 244
    const-string v2, "set-center"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 245
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    #getter for: Lcom/miui/gallery/app/HomePage;->mGetContent:Z
    invoke-static {v1}, Lcom/miui/gallery/app/HomePage;->access$1100(Lcom/miui/gallery/app/HomePage;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getSupportedOperations()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "auto-select-all"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    :cond_0
    const-string v1, "media-path"

    invoke-virtual {p1}, Lcom/miui/gallery/data/MediaSet;->getPath()Lcom/miui/gallery/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "cluster-menu"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    iget-object v1, p0, Lcom/miui/gallery/app/HomePage$HomeSlotViewGestureLisenter;->this$0:Lcom/miui/gallery/app/HomePage;

    iget-object v1, v1, Lcom/miui/gallery/app/HomePage;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/AlbumPage;

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/gallery/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 253
    return-void
.end method

.method protected abstract tapOnShowAll(I)V
.end method

.method protected abstract tapOnTargetMediaObject(Lcom/miui/gallery/data/MediaObject;I)V
.end method
