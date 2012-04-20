.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "target"
    .parameter "media"

    .prologue
    const/4 v1, 0x0

    .line 407
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 408
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 409
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 410
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 411
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .parameter "document"

    .prologue
    .line 146
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 148
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x4100

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 149
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 150
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "target"
    .parameter "slide"

    .prologue
    const/4 v1, 0x0

    .line 417
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 418
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 419
    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2
    .parameter "tag"
    .parameter "document"
    .parameter "src"

    .prologue
    .line 155
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 157
    .local v0, mediaElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 158
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 31
    .parameter "slideshow"

    .prologue
    .line 261
    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 264
    .local v7, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v28, "smil"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/SMILElement;

    .line 265
    .local v22, smilElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 268
    const-string v28, "head"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILElement;

    .line 269
    .local v9, headElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 272
    const-string v28, "layout"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 274
    .local v13, layoutElement:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v9, v13}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 277
    const-string v28, "root-layout"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 279
    .local v19, rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v14

    .line 280
    .local v14, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v28

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 281
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v28

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 282
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, bgColor:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_0

    .line 284
    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 286
    :cond_0
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 289
    invoke-virtual {v14}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v18

    .line 290
    .local v18, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v24, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/RegionModel;

    .line 292
    .local v17, r:Lcom/android/mms/model/RegionModel;
    const-string v28, "region"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    check-cast v23, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 293
    .local v23, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 295
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 296
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 297
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v28

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 298
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 303
    .end local v17           #r:Lcom/android/mms/model/RegionModel;
    .end local v23           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string v28, "body"

    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 304
    .local v6, bodyElement:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/mms/model/SlideModel;

    .line 307
    .local v20, slide:Lcom/android/mms/model/SlideModel;
    const/16 v27, 0x0

    .line 308
    .local v27, txtRegionPresentInLayout:Z
    const/4 v12, 0x0

    .line 311
    .local v12, imgRegionPresentInLayout:Z
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v16

    .line 312
    .local v16, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x447a

    div-float v28, v28, v29

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    move-object/from16 v28, v16

    .line 314
    check-cast v28, Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 317
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/model/MediaModel;

    .line 318
    .local v15, media:Lcom/android/mms/model/MediaModel;
    const/16 v21, 0x0

    .line 319
    .local v21, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v25

    .line 320
    .local v25, src:Ljava/lang/String;
    instance-of v0, v15, Lcom/android/mms/model/TextModel;

    move/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v26, v15

    .line 321
    check-cast v26, Lcom/android/mms/model/TextModel;

    .line 322
    .local v26, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_3

    .line 328
    const-string v28, "text"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 329
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Text"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    move/from16 v3, v27

    invoke-static {v0, v1, v13, v2, v3}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v27

    .line 356
    .end local v26           #text:Lcom/android/mms/model/TextModel;
    :goto_2
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v4

    .line 357
    .local v4, begin:I
    if-eqz v4, :cond_4

    .line 358
    const-string v28, "begin"

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_4
    invoke-virtual {v15}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v8

    .line 361
    .local v8, duration:I
    if-eqz v8, :cond_5

    .line 362
    int-to-float v0, v8

    move/from16 v28, v0

    const/high16 v29, 0x447a

    div-float v28, v28, v29

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 364
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 366
    check-cast v21, Lorg/w3c/dom/events/EventTarget;

    .end local v21           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    goto :goto_1

    .line 334
    .end local v4           #begin:I
    .end local v8           #duration:I
    .restart local v21       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_6
    instance-of v0, v15, Lcom/android/mms/model/ImageModel;

    move/from16 v28, v0

    if-eqz v28, :cond_7

    .line 335
    const-string v28, "img"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 336
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Image"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_2

    .line 341
    :cond_7
    instance-of v0, v15, Lcom/android/mms/model/VideoModel;

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 342
    const-string v28, "video"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    move-object/from16 v28, v21

    .line 343
    check-cast v28, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    const-string v29, "Image"

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-static {v0, v1, v13, v2, v12}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v12

    goto :goto_2

    .line 348
    :cond_8
    instance-of v0, v15, Lcom/android/mms/model/AudioModel;

    move/from16 v28, v0

    if-eqz v28, :cond_9

    .line 349
    const-string v28, "audio"

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v21

    goto/16 :goto_2

    .line 351
    :cond_9
    const-string v28, "Mms/smil"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupport media: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 376
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #imgRegionPresentInLayout:Z
    .end local v15           #media:Lcom/android/mms/model/MediaModel;
    .end local v16           #par:Lorg/w3c/dom/smil/SMILParElement;
    .end local v20           #slide:Lcom/android/mms/model/SlideModel;
    .end local v21           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .end local v25           #src:Ljava/lang/String;
    .end local v27           #txtRegionPresentInLayout:Z
    :cond_a
    return-object v7
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 23
    .parameter "pb"

    .prologue
    .line 174
    new-instance v6, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v6}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 178
    .local v6, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v21, "smil"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/smil/SMILElement;

    .line 179
    .local v18, smil:Lorg/w3c/dom/smil/SMILElement;
    const-string v21, "xmlns"

    const-string v22, "http://www.w3.org/2001/SMIL20/Language"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 183
    const-string v21, "head"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILElement;

    .line 184
    .local v11, head:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 186
    const-string v21, "layout"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 187
    .local v14, layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v11, v14}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 190
    const-string v21, "body"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILElement;

    .line 191
    .local v4, body:Lorg/w3c/dom/smil/SMILElement;
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 192
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    .line 195
    .local v15, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v17

    .line 196
    .local v17, partsNum:I
    if-nez v17, :cond_1

    .line 253
    :cond_0
    return-object v6

    .line 200
    :cond_1
    const/4 v10, 0x0

    .line 201
    .local v10, hasText:Z
    const/4 v9, 0x0

    .line 202
    .local v9, hasMedia:Z
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v12, v0, :cond_0

    .line 204
    if-eqz v15, :cond_2

    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    .line 205
    :cond_2
    invoke-static {v6}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v15

    .line 206
    const/4 v10, 0x0

    .line 207
    const/4 v9, 0x0

    .line 210
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 211
    .local v16, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 212
    .local v5, contentType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 215
    :try_start_0
    new-instance v7, Lcom/android/mms/drm/DrmWrapper;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v7, v5, v0, v1}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    .line 217
    .local v7, dw:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v7}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 225
    .end local v7           #dw:Lcom/android/mms/drm/DrmWrapper;
    :cond_4
    :goto_1
    const-string v21, "text/plain"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "application/vnd.wap.xhtml+xml"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    const-string v21, "text/html"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 228
    :cond_5
    const-string v21, "text"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v19

    .line 230
    .local v19, textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 231
    const/4 v10, 0x1

    .line 202
    .end local v19           #textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 218
    :catch_0
    move-exception v8

    .line 219
    .local v8, e:Landroid/drm/mobile1/DrmException;
    const-string v21, "Mms/smil"

    invoke-virtual {v8}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 220
    .end local v8           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v8

    .line 221
    .local v8, e:Ljava/io/IOException;
    const-string v21, "Mms/smil"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 232
    .end local v8           #e:Ljava/io/IOException;
    :cond_6
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 233
    const-string v21, "img"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v13

    .line 235
    .local v13, imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v15, v13}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 236
    const/4 v9, 0x1

    .line 237
    goto :goto_2

    .end local v13           #imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 238
    const-string v21, "video"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v20

    .line 240
    .local v20, videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 241
    const/4 v9, 0x1

    .line 242
    goto :goto_2

    .end local v20           #videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_8
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 243
    const-string v21, "audio"

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v6, v1}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v3

    .line 245
    .local v3, audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v15, v3}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 246
    const/4 v9, 0x1

    .line 247
    goto :goto_2

    .line 249
    .end local v3           #audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_9
    const-string v21, "Mms/smil"

    const-string v22, "unsupport media type"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 162
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .parameter
    .parameter "rId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 382
    .local v1, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    .end local v1           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .parameter "body"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 101
    .local v2, partNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 102
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 103
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v1

    .line 101
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "model"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2
    .parameter "pb"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 75
    .local v1, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 78
    .local v0, document:Lorg/w3c/dom/smil/SMILDocument;
    if-eqz v1, :cond_0

    .line 79
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 82
    :cond_0
    if-nez v0, :cond_1

    .line 84
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 87
    :cond_1
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 6
    .parameter "smilPart"

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 125
    .local v1, data:[B
    if-eqz v1, :cond_0

    .line 131
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 132
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 133
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 142
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v2           #document:Lorg/w3c/dom/smil/SMILDocument;
    :goto_0
    return-object v4

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, e:Ljava/io/IOException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 137
    :catch_1
    move-exception v3

    .line 138
    .local v3, e:Lorg/xml/sax/SAXException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 139
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    .line 140
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/smil"

    const-string v5, "Failed to parse SMIL document."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "srme"
    .parameter
    .parameter "smilLayout"
    .parameter "regionId"
    .parameter "regionPresentInLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 395
    .local v0, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 396
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 397
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 398
    const/4 v1, 0x1

    .line 400
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "in"

    .prologue
    .line 114
    return-object p0
.end method
