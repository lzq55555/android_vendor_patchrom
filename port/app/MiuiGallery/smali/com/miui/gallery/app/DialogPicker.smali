.class public Lcom/miui/gallery/app/DialogPicker;
.super Lcom/miui/gallery/app/PickerActivity;
.source "DialogPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/app/PickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/miui/gallery/app/PickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/miui/gallery/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/util/GalleryUtils;->determineTypeBits(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    .line 32
    invoke-static {v1}, Lcom/miui/gallery/util/GalleryUtils;->getSelectionModePrompt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/app/DialogPicker;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/miui/gallery/app/DialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    :goto_0
    const-string v2, "get-content"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v2, "media-path"

    invoke-virtual {p0}, Lcom/miui/gallery/app/DialogPicker;->getDataManager()Lcom/miui/gallery/data/DataManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/gallery/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/miui/gallery/app/DialogPicker;->getStateManager()Lcom/miui/gallery/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/miui/gallery/app/AlbumSetPage;

    invoke-virtual {v1, v2, v0}, Lcom/miui/gallery/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/gallery/app/DialogPicker;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 43
    return-void

    .line 35
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method
