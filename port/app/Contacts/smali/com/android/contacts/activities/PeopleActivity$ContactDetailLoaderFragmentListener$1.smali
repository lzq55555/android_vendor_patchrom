.class Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

.field final synthetic val$result:Lcom/android/contacts/ContactLoader$Result;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;->this$1:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    iput-object p2, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;->this$1:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;->this$1:Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    #getter for: Lcom/android/contacts/activities/PeopleActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;
    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$1600(Lcom/android/contacts/activities/PeopleActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/activities/PeopleActivity$ContactDetailLoaderFragmentListener$1;->val$result:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->setContactData(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method
