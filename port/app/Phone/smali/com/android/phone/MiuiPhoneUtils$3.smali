.class final Lcom/android/phone/MiuiPhoneUtils$3;
.super Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;
.source "MiuiPhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MiuiPhoneUtils;->getCallForwardingOption(Lcom/android/internal/telephony/Phone;ILandroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$commandInterfaceCFReason:I

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Landroid/os/Message;Lcom/android/internal/telephony/Phone;I)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 668
    iput-object p2, p0, Lcom/android/phone/MiuiPhoneUtils$3;->val$phone:Lcom/android/internal/telephony/Phone;

    iput p3, p0, Lcom/android/phone/MiuiPhoneUtils$3;->val$commandInterfaceCFReason:I

    invoke-direct {p0, p1}, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;-><init>(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public retry()V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/phone/MiuiPhoneUtils$3;->val$phone:Lcom/android/internal/telephony/Phone;

    iget v1, p0, Lcom/android/phone/MiuiPhoneUtils$3;->val$commandInterfaceCFReason:I

    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils$RetryWrapper;->obtainMessage(Lcom/android/phone/MiuiPhoneUtils$RetryWrapper$Retrier;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 672
    return-void
.end method
