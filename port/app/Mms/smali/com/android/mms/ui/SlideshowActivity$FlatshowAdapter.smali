.class Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;
.super Landroid/widget/BaseAdapter;
.source "SlideshowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatshowAdapter"
.end annotation


# instance fields
.field private mDoc:Lcom/android/mms/ui/SimplePduDoc;

.field private mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter "uri"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 182
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    .line 190
    new-instance v4, Lcom/android/mms/ui/SimplePduDoc;

    invoke-direct {v4, p1}, Lcom/android/mms/ui/SimplePduDoc;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mDoc:Lcom/android/mms/ui/SimplePduDoc;

    .line 191
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4, p2}, Lcom/android/mms/ui/SimplePduDoc;->load(Landroid/net/Uri;)Z

    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getPageSize()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/SimplePduDoc;->getPage(I)Lcom/android/mms/ui/SimplePduPage;

    move-result-object v2

    .line 194
    .local v2, page:Lcom/android/mms/ui/SimplePduPage;
    if-eqz v2, :cond_0

    .line 195
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/ui/SimplePduPage;->getPartSize()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 196
    invoke-virtual {v2, v1}, Lcom/android/mms/ui/SimplePduPage;->getPart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v3

    .line 197
    .local v3, part:Lcom/android/mms/ui/SimplePduPart;
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v1           #j:I
    .end local v3           #part:Lcom/android/mms/ui/SimplePduPart;
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    .end local v2           #page:Lcom/android/mms/ui/SimplePduPage;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 237
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, e:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 208
    const/4 v2, 0x0

    .line 214
    :goto_0
    return v2

    .line 209
    :cond_0
    instance-of v2, v0, Lcom/android/mms/ui/SimplePduPart;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 210
    check-cast v1, Lcom/android/mms/ui/SimplePduPart;

    .line 211
    .local v1, part:Lcom/android/mms/ui/SimplePduPart;
    invoke-virtual {v1}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v2

    if-nez v2, :cond_1

    .line 212
    const/4 v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    .line 217
    .end local v1           #part:Lcom/android/mms/ui/SimplePduPart;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot recognize flatshow view type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->mElements:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 243
    .local v5, e:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 245
    .local v8, inflater:Landroid/view/LayoutInflater;
    instance-of v0, v5, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 246
    check-cast v5, Ljava/lang/Integer;

    .end local v5           #e:Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 248
    .local v11, pageNo:I
    if-eqz p2, :cond_0

    .line 249
    move-object/from16 v3, p2

    .line 253
    .local v3, div:Landroid/view/View;
    :goto_0
    const v17, 0x7f100047

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 254
    .local v12, pageNoView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0a018d

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/ui/SlideshowActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    .end local v3           #div:Landroid/view/View;
    .end local v11           #pageNo:I
    .end local v12           #pageNoView:Landroid/widget/TextView;
    :goto_1
    return-object v3

    .line 251
    .restart local v11       #pageNo:I
    :cond_0
    const v17, 0x7f040015

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v8, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .restart local v3       #div:Landroid/view/View;
    goto :goto_0

    .line 259
    .end local v3           #div:Landroid/view/View;
    .end local v11           #pageNo:I
    .restart local v5       #e:Ljava/lang/Object;
    :cond_1
    instance-of v0, v5, Lcom/android/mms/ui/SimplePduPart;

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b001c

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v10, v0

    .local v10, padding:I
    move-object v13, v5

    .line 261
    check-cast v13, Lcom/android/mms/ui/SimplePduPart;

    .line 262
    .local v13, part:Lcom/android/mms/ui/SimplePduPart;
    const/4 v15, 0x0

    .line 263
    .local v15, view:Landroid/view/View;
    const/4 v4, 0x0

    .line 264
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 265
    .local v7, imageView:Landroid/widget/ImageView;
    invoke-virtual {v13}, Lcom/android/mms/ui/SimplePduPart;->getAttachmentType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 328
    :goto_2
    if-eqz v7, :cond_3

    .line 329
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-static {v7, v4, v0}, Lcom/android/mms/ui/MessageUtils;->setAttachmentImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 330
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 331
    new-instance v17, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter$1;-><init>(Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;Lcom/android/mms/ui/SimplePduPart;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    if-eqz v4, :cond_2

    .line 344
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 345
    .local v6, height:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 346
    .local v16, width:I
    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_b

    .line 347
    mul-int/lit8 v17, v16, 0x3

    div-int/lit8 v16, v17, 0x2

    .line 348
    mul-int/lit8 v17, v6, 0x3

    div-int/lit8 v6, v17, 0x2

    .line 349
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    .end local v6           #height:I
    .end local v16           #width:I
    :cond_2
    :goto_3
    if-nez p2, :cond_d

    .line 361
    new-instance v15, Landroid/widget/LinearLayout;

    .end local v15           #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .restart local v15       #view:Landroid/view/View;
    move-object/from16 v17, v15

    .line 362
    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x11

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setGravity(I)V

    move-object/from16 v17, v15

    .line 363
    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    :cond_3
    :goto_4
    if-eqz v15, :cond_4

    .line 369
    invoke-virtual {v15, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    move-object v3, v15

    .line 371
    goto/16 :goto_1

    .line 268
    :pswitch_0
    if-eqz p2, :cond_5

    move-object/from16 v14, p2

    .line 269
    check-cast v14, Landroid/widget/TextView;

    .line 273
    .local v14, textView:Landroid/widget/TextView;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0e0020

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f0b

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v9

    .line 276
    .local v9, multiple:F
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0, v9}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 277
    invoke-virtual {v13}, Lcom/android/mms/ui/SimplePduPart;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 279
    move-object v15, v14

    .line 280
    goto/16 :goto_2

    .line 271
    .end local v9           #multiple:F
    .end local v14           #textView:Landroid/widget/TextView;
    :cond_5
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local v14       #textView:Landroid/widget/TextView;
    goto :goto_5

    .line 283
    .end local v14           #textView:Landroid/widget/TextView;
    :pswitch_1
    if-eqz p2, :cond_6

    move-object/from16 v17, p2

    .line 284
    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #imageView:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 293
    .restart local v7       #imageView:Landroid/widget/ImageView;
    :goto_6
    const/16 v17, 0x12c

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/android/mms/ui/SimplePduPart;->getImageNoCache(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 294
    goto/16 :goto_2

    .line 286
    :cond_6
    new-instance v7, Landroid/widget/ImageView;

    .end local v7           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v7       #imageView:Landroid/widget/ImageView;
    goto :goto_6

    .line 296
    :pswitch_2
    if-eqz p2, :cond_7

    move-object/from16 v17, p2

    .line 297
    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #imageView:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 301
    .restart local v7       #imageView:Landroid/widget/ImageView;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f02004d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 302
    goto/16 :goto_2

    .line 299
    :cond_7
    new-instance v7, Landroid/widget/ImageView;

    .end local v7           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v7       #imageView:Landroid/widget/ImageView;
    goto :goto_7

    .line 304
    :pswitch_3
    if-eqz p2, :cond_8

    move-object/from16 v17, p2

    .line 305
    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #imageView:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 309
    .restart local v7       #imageView:Landroid/widget/ImageView;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020053

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 310
    goto/16 :goto_2

    .line 307
    :cond_8
    new-instance v7, Landroid/widget/ImageView;

    .end local v7           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v7       #imageView:Landroid/widget/ImageView;
    goto :goto_8

    .line 312
    :pswitch_4
    if-eqz p2, :cond_9

    move-object/from16 v17, p2

    .line 313
    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #imageView:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 317
    .restart local v7       #imageView:Landroid/widget/ImageView;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020052

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 318
    goto/16 :goto_2

    .line 315
    :cond_9
    new-instance v7, Landroid/widget/ImageView;

    .end local v7           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v7       #imageView:Landroid/widget/ImageView;
    goto :goto_9

    .line 320
    :pswitch_5
    if-eqz p2, :cond_a

    move-object/from16 v17, p2

    .line 321
    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #imageView:Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 325
    .restart local v7       #imageView:Landroid/widget/ImageView;
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/SlideshowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020050

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto/16 :goto_2

    .line 323
    :cond_a
    new-instance v7, Landroid/widget/ImageView;

    .end local v7           #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/SlideshowActivity$FlatshowAdapter;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .restart local v7       #imageView:Landroid/widget/ImageView;
    goto :goto_a

    .line 350
    .restart local v6       #height:I
    .restart local v16       #width:I
    :cond_b
    const/16 v17, 0x12c

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    .line 351
    mul-int/lit16 v0, v6, 0x12c

    move/from16 v17, v0

    div-int v6, v17, v16

    .line 352
    const/16 v16, 0x12c

    .line 353
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 355
    :cond_c
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 365
    .end local v6           #height:I
    .end local v16           #width:I
    :cond_d
    move-object/from16 v15, p2

    goto/16 :goto_4

    .line 373
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #imageView:Landroid/widget/ImageView;
    .end local v10           #padding:I
    .end local v13           #part:Lcom/android/mms/ui/SimplePduPart;
    .end local v15           #view:Landroid/view/View;
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x3

    return v0
.end method
