.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;,
        Lcom/android/mms/ui/MessageItem$FailedItem;
    }
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private final mBoxId:I

.field private mCachedFormattedMessage:Ljava/lang/CharSequence;

.field private mContact:Ljava/lang/String;

.field private mContactMessage:Lcom/android/mms/model/ContactMessage;

.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mDateSent:J

.field private mDeliveRepotrMode:I

.field private mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field private mErrorCode:I

.field private mErrorType:I

.field private mExpireTimestamp:Ljava/lang/String;

.field private mFailedMsgInGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageItem$FailedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mIsGroup:Z

.field private mIsReadOnly:Z

.field private mIsReferenceGroup:Z

.field private mLastSendingState:Z

.field private mLayoutStyle:I

.field private mLocked:Z

.field private mMessageSize:I

.field private mMessageType:I

.field private mMessageUri:Landroid/net/Uri;

.field private final mMsgId:J

.field private mQueueMsgInGroup:I

.field private mReadReport:Z

.field private mResendMsgInGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingAddressInGroup:Ljava/lang/String;

.field private mSendingBodyInGroup:Ljava/lang/String;

.field private mSentMsgInGroup:I

.field private mShowTimeStamp:Z

.field private mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSubject:Ljava/lang/String;

.field private mTextContentType:Ljava/lang/String;

.field private final mThreadId:J

.field private mTimedValue:J

.field private mTimestamp:Ljava/lang/String;

.field private mTotalMsgInGroup:I

