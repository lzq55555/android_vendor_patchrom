.class public Lcom/android/quicksearchbox/util/Now;
.super Ljava/lang/Object;
.source "Now.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/NowOrLater",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/android/quicksearchbox/util/Now;,"Lcom/android/quicksearchbox/util/Now<TC;>;"
    .local p1, value:Ljava/lang/Object;,"TC;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/quicksearchbox/util/Now;->mValue:Ljava/lang/Object;

    .line 27
    return-void
.end method


# virtual methods
.method public getLater(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<-TC;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/android/quicksearchbox/util/Now;,"Lcom/android/quicksearchbox/util/Now<TC;>;"
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<-TC;>;"
    invoke-virtual {p0}, Lcom/android/quicksearchbox/util/Now;->getNow()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lcom/android/quicksearchbox/util/Now;,"Lcom/android/quicksearchbox/util/Now<TC;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/util/Now;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public haveNow()Z
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lcom/android/quicksearchbox/util/Now;,"Lcom/android/quicksearchbox/util/Now<TC;>;"
    const/4 v0, 0x1

    return v0
.end method
