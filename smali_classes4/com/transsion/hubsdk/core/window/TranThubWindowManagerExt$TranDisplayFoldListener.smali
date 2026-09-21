.class public Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;
.super Lcom/transsion/hubsdk/view/ITranDisplayFoldListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranDisplayFoldListener"
.end annotation


# instance fields
.field private final mDisplayFoldListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;)V
    .registers 2

    .line 219
    invoke-direct {p0}, Lcom/transsion/hubsdk/view/ITranDisplayFoldListener$Stub;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;->mDisplayFoldListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .registers 3

    .line 225
    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranDisplayFoldListener;->mDisplayFoldListener:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;

    if-eqz p0, :cond_7

    .line 226
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranDisplayFoldListener;->onDisplayFoldChanged(IZ)V

    :cond_7
    return-void
.end method
