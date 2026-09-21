.class public Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;
.super Lcom/transsion/hubsdk/internal/policy/ITranKeyguardDismissCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranKeyguardDismissListener"
.end annotation


# instance fields
.field private final mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;)V
    .registers 2

    .line 190
    invoke-direct {p0}, Lcom/transsion/hubsdk/internal/policy/ITranKeyguardDismissCallback$Stub;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;->mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;->mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_7

    .line 211
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissCancelled()V

    :cond_7
    return-void
.end method

.method public onDismissError()V
    .registers 1

    .line 196
    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;->mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_7

    .line 197
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissError()V

    :cond_7
    return-void
.end method

.method public onDismissSucceeded()V
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubWindowManagerExt$TranKeyguardDismissListener;->mCallback:Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;

    if-eqz p0, :cond_7

    .line 204
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/window/TranWindowManagerExt$TranKeyguardDismissCallback;->onDismissSucceeded()V

    :cond_7
    return-void
.end method
