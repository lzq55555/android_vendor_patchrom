.class Lcom/android/soundrecorder/SoundRecorder$1;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/SoundRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$1;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$1;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #getter for: Lcom/android/soundrecorder/SoundRecorder;->mStopUiUpdate:Z
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$000(Lcom/android/soundrecorder/SoundRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$1;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->updateTimerView()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$100(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 142
    :cond_0
    return-void
.end method
