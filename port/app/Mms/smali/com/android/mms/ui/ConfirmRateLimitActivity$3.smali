.class Lcom/android/mms/ui/ConfirmRateLimitActivity$3;
.super Ljava/lang/Object;
.source "ConfirmRateLimitActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConfirmRateLimitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConfirmRateLimitActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConfirmRateLimitActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity$3;->this$0:Lcom/android/mms/ui/ConfirmRateLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/ConfirmRateLimitActivity$3;->this$0:Lcom/android/mms/ui/ConfirmRateLimitActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/mms/ui/ConfirmRateLimitActivity;->doAnswer(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConfirmRateLimitActivity;->access$000(Lcom/android/mms/ui/ConfirmRateLimitActivity;Z)V

    .line 73
    return-void
.end method
