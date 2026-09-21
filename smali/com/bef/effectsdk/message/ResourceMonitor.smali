.class public Lcom/bef/effectsdk/message/ResourceMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bef/effectsdk/message/MessageInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/effectsdk/message/ResourceMonitor$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResourceMonitor"


# instance fields
.field private mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/bef/effectsdk/message/ResourceMonitor;->mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;

    return-void
.end method

.method public intercept(Landroid/os/Message;)Z
    .registers 6

    .line 22
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ne v1, v0, :cond_2c

    .line 24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    return v3

    .line 30
    :cond_13
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_24

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1c

    goto :goto_2b

    .line 39
    :cond_1c
    iget-object p0, p0, Lcom/bef/effectsdk/message/ResourceMonitor;->mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;

    if-eqz p0, :cond_2b

    .line 40
    invoke-interface {p0, v0, v2}, Lcom/bef/effectsdk/message/ResourceMonitor$Listener;->onResourceLoadFinish(Ljava/lang/String;Z)V

    goto :goto_2b

    .line 34
    :cond_24
    iget-object p0, p0, Lcom/bef/effectsdk/message/ResourceMonitor;->mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;

    if-eqz p0, :cond_2b

    .line 35
    invoke-interface {p0, v0, v3}, Lcom/bef/effectsdk/message/ResourceMonitor$Listener;->onResourceLoadFinish(Ljava/lang/String;Z)V

    :cond_2b
    :goto_2b
    return v3

    :cond_2c
    return v2
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method setListener(Lcom/bef/effectsdk/message/ResourceMonitor$Listener;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/bef/effectsdk/message/ResourceMonitor;->mListener:Lcom/bef/effectsdk/message/ResourceMonitor$Listener;

    return-void
.end method
