.class public Lcom/miui/gallery/photoeditor/filters/SaturationFilter;
.super Lcom/miui/gallery/photoeditor/filters/AbstractScaleFilter;
.source "SaturationFilter.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/photoeditor/filters/SaturationFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/miui/gallery/photoeditor/filters/SaturationFilter;

    invoke-static {v0}, Lcom/miui/gallery/photoeditor/filters/SaturationFilter;->creatorOf(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery/photoeditor/filters/SaturationFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/gallery/photoeditor/filters/AbstractScaleFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/miui/gallery/photoeditor/Photo;Lcom/miui/gallery/photoeditor/Photo;)V
    .locals 5
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 33
    const-string v1, "android.media.effect.effects.SaturateEffect"

    invoke-virtual {p0, v1}, Lcom/miui/gallery/photoeditor/filters/SaturationFilter;->getEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    move-result-object v0

    .line 34
    .local v0, effect:Landroid/media/effect/Effect;
    const-string v1, "scale"

    iget v2, p0, Lcom/miui/gallery/photoeditor/filters/SaturationFilter;->scale:F

    const/high16 v3, 0x3f00

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->width()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/gallery/photoeditor/Photo;->height()I

    move-result v3

    invoke-virtual {p2}, Lcom/miui/gallery/photoeditor/Photo;->texture()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 36
    return-void
.end method
