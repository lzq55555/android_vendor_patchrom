.class Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnIndexerChangeAnimationListener;
.super Ljava/lang/Object;
.source "AudioPlayerFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/fragment/AudioPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnIndexerChangeAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/fragment/AudioPlayerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnIndexerChangeAnimationListener;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/miui/player/ui/fragment/AudioPlayerFragment$OnIndexerChangeAnimationListener;->this$0:Lcom/miui/player/ui/fragment/AudioPlayerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/fragment/AudioPlayerFragment;->setAnimationPlaying(Z)V

    .line 596
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 600
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 604
    return-void
.end method