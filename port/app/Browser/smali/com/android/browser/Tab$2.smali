.class Lcom/android/browser/Tab$2;
.super Landroid/webkit/WebChromeClient;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/Tab;


# direct methods
.method constructor <init>(Lcom/android/browser/Tab;)V
    .locals 0
    .parameter

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/browser/Tab$2;ZLandroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 966
    invoke-direct {p0, p1, p2}, Lcom/android/browser/Tab$2;->createWindow(ZLandroid/os/Message;)V

    return-void
.end method

.method private createWindow(ZLandroid/os/Message;)V
    .locals 6
    .parameter "dialog"
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 969
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 971
    .local v1, transport:Landroid/webkit/WebView$WebViewTransport;
    if-eqz p1, :cond_0

    .line 972
    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->createSubWindow()Z

    .line 973
    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v3, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v2, v3}, Lcom/android/browser/WebViewController;->attachSubWindow(Lcom/android/browser/Tab;)V

    .line 974
    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v2}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 980
    :goto_0
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 981
    return-void

    .line 976
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v2, v3, v4, v5, v5}, Lcom/android/browser/WebViewController;->openTab(Ljava/lang/String;Lcom/android/browser/Tab;ZZ)Lcom/android/browser/Tab;

    move-result-object v0

    .line 978
    .local v0, newTab:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1247
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 1260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1277
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p1}, Lcom/android/browser/WebViewController;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 1278
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1500(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mParent:Lcom/android/browser/Tab;
    invoke-static {v1}, Lcom/android/browser/Tab;->access$1500(Lcom/android/browser/Tab;)Lcom/android/browser/Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->closeTab(Lcom/android/browser/Tab;)V

    .line 1064
    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5
    .parameter "consoleMessage"

    .prologue
    const/4 v4, 0x1

    .line 1198
    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v2, v2, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v2, :cond_0

    .line 1200
    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2, v4}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 1201
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0, p1}, Lcom/android/browser/ErrorConsoleView;->addErrorMessage(Landroid/webkit/ConsoleMessage;)V

    .line 1202
    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v2, v2, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v2}, Lcom/android/browser/WebViewController;->shouldShowErrorConsole()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->getShowState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 1205
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 1210
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_0
    iget-object v2, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v2}, Lcom/android/browser/Tab;->isPrivateBrowsingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1234
    :goto_0
    return v4

    .line 1212
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Console: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1216
    .local v1, message:Ljava/lang/String;
    sget-object v2, Lcom/android/browser/Tab$8;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1218
    :pswitch_0
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1221
    :pswitch_1
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    :pswitch_2
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1227
    :pswitch_3
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1230
    :pswitch_4
    const-string v2, "browser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 9
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const v6, 0x7f0c0012

    const/4 v4, 0x1

    const v7, 0x1010355

    const/4 v3, 0x0

    .line 988
    iget-object v5, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v5, v5, Lcom/android/browser/Tab;->mInForeground:Z

    if-nez v5, :cond_0

    .line 1045
    :goto_0
    return v3

    .line 992
    :cond_0
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSubView:Landroid/webkit/WebView;
    invoke-static {v5}, Lcom/android/browser/Tab;->access$1300(Lcom/android/browser/Tab;)Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 993
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0109

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c010a

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v5, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v5}, Lcom/android/browser/WebViewController;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1001
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v5, v5, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0107

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0108

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1011
    :cond_2
    if-eqz p3, :cond_3

    .line 1012
    invoke-direct {p0, p2, p4}, Lcom/android/browser/Tab$2;->createWindow(ZLandroid/os/Message;)V

    move v3, v4

    .line 1013
    goto :goto_0

    .line 1017
    :cond_3
    new-instance v0, Lcom/android/browser/Tab$2$1;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/browser/Tab$2$1;-><init>(Lcom/android/browser/Tab$2;ZLandroid/os/Message;)V

    .line 1026
    .local v0, allowListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/browser/Tab$2$2;

    invoke-direct {v1, p0, p4}, Lcom/android/browser/Tab$2$2;-><init>(Lcom/android/browser/Tab$2;Landroid/os/Message;)V

    .line 1034
    .local v1, blockListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v6, v6, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0104

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0105

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0c0106

    invoke-virtual {v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1044
    .local v2, d:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 1045
    goto/16 :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1100(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/WebStorageSizeManager;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1145
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1600(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/GeolocationPermissionsPrompt;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1600(Lcom/android/browser/Tab;)Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/GeolocationPermissionsPrompt;->hide()V

    .line 1189
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getGeolocationPermissionsPrompt()Lcom/android/browser/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/GeolocationPermissionsPrompt;->show(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 1179
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0}, Lcom/android/browser/WebViewController;->hideCustomView()V

    .line 1124
    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #setter for: Lcom/android/browser/Tab;->mPageLoadProgress:I
    invoke-static {v0, p2}, Lcom/android/browser/Tab;->access$102(Lcom/android/browser/Tab;I)I

    .line 1069
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/browser/Tab;->mInPageLoad:Z

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->onProgressChanged(Lcom/android/browser/Tab;)V

    .line 1073
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    #getter for: Lcom/android/browser/Tab;->mSettings:Lcom/android/browser/BrowserSettings;
    invoke-static {v0}, Lcom/android/browser/Tab;->access$1100(Lcom/android/browser/Tab;)Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/WebStorageSizeManager;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1163
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p2, v0, Lcom/android/browser/Tab$PageState;->mFavicon:Landroid/graphics/Bitmap;

    .line 1084
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/browser/WebViewController;->onFavicon(Lcom/android/browser/Tab;Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 1085
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "title"

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mCurrentState:Lcom/android/browser/Tab$PageState;

    iput-object p2, v0, Lcom/android/browser/Tab$PageState;->mTitle:Ljava/lang/String;

    .line 1078
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p2}, Lcom/android/browser/WebViewController;->onReceivedTitle(Lcom/android/browser/Tab;Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 6
    .parameter "view"
    .parameter "url"
    .parameter "precomposed"

    .prologue
    const/4 v5, 0x0

    .line 1090
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1093
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    invoke-virtual {v1, v5}, Lcom/android/browser/DownloadTouchIcon;->cancel(Z)Z

    .line 1095
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 1098
    :cond_0
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    if-nez v1, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    new-instance v2, Lcom/android/browser/DownloadTouchIcon;

    iget-object v3, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v4, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/android/browser/DownloadTouchIcon;-><init>(Lcom/android/browser/Tab;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/webkit/WebView;)V

    iput-object v2, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    .line 1101
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mTouchIconLoader:Lcom/android/browser/DownloadTouchIcon;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/browser/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1103
    :cond_1
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-nez v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1}, Lcom/android/browser/WebViewController;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 1053
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter "view"
    .parameter "requestedOrientation"
    .parameter "callback"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/browser/WebViewController;->showCustomView(Lcom/android/browser/Tab;Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1119
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1108
    iget-object v1, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v1, v1, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v1}, Lcom/android/browser/WebViewController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1109
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/browser/Tab$2;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1112
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "acceptType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1265
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-boolean v0, v0, Lcom/android/browser/Tab;->mInForeground:Z

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v0, v0, Lcom/android/browser/Tab;->mWebViewController:Lcom/android/browser/WebViewController;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/WebViewController;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 1270
    :goto_0
    return-void

    .line 1268
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setupAutoFill(Landroid/os/Message;)V
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    .line 1283
    move-object v3, p1

    .line 1284
    .local v3, msg:Landroid/os/Message;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1285
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/browser/Tab$2;->this$0:Lcom/android/browser/Tab;

    iget-object v4, v4, Lcom/android/browser/Tab;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1287
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040032

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1289
    .local v2, layout:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0012

    new-instance v6, Lcom/android/browser/Tab$2$3;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/browser/Tab$2$3;-><init>(Lcom/android/browser/Tab$2;Landroid/view/View;Landroid/os/Message;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c0011

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1312
    return-void
.end method
