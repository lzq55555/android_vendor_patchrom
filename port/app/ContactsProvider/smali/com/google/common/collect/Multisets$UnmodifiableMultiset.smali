.class Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
.super Lcom/google/common/collect/ForwardingMultiset;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingMultiset",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;"
        }
    .end annotation
.end field

.field transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter "occurences"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    .local p1, element:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    .local p1, elementsToAdd:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 133
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected delegate()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 63
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet:Ljava/util/Set;

    .line 81
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/Multiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    iput-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->elementSet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->entrySet:Ljava/util/Set;

    .line 91
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/Multiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;->delegate:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "element"

    .prologue
    .line 117
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    .local p1, elementsToRemove:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Lcom/google/common/collect/Multisets$UnmodifiableMultiset;,"Lcom/google/common/collect/Multisets$UnmodifiableMultiset<TE;>;"
    .local p1, elementsToRetain:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
