.class Lcom/miui/player/ui/MusicBrowserActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MusicBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MusicBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MusicBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MusicBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/miui/player/ui/MusicBrowserActivity$2;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 445
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$2;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    #getter for: Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z
    invoke-static {v2}, Lcom/miui/player/ui/MusicBrowserActivity;->access$000(Lcom/miui/player/ui/MusicBrowserActivity;)Z

    move-result v1

    .line 447
    .local v1, isRefreshMediaProvider:Z
    if-nez v1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 451
    const v2, 0x7f08000f

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 452
    iget-object v2, p0, Lcom/miui/player/ui/MusicBrowserActivity$2;->this$0:Lcom/miui/player/ui/MusicBrowserActivity;

    #setter for: Lcom/miui/player/ui/MusicBrowserActivity;->mIsRefreshMediaProvider:Z
    invoke-static {v2, v3}, Lcom/miui/player/ui/MusicBrowserActivity;->access$002(Lcom/miui/player/ui/MusicBrowserActivity;Z)Z

    goto :goto_0

    .line 453
    :cond_2
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const v2, 0x7f080010

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
