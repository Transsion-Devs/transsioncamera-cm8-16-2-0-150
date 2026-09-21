.class public final Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResponseWrapper"
.end annotation


# instance fields
.field public final handler:Landroid/os/Handler;

.field public final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Handler;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseWrapper;->object:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/livephoto/util/HandlerHelper$ResponseWrapper;->handler:Landroid/os/Handler;

    return-void
.end method
