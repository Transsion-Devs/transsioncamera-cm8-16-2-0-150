.class public Lcom/transsion/camera/utils/threads/HandlerThreadPool$HandlerThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/threads/HandlerThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerThreadFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .registers 2

    .line 139
    new-instance p0, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;

    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool$RecycleHandlerThread;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method
