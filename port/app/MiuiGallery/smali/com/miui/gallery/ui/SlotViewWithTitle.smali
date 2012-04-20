.class public Lcom/miui/gallery/ui/SlotViewWithTitle;
.super Lcom/miui/gallery/ui/SlotView;
.source "SlotViewWithTitle.java"


# instance fields
.field final mActivity:Lcom/miui/gallery/app/GalleryActivity;

.field mTitleView:Lcom/miui/gallery/ui/TitleView;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/app/GalleryActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 19
    invoke-interface {p1}, Lcom/miui/gallery/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/gallery/ui/SlotView;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotViewWithTitle;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    .line 21
    return-void
.end method

.method private updateActionBarCountText(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 40
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotViewWithTitle;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v0

    .line 42
    .local v0, actionBar:Lcom/miui/gallery/app/GalleryActionBar;
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotViewWithTitle;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/gallery/app/GalleryActionBar;->setCountText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/miui/gallery/ui/SlotViewWithTitle;->mActivity:Lcom/miui/gallery/app/GalleryActivity;

    invoke-interface {v1}, Lcom/miui/gallery/app/GalleryActivity;->getGalleryActionBar()Lcom/miui/gallery/app/GalleryActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/gallery/app/GalleryActionBar;->setTitleTextVisibility(I)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public setTitleView(Lcom/miui/gallery/ui/TitleView;)V
    .locals 0
    .parameter "titleView"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/ui/SlotViewWithTitle;->mTitleView:Lcom/miui/gallery/ui/TitleView;

    .line 25
    return-void
.end method

.method public updateTitleView(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/ui/SlotViewWithTitle;->updateTitleView(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public updateTitleView(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotViewWithTitle;->mTitleView:Lcom/miui/gallery/ui/TitleView;

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/SlotViewWithTitle;->updateActionBarCountText(Ljava/lang/String;)V

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/ui/SlotViewWithTitle;->mTitleView:Lcom/miui/gallery/ui/TitleView;

    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/TitleView;->setCount(Ljava/lang/String;)V

    goto :goto_0
.end method
