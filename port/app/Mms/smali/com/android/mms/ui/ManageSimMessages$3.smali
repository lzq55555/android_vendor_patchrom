.class Lcom/android/mms/ui/ManageSimMessages$3;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x2

    #calls: Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$200(Lcom/android/mms/ui/ManageSimMessages;I)V

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$3;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->deleteAllFromSim()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$600(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 363
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 364
    return-void
.end method
