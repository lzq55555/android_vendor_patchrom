.class Lcom/android/quicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;
.super Ljava/lang/Object;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchGoButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 546
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchGoButtonClickListener;->this$0:Lcom/android/quicksearchbox/ui/SearchActivityView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->onSearchClicked(I)Z

    .line 549
    return-void
.end method
