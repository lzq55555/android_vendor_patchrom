.class public abstract Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;
.super Ljava/lang/Object;
.source "SQLiteAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    .local p0, this:Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;,"Lcom/android/quicksearchbox/util/SQLiteAsyncQuery<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")TA;"
        }
    .end annotation
.end method

.method public run(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 1
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/quicksearchbox/util/Consumer",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;,"Lcom/android/quicksearchbox/util/SQLiteAsyncQuery<TA;>;"
    .local p2, consumer:Lcom/android/quicksearchbox/util/Consumer;,"Lcom/android/quicksearchbox/util/Consumer<TA;>;"
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/util/SQLiteAsyncQuery;->performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;

    move-result-object v0

    .line 41
    .local v0, result:Ljava/lang/Object;,"TA;"
    invoke-interface {p2, v0}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method
