.class public Lcom/android/packageinstaller/PackageInstallerActivity;
.super Landroid/app/Activity;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private localLOGV:Z

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCancel:Landroid/widget/Button;

.field mInstallConfirm:Landroid/view/View;

.field private mOk:Landroid/widget/Button;

.field private mPackageURI:Landroid/net/Uri;

.field mPkgInfo:Landroid/content/pm/PackageParser$Package;

.field mPm:Landroid/content/pm/PackageManager;

.field mSourceInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    return-void
.end method

.method private initiateInstall()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 243
    .local v2, pkgName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, oldName:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    aget-object v3, v1, v5

    if-eqz v3, :cond_0

    .line 245
    aget-object v2, v1, v5

    .line 246
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 250
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.ALLOW_REPLACE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    .line 262
    :goto_1
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 258
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-boolean v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v3, :cond_3

    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing existing package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_1
.end method

.method private isInstallingUnknownAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->removeDialog(I)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialog(I)V

    .line 105
    return-void
.end method

.method private startInstallConfirm()V
    .locals 6

    .prologue
    .line 80
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 81
    .local v2, permsSection:Landroid/widget/LinearLayout;
    const v4, 0x7f070008

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 83
    .local v3, securityList:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 84
    .local v1, permVisible:Z
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_0

    .line 85
    new-instance v0, Landroid/widget/AppSecurityPermissions;

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, p0, v4}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Landroid/content/pm/PackageParser$Package;)V

    .line 86
    .local v0, asp:Landroid/widget/AppSecurityPermissions;
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0}, Landroid/widget/AppSecurityPermissions;->getPermissionsView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    .end local v0           #asp:Landroid/widget/AppSecurityPermissions;
    :cond_0
    if-nez v1, :cond_1

    .line 92
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    const v4, 0x7f07000b

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    .line 96
    const v4, 0x7f07000a

    invoke-virtual {p0, v4}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    .line 97
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 339
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 345
    const-string v1, "com.android.packageinstaller.applicationInfo"

    iget-object v2, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 347
    iget-object v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 348
    const-class v1, Lcom/android/packageinstaller/InstallAppProgress;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    .line 351
    const-string v2, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    const-string v1, "android.intent.extra.RETURN_RESULT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 357
    :cond_1
    iget-boolean v1, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloaded app uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    .line 365
    :cond_3
    :goto_0
    return-void

    .line 360
    :cond_4
    iget-object v0, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 362
    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(I)V

    .line 363
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    .line 273
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 276
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    .line 277
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 278
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/packageinstaller/PackageUtil;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    .line 281
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-nez v3, :cond_0

    .line 282
    const-string v3, "PackageInstaller"

    const-string v4, "Parse error when parsing manifest. Discontinuing installation"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 284
    const/4 v3, -0x2

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    .line 334
    :goto_0
    return-void

    .line 289
    :cond_0
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->setContentView(I)V

    .line 290
    const v3, 0x7f07000d

    invoke-virtual {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    .line 291
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mInstallConfirm:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 292
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-static {p0, v3, v4}, Lcom/android/packageinstaller/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    move-result-object v0

    .line 294
    .local v0, as:Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    const/high16 v3, 0x7f07

    invoke-static {p0, v0, v3}, Lcom/android/packageinstaller/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;

    .line 297
    invoke-virtual {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, callerPackage:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v3, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    :try_start_0
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    .line 302
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v3

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->isInstallingUnknownAppsAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 330
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_0

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/android/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    goto :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "id"
    .parameter "bundle"

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const v11, 0x7f050015

    const v10, 0x7f050004

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 223
    const/4 v7, 0x0

    :goto_0
    return-object v7

    .line 111
    :pswitch_0
    const v6, 0x7f05001b

    .line 113
    .local v6, msgId:I
    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 114
    const v6, 0x7f05001c

    .line 116
    :cond_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f05001a

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/packageinstaller/PackageInstallerActivity$2;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$2;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$1;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 132
    .end local v6           #msgId:I
    :pswitch_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f050013

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f050014

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/packageinstaller/PackageInstallerActivity$4;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$4;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f05001d

    new-instance v9, Lcom/android/packageinstaller/PackageInstallerActivity$3;

    invoke-direct {v9, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$3;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 150
    :pswitch_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f05002e

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f05002f

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/packageinstaller/PackageInstallerActivity$5;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$5;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 162
    :pswitch_3
    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
    .local v0, appTitle:Ljava/lang/CharSequence;
    const v7, 0x7f05001f

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {p0, v7, v8}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, dlgText:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f05001e

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f050019

    new-instance v9, Lcom/android/packageinstaller/PackageInstallerActivity$7;

    invoke-direct {v9, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$7;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/packageinstaller/PackageInstallerActivity$6;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$6;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 187
    .end local v0           #appTitle:Ljava/lang/CharSequence;
    .end local v3           #dlgText:Ljava/lang/String;
    :pswitch_4
    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 188
    .local v1, appTitle1:Ljava/lang/CharSequence;
    const v7, 0x7f050011

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {p0, v7, v8}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, dlgText1:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f050009

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/packageinstaller/PackageInstallerActivity$8;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$8;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 201
    .end local v1           #appTitle1:Ljava/lang/CharSequence;
    .end local v4           #dlgText1:Ljava/lang/String;
    :pswitch_5
    iget-object v7, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 202
    .local v2, appTitle2:Ljava/lang/CharSequence;
    const v7, 0x7f050018

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {p0, v7, v8}, Lcom/android/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, dlgText2:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f050017

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/packageinstaller/PackageInstallerActivity$10;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$10;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/packageinstaller/PackageInstallerActivity$9;

    invoke-direct {v8, p0}, Lcom/android/packageinstaller/PackageInstallerActivity$9;-><init>(Lcom/android/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method setPmResult(I)V
    .locals 3
    .parameter "pmResult"

    .prologue
    const/4 v1, 0x1

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v0, result:Landroid/content/Intent;
    const-string v2, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/packageinstaller/PackageInstallerActivity;->setResult(ILandroid/content/Intent;)V

    .line 269
    return-void
.end method
