.class Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 1570
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    #getter for: Lcom/miui/home/launcher/Workspace;->mThumbnailView:Lcom/miui/home/launcher/WorkspaceThumbnailView;
    invoke-static {v0}, Lcom/miui/home/launcher/Workspace;->access$900(Lcom/miui/home/launcher/Workspace;)Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/WorkspaceThumbnailView;->setVisibility(I)V

    .line 1571
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v1, 0x0

    #calls: Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->access$1500(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V

    .line 1572
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Workspace;->setIndicatorBarVisibility(I)V

    .line 1573
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1566
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v1, 0x0

    const/4 v2, 0x7

    #calls: Lcom/miui/home/launcher/Workspace;->setTouchState(Landroid/view/MotionEvent;I)V
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/Workspace;->access$1400(Lcom/miui/home/launcher/Workspace;Landroid/view/MotionEvent;I)V

    .line 1562
    iget-object v0, p0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter$6;->this$1:Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v0, v0, Lcom/miui/home/launcher/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/miui/home/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Workspace;->setVisibility(I)V

    .line 1563
    return-void
.end method
