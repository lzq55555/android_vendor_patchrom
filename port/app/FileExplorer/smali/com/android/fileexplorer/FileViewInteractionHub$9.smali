.class Lcom/android/fileexplorer/FileViewInteractionHub$9;
.super Ljava/lang/Object;
.source "FileViewInteractionHub.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/FileViewInteractionHub;->setupFileListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fileexplorer/FileViewInteractionHub;


# direct methods
.method constructor <init>(Lcom/android/fileexplorer/FileViewInteractionHub;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/fileexplorer/FileViewInteractionHub$9;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/fileexplorer/FileViewInteractionHub$9;->this$0:Lcom/android/fileexplorer/FileViewInteractionHub;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/fileexplorer/FileViewInteractionHub;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 687
    return-void
.end method
