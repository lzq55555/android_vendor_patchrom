.class public interface abstract Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;
.super Ljava/lang/Object;
.source "PlayerStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/provider/PlayerStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MiuiNowPlayingAudio"
.end annotation


# static fields
.field public static final EXTERNAL_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "nowplaying_audio_view"

    invoke-static {v0}, Lcom/miui/player/provider/PlayerStore;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    return-void
.end method
