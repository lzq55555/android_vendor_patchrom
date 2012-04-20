.class public abstract Lcom/miui/gallery/ui/SelectionDrawer;
.super Ljava/lang/Object;
.source "SelectionDrawer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawFrame(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/NinePatchTexture;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "frame"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/miui/gallery/ui/NinePatchTexture;->getPaddings()Landroid/graphics/Rect;

    move-result-object v6

    .line 65
    .local v6, p:Landroid/graphics/Rect;
    iget v0, v6, Landroid/graphics/Rect;->left:I

    sub-int v2, p2, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p4

    iget v1, v6, Landroid/graphics/Rect;->right:I

    add-int v4, v0, v1

    iget v0, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p5

    iget v1, v6, Landroid/graphics/Rect;->bottom:I

    add-int v5, v0, v1

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/gallery/ui/NinePatchTexture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 67
    return-void
.end method

.method public static drawWithRotation(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIIII)V
    .locals 6
    .parameter "canvas"
    .parameter "content"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"

    .prologue
    const/4 v2, 0x0

    .line 50
    if-eqz p6, :cond_0

    .line 51
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/miui/gallery/ui/GLCanvas;->save(I)I

    .line 52
    int-to-float v0, p6

    const/high16 v1, 0x3f80

    invoke-interface {p0, v0, v2, v2, v1}, Lcom/miui/gallery/ui/GLCanvas;->rotate(FFFF)V

    :cond_0
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 55
    invoke-interface/range {v0 .. v5}, Lcom/miui/gallery/ui/Texture;->draw(Lcom/miui/gallery/ui/GLCanvas;IIII)V

    .line 57
    if-eqz p6, :cond_1

    .line 58
    invoke-interface {p0}, Lcom/miui/gallery/ui/GLCanvas;->restore()V

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IIZIZZ)V
.end method

.method public draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IZ)V
    .locals 13
    .parameter "canvas"
    .parameter "content"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "path"
    .parameter "mediaType"
    .parameter "isPanorama"

    .prologue
    .line 43
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v12}, Lcom/miui/gallery/ui/SelectionDrawer;->draw(Lcom/miui/gallery/ui/GLCanvas;Lcom/miui/gallery/ui/Texture;IIILcom/miui/gallery/data/Path;IIZIZZ)V

    .line 46
    return-void
.end method

.method public abstract drawFocus(Lcom/miui/gallery/ui/GLCanvas;II)V
.end method

.method public abstract prepareDrawing()V
.end method
