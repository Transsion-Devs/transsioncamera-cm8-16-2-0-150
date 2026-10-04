.class public final Lcom/transsion/camera/glide/CameraGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/glide/CameraGlideModule$NoOpConnectivityMonitorFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .registers 3

    .line 25
    invoke-static {}, Lcom/bumptech/glide/load/engine/executor/CameraGlideSourceExecutorFactory;->createSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object p0

    .line 26
    invoke-virtual {p2, p0}, Lcom/bumptech/glide/GlideBuilder;->setSourceExecutor(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;)Lcom/bumptech/glide/GlideBuilder;

    .line 27
    new-instance p0, Lcom/transsion/camera/glide/CameraGlideModule$NoOpConnectivityMonitorFactory;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/transsion/camera/glide/CameraGlideModule$NoOpConnectivityMonitorFactory;-><init>(Lcom/transsion/camera/glide/CameraGlideModule-IA;)V

    invoke-virtual {p2, p0}, Lcom/bumptech/glide/GlideBuilder;->setConnectivityMonitorFactory(Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;)Lcom/bumptech/glide/GlideBuilder;

    return-void
.end method
