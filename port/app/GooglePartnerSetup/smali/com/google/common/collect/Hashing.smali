.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static chooseTableSize(I)I
    .locals 3
    .parameter "setSize"

    .prologue
    const/high16 v1, 0x4000

    .line 50
    const/high16 v0, 0x2000

    if-ge p0, v0, :cond_0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    .line 56
    :goto_0
    return v0

    .line 55
    :cond_0
    if-ge p0, v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 56
    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static smear(I)I
    .locals 2
    .parameter "hashCode"

    .prologue
    .line 38
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 39
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method
