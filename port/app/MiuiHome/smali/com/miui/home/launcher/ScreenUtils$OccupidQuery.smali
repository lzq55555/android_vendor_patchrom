.class interface abstract Lcom/miui/home/launcher/ScreenUtils$OccupidQuery;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OccupidQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "container"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "screen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/home/launcher/ScreenUtils$OccupidQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
