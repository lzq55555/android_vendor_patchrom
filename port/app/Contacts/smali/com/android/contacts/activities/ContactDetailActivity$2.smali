.class Lcom/android/contacts/activities/ContactDetailActivity$2;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactNotFound()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    .line 226
    return-void
.end method

.method public onDeleteRequested(Landroid/net/Uri;)V
    .locals 2
    .parameter "contactUri"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    .line 272
    return-void
.end method

.method public onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    #getter for: Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactDetailActivity;->access$500(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/activities/ContactDetailActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/activities/ContactDetailActivity$2$1;-><init>(Lcom/android/contacts/activities/ContactDetailActivity$2;Lcom/android/contacts/ContactLoader$Result;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEditRequested(Landroid/net/Uri;)V
    .locals 4
    .parameter "contactLookupUri"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity$2;->this$0:Lcom/android/contacts/activities/ContactDetailActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1, v2}, Lcom/android/contacts/ContactsUtils;->processPackageScope(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method
