.class Lcom/miui/gallery/photoeditor/EffectsMenu$1;
.super Ljava/lang/Object;
.source "EffectsMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/photoeditor/EffectsMenu;->setToggleRunnalbe(Lcom/miui/gallery/photoeditor/EffectsMenu$OnToggleListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/photoeditor/EffectsMenu;

.field final synthetic val$effectsId:I

.field final synthetic val$listener:Lcom/miui/gallery/photoeditor/EffectsMenu$OnToggleListener;

.field final synthetic val$toggleId:I


# direct methods
.method constructor <init>(Lcom/miui/gallery/photoeditor/EffectsMenu;ILcom/miui/gallery/photoeditor/EffectsMenu$OnToggleListener;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->this$0:Lcom/miui/gallery/photoeditor/EffectsMenu;

    iput p2, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->val$toggleId:I

    iput-object p3, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->val$listener:Lcom/miui/gallery/photoeditor/EffectsMenu$OnToggleListener;

    iput p4, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->val$effectsId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 66
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->this$0:Lcom/miui/gallery/photoeditor/EffectsMenu;

    iget v2, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->val$toggleId:I

    invoke-virtual {v1, v2}, Lcom/miui/gallery/photoeditor/EffectsMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 67
    .local v0, selected:Z
    iget-object v1, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->this$0:Lcom/miui/gallery/photoeditor/EffectsMenu;

    iget v2, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->val$toggleId:I

    iget-object v3, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->val$listener:Lcom/miui/gallery/photoeditor/EffectsMenu$OnToggleListener;

    iget v4, p0, Lcom/miui/gallery/photoeditor/EffectsMenu$1;->val$effectsId:I

    invoke-interface {v3, v0, v4}, Lcom/miui/gallery/photoeditor/EffectsMenu$OnToggleListener;->onToggle(ZI)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/gallery/photoeditor/EffectsMenu;->setViewSelected(IZ)V

    .line 68
    return-void
.end method
