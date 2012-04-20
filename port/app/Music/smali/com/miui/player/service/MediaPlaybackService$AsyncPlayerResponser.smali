.class Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/service/AsyncMusicPlayer$AsyncPrepareResponser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/service/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncPlayerResponser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;,
        Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;
    }
.end annotation


# instance fields
.field private final mBlockChangedNotifier:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;

.field private final mBufferedChangedNotifier:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;

.field private final mCorrectId3AfterPlay:Lcom/miui/player/service/MediaPlaybackService$CorrectId3AfterPlay;

.field mCurrentBufferingPath:Ljava/lang/String;

.field mIsBuffering:Z

.field mPlayAfterBuffer:Z

.field final synthetic this$0:Lcom/miui/player/service/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/service/MediaPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1400
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1402
    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 1403
    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 1552
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;-><init>(Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mBufferedChangedNotifier:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;

    .line 1553
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;

    invoke-direct {v0, p0}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;-><init>(Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;)V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mBlockChangedNotifier:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;

    .line 1554
    new-instance v0, Lcom/miui/player/service/MediaPlaybackService$CorrectId3AfterPlay;

    invoke-direct {v0}, Lcom/miui/player/service/MediaPlaybackService$CorrectId3AfterPlay;-><init>()V

    iput-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mCorrectId3AfterPlay:Lcom/miui/player/service/MediaPlaybackService$CorrectId3AfterPlay;

    return-void
.end method

.method private getFailedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "path"
    .parameter "trackName"
    .parameter "exp"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1420
    const/4 v1, 0x0

    .line 1421
    .local v1, ret:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 1422
    .local v0, hasName:Z
    :goto_0
    instance-of v4, p3, Lcom/miui/player/service/OnlinePlayDeniedException;

    if-eqz v4, :cond_2

    .line 1423
    if-eqz v0, :cond_1

    .line 1424
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const v5, 0x7f0800a3

    invoke-virtual {v4, v5}, Lcom/miui/player/service/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1436
    :goto_1
    return-object v1

    .end local v0           #hasName:Z
    :cond_0
    move v0, v3

    .line 1421
    goto :goto_0

    .line 1426
    .restart local v0       #hasName:Z
    :cond_1
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const v3, 0x7f0800a5

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1429
    :cond_2
    if-eqz v0, :cond_3

    .line 1430
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const v5, 0x7f0800a2

    invoke-virtual {v4, v5}, Lcom/miui/player/service/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1432
    :cond_3
    iget-object v2, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const v3, 0x7f0800a4

    invoke-virtual {v2, v3}, Lcom/miui/player/service/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public onPrepareFailed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 8
    .parameter "path"
    .parameter "extra"
    .parameter "exception"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1441
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v4, v6, v6}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1442
    instance-of v4, p3, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_0

    .line 1478
    .end local p2
    :goto_0
    return-void

    .line 1446
    .restart local p2
    :cond_0
    const/4 v3, 0x0

    .local v3, trackName:Ljava/lang/String;
    move-object v4, p2

    .line 1447
    check-cast v4, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;

    iget-boolean v4, v4, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->isFirst:Z

    if-nez v4, :cond_1

    .line 1448
    check-cast p2, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;

    .end local p2
    iget-object v3, p2, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->trackName:Ljava/lang/String;

    .line 1449
    invoke-direct {p0, p1, v3, p3}, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->getFailedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1450
    .local v2, playbackFailed:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1453
    .end local v2           #playbackFailed:Ljava/lang/CharSequence;
    :cond_1
    iget-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 1454
    .local v0, isBuffering:Z
    iget-boolean v1, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 1455
    .local v1, playAfterBuffer:Z
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1456
    iput-boolean v6, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 1459
    :cond_2
    instance-of v4, p3, Lcom/miui/player/service/OnlinePlayDeniedException;

    if-nez v4, :cond_3

    .line 1460
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v5, v4, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1462
    :cond_3
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v4, v7, v7}, Lcom/miui/player/service/MediaPlaybackService;->stop(ZZ)V

    .line 1463
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v4, v4, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v4, v4, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v5, v5, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v4, v4, Lcom/miui/player/service/MediaPlaybackService;->mPlayListLen:I

    if-le v4, v7, :cond_4

    .line 1467
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v4, v6}, Lcom/miui/player/service/MediaPlaybackService;->next(Z)V

    .line 1468
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v4}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1471
    :cond_4
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v4, v4, Lcom/miui/player/service/MediaPlaybackService;->mPlayer:Lcom/miui/player/service/AsyncMusicPlayer;

    invoke-virtual {v4}, Lcom/miui/player/service/AsyncMusicPlayer;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget v4, v4, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    if-eqz v4, :cond_5

    .line 1473
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iput v6, v4, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    .line 1474
    sget-object v4, Lcom/miui/player/service/MediaPlaybackService;->LOGTAG:Ljava/lang/String;

    const-string v5, "Failed to open file for playback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_5
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v5, "meta_changed_buffer"

    invoke-virtual {v4, v5}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onPrepareSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .parameter "path"
    .parameter "extra"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v11, 0x0

    .line 1482
    iget-boolean v3, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 1484
    .local v3, oldBufferState:Z
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1485
    iput-boolean v11, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 1487
    :cond_0
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iput v11, v8, Lcom/miui/player/service/MediaPlaybackService;->mOpenFailedCounter:I

    move-object v2, p2

    .line 1489
    check-cast v2, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;

    .line 1490
    .local v2, info:Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 1491
    .local v0, audioId:J
    iget-boolean v8, v2, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->isFirst:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "keep_quit_location"

    invoke-static {v8, v9}, Lcom/miui/player/util/PreferenceCache;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1494
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/service/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "seekpos"

    invoke-interface {v8, v9, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1495
    .local v4, seekpos:J
    iget-object v8, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    cmp-long v9, v4, v6

    if-ltz v9, :cond_2

    iget-object v9, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/miui/player/service/MediaPlaybackService;->duration()J

    move-result-wide v9

    cmp-long v9, v4, v9

    if-gez v9, :cond_2

    .end local v4           #seekpos:J
    :goto_0
    invoke-virtual {v8, v4, v5}, Lcom/miui/player/service/MediaPlaybackService;->seek(J)J

    .line 1501
    :cond_1
    if-eqz v3, :cond_3

    iget-boolean v6, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    if-eqz v6, :cond_3

    .line 1502
    iget-object v6, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/miui/player/service/MediaPlaybackService;->play()V

    .line 1506
    :goto_1
    iget-object v6, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    const-string v7, "meta_changed_buffer"

    invoke-virtual {v6, v7}, Lcom/miui/player/service/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1507
    return-void

    .restart local v4       #seekpos:J
    :cond_2
    move-wide v4, v6

    .line 1495
    goto :goto_0

    .line 1504
    .end local v4           #seekpos:J
    :cond_3
    iget-object v6, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    invoke-virtual {v6, v11, v11}, Lcom/miui/player/service/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    goto :goto_1
.end method

.method public prepareAsync(Lcom/miui/player/service/BufferedMediaPlayer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .parameter "mp"
    .parameter "path"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/miui/player/service/OnlinePlayDeniedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1513
    move-object v11, p3

    check-cast v11, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;

    .line 1514
    .local v11, prepareInfo:Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;
    new-instance v2, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-object v0, v0, Lcom/miui/player/service/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mCorrectId3AfterPlay:Lcom/miui/player/service/MediaPlaybackService$CorrectId3AfterPlay;

    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mBlockChangedNotifier:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;

    iget-object v5, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mBufferedChangedNotifier:Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;

    invoke-direct {v2, v0, v1, v4, v5}, Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;-><init>(Landroid/os/Handler;Lcom/miui/player/service/BufferedMediaPlayer$OnDownloadCompletedListener;Lcom/miui/player/service/BufferedMediaPlayer$OnBlockingChangedListener;Lcom/miui/player/service/BufferedMediaPlayer$OnBufferedPositionChangedListener;)V

    .line 1516
    .local v2, info:Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;
    const-string v0, "content://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1517
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1518
    .local v3, uri:Landroid/net/Uri;
    const-wide/16 v7, 0x0

    .line 1520
    .local v7, audioId:J
    :try_start_0
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 1523
    :goto_0
    invoke-static {v7, v8}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1524
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-wide v4, v11, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->nextAudioId:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/service/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    .line 1532
    .end local v7           #audioId:J
    :cond_0
    :goto_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/player/service/BufferedMediaPlayer;->setAudioStreamType(I)V

    .line 1533
    return-void

    .line 1525
    .restart local v7       #audioId:J
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    .line 1526
    iget-object v4, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-wide v9, v11, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->nextAudioId:J

    move-object v5, p1

    move-object v6, v2

    invoke-static/range {v4 .. v10}, Lcom/miui/player/service/MediaPlaybackService;->onlinePlay(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;JJ)V

    goto :goto_1

    .line 1529
    .end local v3           #uri:Landroid/net/Uri;
    .end local v7           #audioId:J
    :cond_2
    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1530
    .restart local v3       #uri:Landroid/net/Uri;
    :goto_2
    iget-object v1, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/service/MediaPlaybackService;

    iget-wide v4, v11, Lcom/miui/player/service/MediaPlaybackService$PrepareInfo;->nextAudioId:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/service/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/service/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    goto :goto_1

    .line 1529
    .end local v3           #uri:Landroid/net/Uri;
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    .line 1521
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v7       #audioId:J
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetBufferingPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    .line 1407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 1408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 1409
    return-void
.end method

.method public stopBuffering()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1415
    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 1416
    iput-boolean v0, p0, Lcom/miui/player/service/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 1417
    return-void
.end method
