.class Lcom/android/browser/Tab$MainWebViewClient$1;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/Tab$MainWebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/Tab$MainWebViewClient;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab$MainWebViewClient;)V
    .locals 0
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/android/browser/Tab$MainWebViewClient$1;->this$1:Lcom/android/browser/Tab$MainWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lcom/android/browser/Tab$MainWebViewClient$1;->this$1:Lcom/android/browser/Tab$MainWebViewClient;

    #getter for: Lcom/android/browser/Tab$MainWebViewClient;->mDontResend:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/browser/Tab$MainWebViewClient;->access$800(Lcom/android/browser/Tab$MainWebViewClient;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/browser/Tab$MainWebViewClient$1;->this$1:Lcom/android/browser/Tab$MainWebViewClient;

    #getter for: Lcom/android/browser/Tab$MainWebViewClient;->mDontResend:Landroid/os/Message;
    invoke-static {v0}, Lcom/android/browser/Tab$MainWebViewClient;->access$800(Lcom/android/browser/Tab$MainWebViewClient;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 759
    iget-object v0, p0, Lcom/android/browser/Tab$MainWebViewClient$1;->this$1:Lcom/android/browser/Tab$MainWebViewClient;

    #setter for: Lcom/android/browser/Tab$MainWebViewClient;->mResend:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/browser/Tab$MainWebViewClient;->access$902(Lcom/android/browser/Tab$MainWebViewClient;Landroid/os/Message;)Landroid/os/Message;

    .line 760
    iget-object v0, p0, Lcom/android/browser/Tab$MainWebViewClient$1;->this$1:Lcom/android/browser/Tab$MainWebViewClient;

    #setter for: Lcom/android/browser/Tab$MainWebViewClient;->mDontResend:Landroid/os/Message;
    invoke-static {v0, v1}, Lcom/android/browser/Tab$MainWebViewClient;->access$802(Lcom/android/browser/Tab$MainWebViewClient;Landroid/os/Message;)Landroid/os/Message;

    .line 762
    :cond_0
    return-void
.end method
