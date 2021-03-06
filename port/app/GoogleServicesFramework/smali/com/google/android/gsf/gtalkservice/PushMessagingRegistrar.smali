.class public Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;
.super Landroid/app/Service;
.source "PushMessagingRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$6;,
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;,
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;,
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;,
        Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;
    }
.end annotation


# static fields
.field private static ERROR_PREFIX:Ljava/lang/String;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAndroidId:J

.field private mAuthToken:Ljava/lang/String;

.field private mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

.field private mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mHandler:Landroid/os/Handler;

.field mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mNetworkConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

.field private mRequestQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const-string v0, "Error="

    sput-object v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 229
    new-instance v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$1;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHandler:Landroid/os/Handler;

    .line 293
    new-instance v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    .line 327
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->networkStateChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleAuthFailed()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleAccountMissing()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleAuthTokenFetched(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private addRequestToQueue(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mRequestQueue:Ljava/util/List;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mRequestQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    monitor-exit v1

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private asyncHandleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 590
    const-string v0, "C2DMRegistrar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asyncHandleRequest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$5;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 602
    return-void
.end method

.method private fetchAuthToken()V
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    monitor-enter v1

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->mInProgress:Z

    if-eqz v0, :cond_0

    .line 391
    monitor-exit v1

    .line 409
    :goto_0
    return-void

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    const/4 v2, 0x1

    #calls: Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->setInProgress(Z)V
    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->access$500(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;Z)V

    .line 395
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    const-string v0, "C2DMRegistrar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fetchAuthToken"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 399
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$2;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getReceivePermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "appPackage"

    .prologue
    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".permission.C2D_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "c2dm_url"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 345
    const-string v0, "https://android.clients.google.com/c2dm/register2"

    .line 347
    :cond_0
    return-object v0
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    const-string v0, "AndroidC2DM/1.0"

    return-object v0
.end method

.method private handleAccountMissing()V
    .locals 3

    .prologue
    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 505
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->nextRequest()Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 506
    .local v0, request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    if-nez v0, :cond_0

    .line 515
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 517
    return-void

    .line 510
    :cond_0
    :try_start_1
    const-string v1, "C2DMRegistrar"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAuthFailed for request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 511
    :cond_1
    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    const-string v2, "ACCOUNT_MISSING"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    .end local v0           #request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method

.method private handleAuthFailed()V
    .locals 3

    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 486
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->nextRequest()Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 487
    .local v0, request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    if-nez v0, :cond_0

    .line 496
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 498
    return-void

    .line 491
    :cond_0
    :try_start_1
    const-string v1, "C2DMRegistrar"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAuthFailed for request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 492
    :cond_1
    iget-object v1, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    const-string v2, "AUTHENTICATION_FAILED"

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    .end local v0           #request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method

.method private handleAuthTokenFetched(Ljava/lang/String;)V
    .locals 2
    .parameter "authToken"

    .prologue
    .line 380
    const-string v0, "C2DMRegistrar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "handleAuthTokenFetched"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 384
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->setAuthToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handlePendingRequests()V

    .line 386
    return-void
.end method

.method private handleError(Ljava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 7
    .parameter "body"
    .parameter "response"
    .parameter "appPackage"

    .prologue
    .line 855
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->parseServerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 857
    .local v3, error:Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->parseRetryAfterSec(Lorg/apache/http/HttpResponse;)J

    move-result-wide v5

    .line 858
    .local v5, retryAfterS:J
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-lez v0, :cond_0

    .line 859
    const-string v2, "error"

    const-string v4, "Retry-After"

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 865
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-direct {p0, p3, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    .locals 7
    .parameter "request"

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 557
    :try_start_0
    const-string v2, "C2DMRegistrar"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRequest "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 559
    :cond_0
    instance-of v2, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    if-eqz v2, :cond_1

    .line 560
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->register(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;)V

    .line 586
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 562
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;

    move-object v2, v0

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->unregister(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;)V
    :try_end_0
    .catch Lorg/apache/http/auth/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v1

    .line 565
    .local v1, ex:Lorg/apache/http/auth/AuthenticationException;
    const-string v2, "C2DMRegistrar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C2DMReg] handleRequest caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->addRequestToQueue(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V

    .line 569
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->refreshAuthToken()V

    move v2, v3

    .line 571
    goto :goto_1

    .line 572
    .end local v1           #ex:Lorg/apache/http/auth/AuthenticationException;
    :catch_1
    move-exception v1

    .line 573
    .local v1, ex:Ljava/io/IOException;
    const-string v2, "C2DMRegistrar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C2DMReg] handleRequest caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 576
    const-string v2, "C2DMRegistrar"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "handleRequest: network not available"

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 578
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->addRequestToQueue(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V

    move v2, v3

    .line 580
    goto :goto_1

    .line 582
    :cond_3
    iget-object v2, p1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    const-string v3, "SERVICE_NOT_AVAILABLE"

    invoke-direct {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAuthenticationError(I)Z
    .locals 1
    .parameter "statusCode"

    .prologue
    .line 892
    const/16 v0, 0x193

    if-eq p1, v0, :cond_0

    const/16 v0, 0x191

    if-ne p1, v0, :cond_1

    .line 893
    :cond_0
    const/4 v0, 0x1

    .line 896
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkAvailable()Z
    .locals 7

    .prologue
    .line 369
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    .line 370
    .local v4, networks:[Landroid/net/NetworkInfo;
    move-object v0, v4

    .local v0, arr$:[Landroid/net/NetworkInfo;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 371
    .local v3, network:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_0

    .line 372
    const/4 v5, 0x1

    .line 376
    .end local v3           #network:Landroid/net/NetworkInfo;
    :goto_1
    return v5

    .line 370
    .restart local v3       #network:Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v3           #network:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 955
    const-string v0, "C2DMRegistrar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C2DMRegistrar."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void
.end method

.method private networkStateChanged()V
    .locals 6

    .prologue
    .line 244
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mNetworkConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v4}, Lcom/android/common/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 246
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 266
    :goto_0
    :pswitch_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 251
    .local v3, state:Landroid/net/NetworkInfo$State;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 252
    .local v1, networkType:I
    const/4 v2, 0x0

    .line 254
    .local v2, sendUpdate:Z
    sget-object v4, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$6;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 256
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->networkRecovered()V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private nextRequest()Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    .locals 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mRequestQueue:Ljava/util/List;

    monitor-enter v1

    .line 473
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mRequestQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mRequestQueue:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;

    monitor-exit v1

    .line 476
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseRetryAfterSec(Lorg/apache/http/HttpResponse;)J
    .locals 5
    .parameter "response"

    .prologue
    .line 875
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 877
    .local v0, retryAfterHeader:Lorg/apache/http/Header;
    :goto_0
    if-eqz v0, :cond_1

    .line 880
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, retryAfterVal:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 882
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 888
    .end local v1           #retryAfterVal:Ljava/lang/String;
    :goto_1
    return-wide v3

    .line 875
    .end local v0           #retryAfterHeader:Lorg/apache/http/Header;
    :cond_0
    const-string v3, "Retry-After"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    goto :goto_0

    .line 884
    .restart local v0       #retryAfterHeader:Lorg/apache/http/Header;
    :catch_0
    move-exception v2

    .line 885
    .local v2, t:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing retryAfter - use default sleep "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 888
    .end local v2           #t:Ljava/lang/NumberFormatException;
    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_1
.end method

.method private parseServerError(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "body"

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 905
    .local v0, error:Ljava/lang/String;
    if-eqz p1, :cond_1

    sget-object v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    sget-object v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->ERROR_PREFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 909
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 918
    :cond_0
    :goto_0
    return-object v0

    .line 915
    :cond_1
    const-string v0, "SERVICE_NOT_AVAILABLE"

    goto :goto_0
.end method

.method private refreshAuthToken()V
    .locals 4

    .prologue
    .line 437
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    monitor-enter v2

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    iget-boolean v1, v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->mInProgress:Z

    if-eqz v1, :cond_0

    .line 439
    monitor-exit v2

    .line 469
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenCallback:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;

    const/4 v3, 0x1

    #calls: Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->setInProgress(Z)V
    invoke-static {v1, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;->access$500(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$AuthTokenFetchFailedCallback;Z)V

    .line 443
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    const-string v1, "C2DMRegistrar"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "refreshAuthToken"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 447
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, oldToken:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 449
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->setAuthToken(Ljava/lang/String;)V

    .line 456
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$3;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 443
    .end local v0           #oldToken:Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private registrationRemoved(Ljava/lang/String;)V
    .locals 7
    .parameter "appPackage"

    .prologue
    .line 928
    const-string v2, "unregistered"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 931
    return-void
.end method

.method private registrationSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "appPackage"
    .parameter "registrationId"

    .prologue
    .line 922
    const-string v2, "registration_id"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 925
    return-void
.end method

.method private requestFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "appPackage"
    .parameter "error"

    .prologue
    .line 934
    const-string v2, "error"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 936
    return-void
.end method

.method private sendRegistrationMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .parameter "app"
    .parameter "key"
    .parameter "value"
    .parameter "key2"
    .parameter "value2"

    .prologue
    .line 940
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 941
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 942
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getReceivePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 943
    .local v1, permission:Ljava/lang/String;
    const-string v2, "C2DMRegistrar"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send registration intent app= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " perm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 947
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    if-eqz p4, :cond_1

    .line 949
    invoke-virtual {v0, p4, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 951
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 952
    return-void
.end method


# virtual methods
.method public blockingGetFirstAccountUsername()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 413
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v3

    invoke-interface {v3}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 416
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v3, v0

    if-nez v3, :cond_0

    .line 431
    .end local v0           #accounts:[Landroid/accounts/Account;
    :goto_0
    return-object v2

    .line 419
    .restart local v0       #accounts:[Landroid/accounts/Account;
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v2, v3, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 420
    .end local v0           #accounts:[Landroid/accounts/Account;
    :catch_0
    move-exception v1

    .line 422
    .local v1, e:Ljava/io/IOException;
    const-string v3, "C2DMRegistrar"

    const-string v4, "unable to get first account username"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 424
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 426
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "C2DMRegistrar"

    const-string v4, "unable to get first account username"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 428
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v1

    .line 430
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "C2DMRegistrar"

    const-string v4, "unable to get first account username"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 335
    return-void
.end method

.method public fetchAuthTokenAndHandleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->addRequestToQueue(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V

    .line 699
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->fetchAuthToken()V

    .line 704
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->asyncHandleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V

    goto :goto_0
.end method

.method public getAndroidId()J
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAndroidId:J

    return-wide v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public handlePendingRequests()V
    .locals 3

    .prologue
    .line 535
    const-string v1, "C2DMRegistrar"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "handlePendingRequests"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 538
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 541
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->nextRequest()Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 542
    .local v0, request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    if-nez v0, :cond_2

    .line 551
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 553
    return-void

    .line 546
    :cond_2
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 551
    .end local v0           #request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 969
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAndroidId:J

    .line 971
    new-instance v1, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    const-string v2, "ac2dm"

    invoke-direct {v1, p1, v2}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    .line 972
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mRequestQueue:Ljava/util/List;

    .line 973
    new-instance v1, Lcom/google/android/common/http/GoogleHttpClient;

    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 974
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v2, "C2DMRegistrar"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 976
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 979
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 980
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "GOOGLE_C2DM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 981
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAccountManager:Landroid/accounts/AccountManager;

    .line 984
    new-instance v1, Lcom/android/common/NetworkConnectivityListener;

    invoke-direct {v1}, Lcom/android/common/NetworkConnectivityListener;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mNetworkConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    .line 985
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mNetworkConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/android/common/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 986
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mNetworkConnectivityListener:Lcom/android/common/NetworkConnectivityListener;

    invoke-virtual {v1, p1}, Lcom/android/common/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 987
    return-void
.end method

.method public networkRecovered()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 520
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    const-string v0, "C2DMRegistrar"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "networkRecovered - no auth token"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    const-string v0, "C2DMRegistrar"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "networkRecovered "

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 527
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$4;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$4;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 991
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 965
    invoke-virtual {p0, p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->init(Landroid/content/Context;)V

    .line 966
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->cleanup()V

    .line 961
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 995
    if-eqz p1, :cond_0

    .line 996
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 997
    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->register(Landroid/content/Intent;)V

    .line 1004
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 999
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->unregister(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Intent;)V
    .locals 17
    .parameter "intent"

    .prologue
    .line 609
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 612
    .local v11, origId:J
    :try_start_0
    const-string v2, "app"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    .line 613
    .local v13, parcelable:Landroid/os/Parcelable;
    if-eqz v13, :cond_0

    instance-of v2, v13, Landroid/app/PendingIntent;

    if-nez v2, :cond_1

    .line 617
    :cond_0
    const-string v2, "C2DMRegistrar"

    const-string v16, "Invalid parameter app"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    :goto_0
    return-void

    .line 620
    :cond_1
    :try_start_1
    move-object v0, v13

    check-cast v0, Landroid/app/PendingIntent;

    move-object v7, v0

    .line 621
    .local v7, appPI:Landroid/app/PendingIntent;
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, appPackage:Ljava/lang/String;
    const-string v2, "sender"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 623
    .local v5, developerId:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 624
    const-string v2, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v2, "C2DMRegistrar"

    const-string v16, "Invalid parameter sender"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 629
    :cond_2
    :try_start_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 630
    .local v6, extra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 631
    .local v8, extras:Landroid/os/Bundle;
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 632
    .local v10, key:Ljava/lang/String;
    const-string v2, "app"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "sender"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 636
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 637
    .local v15, value:Ljava/lang/String;
    invoke-interface {v6, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 653
    .end local v4           #appPackage:Ljava/lang/String;
    .end local v5           #developerId:Ljava/lang/String;
    .end local v6           #extra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #appPI:Landroid/app/PendingIntent;
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #key:Ljava/lang/String;
    .end local v13           #parcelable:Landroid/os/Parcelable;
    .end local v15           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 640
    .restart local v4       #appPackage:Ljava/lang/String;
    .restart local v5       #developerId:Ljava/lang/String;
    .restart local v6       #extra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #appPI:Landroid/app/PendingIntent;
    .restart local v8       #extras:Landroid/os/Bundle;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #parcelable:Landroid/os/Parcelable;
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getReceivePermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 642
    .local v14, permission:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 644
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 646
    const-string v2, "SERVICE_DISABLED"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_5
    new-instance v1, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 651
    .local v1, request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->fetchAuthTokenAndHandleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 653
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public register(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;)V
    .locals 23
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 710
    .local v5, authToken:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAndroidId()J

    move-result-wide v2

    .line 711
    .local v2, androidId:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 712
    .local v18, url:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    .line 713
    .local v4, appPackage:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mDeveloperId:Ljava/lang/String;

    .line 714
    .local v7, developerId:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$RegisterRequest;->mExtraParams:Ljava/util/Map;

    .line 716
    .local v9, extraParams:Ljava/util/Map;
    const-string v20, "C2DMRegistrar"

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 717
    const-string v20, "register:"

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 718
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  url="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 720
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  device="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 721
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  app="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 722
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "  sender="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 725
    :cond_0
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 726
    const-string v20, "C2DMRegistrar"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "register: invalid url "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v20, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :goto_0
    return-void

    .line 731
    :cond_1
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 733
    .local v13, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v20, "Authorization"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "GoogleLogin auth="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v12, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "app"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "sender"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    const-string v21, "device"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    if-eqz v9, :cond_2

    .line 742
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 743
    .local v10, itor:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 744
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 745
    .local v11, key:Ljava/lang/String;
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 746
    .local v19, value:Ljava/lang/String;
    new-instance v20, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 750
    .end local v10           #itor:Ljava/util/Iterator;
    .end local v11           #key:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :cond_2
    const/4 v14, 0x0

    .line 752
    .local v14, reqEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v14           #reqEntity:Lorg/apache/http/HttpEntity;
    invoke-direct {v14, v12}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .restart local v14       #reqEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v13, v14}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 761
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 763
    .local v16, statusCode:I
    const/16 v20, 0xc8

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 764
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "register: http error "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->isAuthenticationError(I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 767
    new-instance v20, Lorg/apache/http/auth/AuthenticationException;

    invoke-direct/range {v20 .. v20}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    throw v20

    .line 753
    .end local v14           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #statusCode:I
    :catch_0
    move-exception v8

    .line 754
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const-string v20, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 771
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v14       #reqEntity:Lorg/apache/http/HttpEntity;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #statusCode:I
    :cond_3
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-static/range {v20 .. v21}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 774
    .local v6, body:Ljava/lang/String;
    const-string v20, "token="

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 775
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 776
    const/16 v20, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 779
    :cond_4
    const-string v20, "="

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v17, v20, v21

    .line 780
    .local v17, token:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->registrationSucceeded(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 782
    .end local v17           #token:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v15, v4}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleError(Ljava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setAuthToken(Ljava/lang/String;)V
    .locals 0
    .parameter "authToken"

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mAuthToken:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public unregister(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 664
    .local v1, origId:J
    const-string v7, "app"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 665
    .local v3, parcelable:Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    instance-of v7, v3, Landroid/app/PendingIntent;

    if-nez v7, :cond_1

    .line 669
    :cond_0
    const-string v7, "C2DMRegistrar"

    const-string v8, "Invalid parameter app"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_0
    return-void

    :cond_1
    move-object v4, v3

    .line 672
    check-cast v4, Landroid/app/PendingIntent;

    .line 674
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, appPackage:Ljava/lang/String;
    const-string v7, "com.google.android.gsf"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 678
    const-string v7, "app_gsf"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, url:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 684
    const-string v7, "SERVICE_DISABLED"

    invoke-direct {p0, v0, v7}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    :cond_3
    new-instance v5, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;

    invoke-direct {v5, p0, v6, v0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;-><init>(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .local v5, request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->fetchAuthTokenAndHandleRequest(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0           #appPackage:Ljava/lang/String;
    .end local v5           #request:Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;
    .end local v6           #url:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method public unregister(Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$UnregisterRequest;)V
    .locals 16
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    .line 790
    .local v4, authToken:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->getAndroidId()J

    move-result-wide v1

    .line 791
    .local v1, androidId:J
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mUrl:Ljava/lang/String;

    .line 792
    .local v12, url:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar$Request;->mAppPackage:Ljava/lang/String;

    .line 794
    .local v3, appPackage:Ljava/lang/String;
    const-string v13, "C2DMRegistrar"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 795
    const-string v13, "unregister:"

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 796
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  url="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 799
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  app="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 802
    :cond_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 803
    const-string v13, "C2DMRegistrar"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unregister: invalid url "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-string v13, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :goto_0
    return-void

    .line 808
    :cond_1
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v8, v12}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 810
    .local v8, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v13, "Authorization"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "GoogleLogin auth="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v7, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "app"

    invoke-direct {v13, v14, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "device"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "delete"

    const-string v15, "true"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    const/4 v9, 0x0

    .line 820
    .local v9, reqEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v9, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v9           #reqEntity:Lorg/apache/http/HttpEntity;
    invoke-direct {v9, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    .restart local v9       #reqEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v13, v8}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 828
    .local v10, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    .line 830
    .local v11, statusCode:I
    const/16 v13, 0xc8

    if-eq v11, v13, :cond_2

    .line 831
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "unregister: http error "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 833
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->isAuthenticationError(I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 834
    new-instance v13, Lorg/apache/http/auth/AuthenticationException;

    invoke-direct {v13}, Lorg/apache/http/auth/AuthenticationException;-><init>()V

    throw v13

    .line 821
    .end local v9           #reqEntity:Lorg/apache/http/HttpEntity;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v11           #statusCode:I
    :catch_0
    move-exception v6

    .line 822
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    const-string v13, "INVALID_PARAMETERS"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->requestFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 838
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v9       #reqEntity:Lorg/apache/http/HttpEntity;
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v11       #statusCode:I
    :cond_2
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    const-string v14, "UTF-8"

    invoke-static {v13, v14}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 839
    .local v5, body:Ljava/lang/String;
    const-string v13, "C2DMRegistrar"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 840
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "body= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->log(Ljava/lang/String;)V

    .line 842
    :cond_3
    const-string v13, "deleted="

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 844
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->registrationRemoved(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 846
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v3}, Lcom/google/android/gsf/gtalkservice/PushMessagingRegistrar;->handleError(Ljava/lang/String;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