.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;Z)V
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "highlight"
    .parameter "isBookmark"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 348
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZJ)V

    .line 349
    if-eqz p6, :cond_0

    .line 350
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    .line 352
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZJ)V
    .locals 27
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "highlight"
    .parameter "isGroup"
    .parameter "isReadOnly"
    .parameter "conversationThreadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    .line 336
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveRepotrMode:I

    .line 341
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mShowTimeStamp:Z

    .line 356
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 357
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 358
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    .line 359
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 360
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 361
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    .line 362
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsReadOnly:Z

    .line 364
    const-wide/16 v4, 0x0

    cmp-long v4, p8, v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    cmp-long v4, v4, p8

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mIsReferenceGroup:Z

    .line 365
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mTotalMsgInGroup:I

    .line 366
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mFailedMsgInGroup:Ljava/util/ArrayList;

    .line 367
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    .line 368
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mQueueMsgInGroup:I

    .line 369
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mSentMsgInGroup:I

    .line 370
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    .line 371
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    .line 373
    const-string v4, "sms"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 374
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 375
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 377
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 378
    .local v17, status:J
    const-wide/16 v4, -0x1

    cmp-long v4, v17, v4

    if-nez v4, :cond_1

    .line 380
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 396
    :goto_1
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 398
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 400
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 401
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 402
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDateSent:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mDateSent:J

    .line 403
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 404
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 405
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTimed:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimedValue:J

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/ContactParser;->parseFromMessage(Ljava/lang/String;)Lcom/android/mms/model/ContactMessage;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mContactMessage:Lcom/android/mms/model/ContactMessage;

    .line 414
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-eqz v4, :cond_c

    .line 416
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCount:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mTotalMsgInGroup:I

    .line 418
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "address"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "thread_id=? AND date=? AND type=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x2

    const/16 v25, 0x5

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 425
    .local v11, countC:Landroid/database/Cursor;
    if-eqz v11, :cond_7

    .line 426
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 427
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 428
    .local v10, address:Ljava/lang/String;
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    .line 429
    .local v23, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mFailedMsgInGroup:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/mms/ui/MessageItem$FailedItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v5, v0, v10, v1}, Lcom/android/mms/ui/MessageItem$FailedItem;-><init>(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 364
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #countC:Landroid/database/Cursor;
    .end local v17           #status:J
    .end local v23           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 381
    .restart local v17       #status:J
    :cond_1
    const-wide/16 v4, 0x40

    cmp-long v4, v17, v4

    if-ltz v4, :cond_2

    .line 383
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 384
    :cond_2
    const-wide/16 v4, 0x20

    cmp-long v4, v17, v4

    if-ltz v4, :cond_4

    .line 385
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 386
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->SENT:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 389
    :cond_3
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 393
    :cond_4
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 403
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 432
    .restart local v11       #countC:Landroid/database/Cursor;
    :cond_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 433
    const/4 v11, 0x0

    .line 436
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "address"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "body"

    aput-object v8, v6, v7

    const-string v7, "thread_id=? AND date=? AND type=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x2

    const/16 v25, 0x6

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 444
    if-eqz v11, :cond_9

    .line 445
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mQueueMsgInGroup:I

    .line 446
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 447
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    .line 448
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    .line 450
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 451
    const/4 v11, 0x0

    .line 453
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    .line 456
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    if-nez v4, :cond_b

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    .line 460
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "address"

    aput-object v8, v6, v7

    const-string v7, "thread_id=? AND date=? AND (type=? OR type=? OR type=?)"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x2

    const/16 v25, 0x4

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x3

    const/16 v25, 0x5

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x4

    const/16 v25, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 470
    if-eqz v11, :cond_c

    .line 471
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mSentMsgInGroup:I

    .line 472
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 478
    .end local v11           #countC:Landroid/database/Cursor;
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 479
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-eqz v4, :cond_d

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 611
    .end local v17           #status:J
    :goto_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 612
    return-void

    .line 481
    .restart local v17       #status:J
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mIsReadOnly:Z

    if-eqz v4, :cond_e

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_4

    .line 484
    :cond_e
    const v4, 0x7f0a001a

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_4

    .line 488
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_4

    .line 490
    .end local v17           #status:J
    :cond_10
    const-string v4, "mms"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 491
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 492
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 493
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 494
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDateSent:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mDateSent:J

    .line 495
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 496
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTimed:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mTimedValue:J

    .line 497
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 498
    .local v20, subject:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 499
    new-instance v24, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 502
    .local v24, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 504
    .end local v24           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 506
    const-wide/16 v21, 0x0

    .line 508
    .local v21, timestamp:J
    new-instance v4, Lcom/android/mms/ui/SimplePduDoc;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->load(Landroid/net/Uri;)Z

    .line 511
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsContentLocation:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsContentLocation:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->setContentLocation([B)V

    .line 515
    :cond_12
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageSize:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 516
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageSize:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->setMessageSize(Ljava/lang/Integer;)V

    .line 518
    :cond_13
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_15

    .line 519
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v12, v4, v6

    .line 520
    .local v12, date:J
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDateMsPart:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_14

    .line 521
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDateMsPart:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-long/2addr v12, v4

    .line 523
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->setDate(Ljava/lang/Long;)V

    .line 525
    .end local v12           #date:J
    :cond_15
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsExpiry:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_16

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsExpiry:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->setExpiry(Ljava/lang/Integer;)V

    .line 529
    :cond_16
    const/16 v4, 0x82

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v4, v5, :cond_18

    .line 530
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 533
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v5}, Lcom/android/mms/ui/SimplePduDoc;->getContentLocation()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 534
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getMessageSize()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 535
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getExpiry()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v21, v4, v6

    .line 536
    move-object/from16 v0, p4

    iget v4, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDateMsPart:I

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 538
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageItem;->getExpireTimestampStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mExpireTimestamp:Ljava/lang/String;

    goto/16 :goto_4

    .line 504
    .end local v21           #timestamp:J
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 540
    .restart local v21       #timestamp:J
    :cond_18
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v5, 0x84

    if-ne v4, v5, :cond_1c

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 549
    :goto_6
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 550
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-nez v4, :cond_1a

    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/mms/ui/MessageUtils;->getMmsReportStatus(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/Map;

    move-result-object v19

    .line 559
    .local v19, statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    .line 560
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 561
    .local v16, recipient:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;

    .line 563
    .local v17, status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->readStatus:I

    if-eqz v4, :cond_19

    .line 564
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->readStatus:I

    packed-switch v4, :pswitch_data_0

    .line 574
    :cond_19
    :goto_7
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->deliveryStatus:I

    sparse-switch v4, :sswitch_data_0

    .line 586
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 594
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #recipient:Ljava/lang/String;
    .end local v17           #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    .end local v19           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    :cond_1a
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->getPageTextPart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v15

    .line 595
    .local v15, part:Lcom/android/mms/ui/SimplePduPart;
    if-eqz v15, :cond_1b

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->getPageText(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 597
    invoke-virtual {v15}, Lcom/android/mms/ui/SimplePduPart;->getContentType()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 604
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getMessageSize()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 605
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mDate:J

    goto/16 :goto_4

    .line 545
    .end local v15           #part:Lcom/android/mms/ui/SimplePduPart;
    :cond_1c
    const v4, 0x7f0a001a

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    goto/16 :goto_6

    .line 566
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #recipient:Ljava/lang/String;
    .restart local v17       #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    .restart local v19       #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    :pswitch_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto :goto_7

    .line 569
    :pswitch_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto :goto_7

    .line 576
    :sswitch_0
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto :goto_8

    .line 580
    :sswitch_1
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto :goto_8

    .line 583
    :sswitch_2
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->REJECTED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto :goto_8

    .line 608
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #recipient:Ljava/lang/String;
    .end local v17           #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    .end local v19           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    .end local v20           #subject:Ljava/lang/String;
    .end local v21           #timestamp:J
    :cond_1d
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type of the message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 564
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 574
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method private getExpireTimestampStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "timestamp"

    .prologue
    .line 628
    const v0, 0x7f0a001f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getRelativeTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2
    .parameter "from"
    .parameter "messageUri"

    .prologue
    .line 615
    if-eqz p1, :cond_0

    .line 616
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 624
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 625
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addToResend(Landroid/net/Uri;)V
    .locals 4
    .parameter "messageUri"

    .prologue
    .line 195
    monitor-enter p0

    const/4 v0, 0x0

    .line 196
    .local v0, found:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 197
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 202
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    if-nez v0, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_2
    monitor-exit p0

    return-void

    .line 195
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public failedMsgInGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageItem$FailedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mFailedMsgInGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    return v0
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 706
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 707
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 708
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method public getContactMessage()Lcom/android/mms/model/ContactMessage;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContactMessage:Lcom/android/mms/model/ContactMessage;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    return-wide v0
.end method

.method public getDeliverReportMode()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveRepotrMode:I

    return v0
.end method

.method public getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    return-object v0
.end method

.method public getExpireTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mExpireTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlight()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getLayoutStyle()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    return v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getSendingBodyInGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    return-object v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStyledTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mShowTimeStamp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    return-wide v0
.end method

.method public getTimedValue()J
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mTimedValue:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public initLayoutStyle(Ljava/lang/String;ZI)V
    .locals 4
    .parameter "style"
    .parameter "showTimeStamp"
    .parameter "deliverReportMode"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 715
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageItem;->mShowTimeStamp:Z

    .line 716
    iput p3, p0, Lcom/android/mms/ui/MessageItem;->mDeliveRepotrMode:I

    .line 717
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem$Style;->valueOf(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$Style;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 718
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iput v2, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    .line 744
    :goto_0
    return-void

    .line 722
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 725
    :cond_1
    iput v2, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 728
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 731
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 732
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 734
    iput v3, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 735
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 736
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 738
    :cond_5
    iput v3, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 741
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0
.end method

.method isBookmarkLayoutStyle()Z
    .locals 2

    .prologue
    .line 759
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBubbleLayoutStyle()Z
    .locals 2

    .prologue
    .line 753
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 641
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 682
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 685
    .local v0, isFailedMms:Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-eqz v4, :cond_4

    .line 686
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mFailedMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    .line 690
    .local v1, isFailedSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isFailedMms:Z
    .end local v1           #isFailedSms:Z
    :cond_2
    move v0, v3

    .line 682
    goto :goto_0

    .restart local v0       #isFailedMms:Z
    :cond_3
    move v1, v3

    .line 686
    goto :goto_1

    .line 688
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    move v1, v2

    .restart local v1       #isFailedSms:Z
    :goto_2
    goto :goto_1

    .end local v1           #isFailedSms:Z
    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    return v0
.end method

.method isListLayoutStyle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 747
    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    return v0
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 633
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutMessage()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v6, :cond_4

    :cond_0
    move v0, v2

    .line 656
    .local v0, isOutMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v4, v7, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v6, :cond_5

    :cond_1
    move v1, v2

    .line 660
    .local v1, isOutSms:Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/mms/ui/MessageItem;->mIsReadOnly:Z

    if-eqz v4, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    .end local v0           #isOutMms:Z
    .end local v1           #isOutSms:Z
    :cond_4
    move v0, v3

    .line 654
    goto :goto_0

    .restart local v0       #isOutMms:Z
    :cond_5
    move v1, v3

    .line 656
    goto :goto_1
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 645
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v6, :cond_3

    move v0, v2

    .line 646
    .local v0, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v4, v6, :cond_0

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    :cond_0
    move v1, v2

    .line 650
    .local v1, isOutgoingSms:Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    return v3

    .end local v0           #isOutgoingMms:Z
    .end local v1           #isOutgoingSms:Z
    :cond_3
    move v0, v3

    .line 645
    goto :goto_0

    .restart local v0       #isOutgoingMms:Z
    :cond_4
    move v1, v3

    .line 646
    goto :goto_1
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsReadOnly:Z

    return v0
.end method

.method public isReadReport()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    return v0
.end method

.method public isReferenceGroup()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsReferenceGroup:Z

    return v0
.end method

.method public isSending()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 669
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-eqz v2, :cond_2

    .line 670
    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mQueueMsgInGroup:I

    if-lez v2, :cond_1

    .line 672
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 670
    goto :goto_0

    .line 672
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 637
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTimed()Z
    .locals 4

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mTimedValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeFromResend(Landroid/net/Uri;)V
    .locals 4
    .parameter "messageUri"

    .prologue
    .line 208
    monitor-enter p0

    const/4 v0, -0x1

    .line 209
    .local v0, foundIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 211
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    move v0, v1

    .line 216
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 217
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_1
    monitor-exit p0

    return-void

    .line 209
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v2           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public resendMsgInGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public sentMsgInGroup()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mSentMsgInGroup:I

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 702
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalMsgInGroup()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mTotalMsgInGroup:I

    return v0
.end method
