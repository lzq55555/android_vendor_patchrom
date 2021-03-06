.class public Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;
.super Lcom/miui/gallery/photoeditor/filters/Filter;
.source "DuotoneFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private firstColor:I

.field private secondColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;

    invoke-static {v0}, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/filters/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/miui/gallery/photoeditor/Photo;Lcom/miui/gallery/photoeditor/Photo;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 43
    const-string v1, "android.media.effect.effects.DuotoneEffect"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 44
    .local v0, effect:Landroid/media/effect/Effect;
    const-string v1, "first_color"

    iget v2, p0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->firstColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    const-string v1, "second_color"

    iget v2, p0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->secondColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 47
    return-void
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->firstColor:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->secondColor:I

    .line 59
    return-void
.end method

.method public setDuotone(II)V
    .locals 0
    .parameter "firstColor"
    .parameter "secondColor"

    .prologue
    .line 36
    iput p1, p0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->firstColor:I

    .line 37
    iput p2, p0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->secondColor:I

    .line 38
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->validate()V

    .line 39
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->firstColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/miui/gallery/photoeditor/filters/DuotoneFilter;->secondColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
