.class Lcom/android/mms/ui/ConversationBase$ModeCallback$1;
.super Ljava/lang/Object;
.source "ConversationBase.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationBase$ModeCallback;->createMenu(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationBase$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationBase$ModeCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationBase$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationBase$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->access$2200(Lcom/android/mms/ui/ConversationBase$ModeCallback;)Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationBase$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->access$2200(Lcom/android/mms/ui/ConversationBase$ModeCallback;)Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->checkNothing()V

    .line 1677
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase$ModeCallback$1;->this$1:Lcom/android/mms/ui/ConversationBase$ModeCallback;

    #getter for: Lcom/android/mms/ui/ConversationBase$ModeCallback;->mCheckable:Lcom/android/mms/util/EditableListView$EditableListViewCheckable;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationBase$ModeCallback;->access$2200(Lcom/android/mms/ui/ConversationBase$ModeCallback;)Lcom/android/mms/util/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/util/EditableListView$EditableListViewCheckable;->checkAll()V

    goto :goto_0
.end method
