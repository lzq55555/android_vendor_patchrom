.class public abstract Lcom/android/quicksearchbox/util/NowOrLaterWrapper;
.super Ljava/lang/Object;
.source "NowOrLaterWrapper.java"

# interfaces
.implements Lcom/android/quicksearchbox/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/quicksearchbox/util/NowOrLater",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private final mWrapped:Lcom/android/quicksearchbox/util/NowOrLater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/NowOrLater;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/NowOrLater",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/android/quicksearchbox/util/NowOrLaterWrapper;,"Lcom/android/quicksearchbox/util/NowOrLaterWrapper<TA;TB;>;"
    .local p1, wrapped:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/quicksearchbox/util/NowOrLaterWrapper;->mWrapped:Lcom/android/quicksearchbox/util/NowOrLater;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public getLater(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<-TB;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/android/quicksearchbox/util/NowOrLaterWrapper;,"Lcom/android/quicksearchbox/util/NowOrLaterWrapper<TA;TB;>;"
    .local p1, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<-TB;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/util/NowOrLaterWrapper;->mWrapped:Lcom/android/quicksearchbox/util/NowOrLater;

    new-instance v1, Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/quicksearchbox/util/NowOrLaterWrapper$1;-><init>(Lcom/android/quicksearchbox/util/NowOrLaterWrapper;Lcom/android/quicksearchbox/util/Consumer;)V

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/util/NowOrLater;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V

    .line 34
    return-void
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/android/quicksearchbox/util/NowOrLaterWrapper;,"Lcom/android/quicksearchbox/util/NowOrLaterWrapper<TA;TB;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/util/NowOrLaterWrapper;->mWrapped:Lcom/android/quicksearchbox/util/NowOrLater;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NowOrLater;->getNow()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/util/NowOrLaterWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public haveNow()Z
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lcom/android/quicksearchbox/util/NowOrLaterWrapper;,"Lcom/android/quicksearchbox/util/NowOrLaterWrapper<TA;TB;>;"
    iget-object v0, p0, Lcom/android/quicksearchbox/util/NowOrLaterWrapper;->mWrapped:Lcom/android/quicksearchbox/util/NowOrLater;

    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NowOrLater;->haveNow()Z

    move-result v0

    return v0
.end method
