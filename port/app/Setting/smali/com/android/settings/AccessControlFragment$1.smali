.class Lcom/android/settings/AccessControlFragment$1;
.super Ljava/lang/Object;
.source "AccessControlFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessControlFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/AccessControlFragment$1;->this$0:Lcom/android/settings/AccessControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/AccessControlFragment$1;->this$0:Lcom/android/settings/AccessControlFragment;

    #getter for: Lcom/android/settings/AccessControlFragment;->mChooseLockSettingsHelper:Lmiui/security/ChooseLockSettingsHelper;
    invoke-static {v0}, Lcom/android/settings/AccessControlFragment;->access$000(Lcom/android/settings/AccessControlFragment;)Lmiui/security/ChooseLockSettingsHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/security/ChooseLockSettingsHelper;->setPrivacyModeEnabled(Z)V

    .line 53
    return-void
.end method
