.class final Lcom/android/deskclock/Alarm$1;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/Alarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/deskclock/Alarm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/deskclock/Alarm;
    .locals 1
    .parameter "p"

    .prologue
    .line 38
    new-instance v0, Lcom/android/deskclock/Alarm;

    invoke-direct {v0, p1}, Lcom/android/deskclock/Alarm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/deskclock/Alarm$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/deskclock/Alarm;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/deskclock/Alarm;
    .locals 1
    .parameter "size"

    .prologue
    .line 42
    new-array v0, p1, [Lcom/android/deskclock/Alarm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/deskclock/Alarm$1;->newArray(I)[Lcom/android/deskclock/Alarm;

    move-result-object v0

    return-object v0
.end method
