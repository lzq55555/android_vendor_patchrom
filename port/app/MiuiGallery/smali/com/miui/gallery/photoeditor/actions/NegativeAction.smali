.class public Lcom/miui/gallery/photoeditor/actions/NegativeAction;
.super Lcom/miui/gallery/photoeditor/actions/EffectAction;
.source "NegativeAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/photoeditor/actions/EffectAction;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public doBegin()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/miui/gallery/photoeditor/filters/NegativeFilter;

    invoke-direct {v0}, Lcom/miui/gallery/photoeditor/filters/NegativeFilter;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/photoeditor/actions/NegativeAction;->notifyFilterChanged(Lcom/miui/gallery/photoeditor/filters/Filter;Z)V

    .line 36
    invoke-virtual {p0}, Lcom/miui/gallery/photoeditor/actions/NegativeAction;->notifyDone()V

    .line 37
    return-void
.end method

.method public doEnd()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
