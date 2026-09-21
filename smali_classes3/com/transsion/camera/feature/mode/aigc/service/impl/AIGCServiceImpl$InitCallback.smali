.class abstract Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "InitCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# static fields
.field private static final TIME_OUT:J = 0x2ee0L


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)V
    .registers 5

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Landroid/os/Handler;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;->-$$Nest$fgetmLooper(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2ee0

    .line 342
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;-><init>(Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 334
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;->invoke(Landroid/os/Bundle;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Landroid/os/Bundle;)Lkotlin/Unit;
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;->onResult(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract onResult(Landroid/os/Bundle;)V
.end method

.method public final run()V
    .registers 2

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/aigc/service/impl/AIGCServiceImpl$InitCallback;->invoke(Landroid/os/Bundle;)Lkotlin/Unit;

    return-void
.end method
