.class Lcom/miui/home/launcher/AllAppsList$RemoveInfo;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/AllAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveInfo"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final replacing:Z

.field final synthetic this$0:Lcom/miui/home/launcher/AllAppsList;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/AllAppsList;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "p"
    .parameter "r"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->this$0:Lcom/miui/home/launcher/AllAppsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    .line 41
    iput-boolean p3, p0, Lcom/miui/home/launcher/AllAppsList$RemoveInfo;->replacing:Z

    .line 42
    return-void
.end method
