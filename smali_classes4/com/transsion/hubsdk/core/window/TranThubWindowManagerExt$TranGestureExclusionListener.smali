.class public Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;
.super Lcom/transsion/hubsdk/view/ITranSystemGestureExclusionListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranGestureExclusionListener"
.end annotation


# instance fields
.field private final mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;)V
    .registers 2

    .line 175
    invoke-direct {p0}, Lcom/transsion/hubsdk/view/ITranSystemGestureExclusionListener$Stub;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;->mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;

    return-void
.end method


# virtual methods
.method public onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .registers 4

    .line 181
    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranGestureExclusionListener;->mExclusionListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;

    if-eqz p0, :cond_7

    .line 182
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranSystemGestureExclusionListener;->onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V

    :cond_7
    return-void
.end method
