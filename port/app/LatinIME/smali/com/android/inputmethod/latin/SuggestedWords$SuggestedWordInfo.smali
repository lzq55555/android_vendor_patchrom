.class public Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;
.super Ljava/lang/Object;
.source "SuggestedWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/SuggestedWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuggestedWordInfo"
.end annotation


# instance fields
.field private final mDebugString:Ljava/lang/CharSequence;

.field private final mPreviousSuggestedWord:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/CharSequence;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mPreviousSuggestedWord:Z

    .line 211
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter "debugString"
    .parameter "previousSuggestedWord"

    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/CharSequence;

    .line 215
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mPreviousSuggestedWord:Z

    .line 216
    return-void
.end method


# virtual methods
.method public getDebugString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 220
    const-string v0, ""

    .line 222
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mDebugString:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isObsoleteSuggestedWord()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/SuggestedWords$SuggestedWordInfo;->mPreviousSuggestedWord:Z

    return v0
.end method
