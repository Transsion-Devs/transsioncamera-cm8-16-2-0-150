.class public final synthetic Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;->quitSafely()Z

    return-void
.end method
