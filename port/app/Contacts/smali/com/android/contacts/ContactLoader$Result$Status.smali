.class final enum Lcom/android/contacts/ContactLoader$Result$Status;
.super Ljava/lang/Enum;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/contacts/ContactLoader$Result$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/ContactLoader$Result$Status;

.field public static final enum ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

.field public static final enum LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

.field public static final enum NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/android/contacts/ContactLoader$Result$Status;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactLoader$Result$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 106
    new-instance v0, Lcom/android/contacts/ContactLoader$Result$Status;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/ContactLoader$Result$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 108
    new-instance v0, Lcom/android/contacts/ContactLoader$Result$Status;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/ContactLoader$Result$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/contacts/ContactLoader$Result$Status;

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->LOADED:Lcom/android/contacts/ContactLoader$Result$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->ERROR:Lcom/android/contacts/ContactLoader$Result$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/contacts/ContactLoader$Result$Status;->NOT_FOUND:Lcom/android/contacts/ContactLoader$Result$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->$VALUES:[Lcom/android/contacts/ContactLoader$Result$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/ContactLoader$Result$Status;
    .locals 1
    .parameter

    .prologue
    .line 102
    const-class v0, Lcom/android/contacts/ContactLoader$Result$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactLoader$Result$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/contacts/ContactLoader$Result$Status;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/contacts/ContactLoader$Result$Status;->$VALUES:[Lcom/android/contacts/ContactLoader$Result$Status;

    invoke-virtual {v0}, [Lcom/android/contacts/ContactLoader$Result$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/ContactLoader$Result$Status;

    return-object v0
.end method
